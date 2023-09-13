import os
import pandas as pd
import json


def sql_generator(file_info_dict):
    table_name = file_info_dict['table_name']
    cols_with_types = ",\n\t".join([f"{col} {type}" for col, type in file_info_dict['cols_types'].items()])
    data_path = file_info_dict['file_path']
    sql_text = f"""
DROP TABLE IF EXISTS example.{table_name};
CREATE TABLE example.{table_name}(
    {cols_with_types}
);
\COPY example.{table_name} FROM {data_path} DELIMITER E'\\t' CSV HEADER;
    """
    return sql_text

def main():
    file_path = os.path.dirname(os.path.abspath(__file__))
    general_path = os.path.join(file_path, '..',)
    data_path = os.path.join(general_path, 'data', 'raw')
    sql_path = os.path.join(general_path, 'sql')

    # Read json datatypes:
    with open(os.path.join(general_path, 'data_types.json'), 'r') as file:
        json_datatypes = file.read()
    json_datatypes = json.loads(json_datatypes)

    # Initial request to get all links
    all_files = os.listdir(data_path)
    all_files_info = {}
    all_text = []
    for file in all_files:
        filepath = os.path.join(data_path, file)
        if not filepath.endswith('txt'):
            continue
        try:
            for df in pd.read_csv(filepath, sep='\t', chunksize=10):
                cols = [col.lower().strip() for col in list(df.columns)]
                data_types = df.dtypes.apply(lambda x: x.name).to_list()
                vals = {col:json_datatypes[datatype] for col, datatype in zip(cols, data_types)}
                shape = df.shape[1]
                break
            if shape > 1:
                all_files_info[file] = {
                    'table_shape': shape,
                    'table_name': file.split('.')[0].lower(),
                    'columns': cols,
                    'cols_types': vals,
                    'file_path': filepath,
               }
                text = (sql_generator(all_files_info[file]))
                all_text.append(text)

        except:
            continue
    final_text = '\n\n'.join(all_text)
    with open(os.path.join(sql_path, 'create_tables.sql'), 'w') as file:
        file.write(final_text)

if __name__ == '__main__':
    main()
