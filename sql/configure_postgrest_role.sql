create role web_anon nologin;
grant usage on schema example to web_anon;
grant select on example.women_in_government to web_anon;
grant select on example.ratio_production_supervisory to web_anon;


