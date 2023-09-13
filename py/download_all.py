import requests
import os

from lxml import html

HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'
}
URL = 'https://download.bls.gov/pub/time.series/ce/'
BASE_URL = 'http://download.bls.gov'

def download_file(url, path, headers, chunk_size):
    """This function gets the URL and downloads the file in the desired path (using streaming)

    Parameters:
        url str: A string representation of the url
        path str: A string of the desired path where the file must be saved.
        headers dict: Dictionary containing information on the headers for the request.
        chunk_size: The chunk size for the iteration on the content that is found in the URL.

    Returns:
        local_filename str: String of the name of the file which is obtained from the URL.
    """
    local_filename = url.split('/')[-1].replace('.', '_') + '.txt'
    path_to_save = os.path.join(path, local_filename)
    with requests.get(url, stream=True, headers=headers) as r:
        r.raise_for_status()
        with open(path_to_save, 'wb') as file:
            for chunk in r.iter_content(chunk_size=chunk_size):
                file.write(chunk)
    return local_filename

def get_links_list_from_url(url, headers, complementary_link_info):
    """ This function gets all the links that are in the html data of an URL.

    Parameters:
        url str: A string representation of the url
        headers dict: Dictionary containing information on the headers for the request.
        complementary_link_info str: Additional information that goes before a link.

    Returns:
        all_links list: List of all the links that are found in the URL.

    """
    page = requests.get(url, headers=headers)
    webpage = html.fromstring(page.content)
    all_links = [f'{complementary_link_info}{link}' for link in webpage.xpath('//a/@href')]
    return all_links

def main():
    """
    Main function to get and download all the files that are found in the desired link.
    """
    file_path = os.path.dirname(os.path.abspath(__file__))
    general_path = os.path.join(file_path, '..',)
    data_path = os.path.join(general_path, 'data', 'raw')

    # Initial request to get all links
    all_links = get_links_list_from_url(
        url=URL,
        headers=HEADERS,
        complementary_link_info=BASE_URL
    )
    # For each link download the information as txt file
    for url_link in all_links:
        file_downloaded = download_file(url=url_link, path=data_path, headers=HEADERS, chunk_size=1024)
        print(file_downloaded)


if __name__ == '__main__':
    main()
