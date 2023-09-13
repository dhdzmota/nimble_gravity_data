create role web_anon nologin;
grant usage on schema ces_schema to web_anon;
grant select on ces_schema.women_in_government to web_anon;
grant select on ces_schema.ratio_production_supervisory to web_anon;


