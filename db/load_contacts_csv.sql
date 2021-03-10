\copy contacts(first_name,last_name,note,nickname,address,city,state,zip,created_at,updated_at) FROM '~/data.csv' DELIMITER ',' CSV HEADER;
