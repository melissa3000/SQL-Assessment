-- Include your solutions to the More Practice problems in this file.



-- Insert a Brand
cars=# INSERT INTO brands (brand_id, name, founded, headquarters)
cars-# VALUES ('sub', 'Subaru', '1953', 'Tokyo, Japan');
INSERT 0 1


-- Insert Models
cars=# INSERT INTO models (year, brand_id, name)
cars-# VALUES ('2015', 'che', 'Chevrolet Malibu');
INSERT 0 1

cars=# INSERT INTO models (year, brand_id, name)
cars-# VALUES ('2015', 'sub', 'Subaru Outback');
INSERT 0 1


-- Create an Awards Table


CREATE TABLE awards (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    year INTEGER,
    winner_id INTEGER
        REFERENCES models (model_id)
    );



-- Insert Awards

-- Chevrolet 47
-- Subar 48



cars=# INSERT INTO awards (name, year, winner_id)
cars-# VALUES ('IIHS Safety Award', '2015', '47');
INSERT 0 1
cars=# INSERT INTO awards (name, year, winner_id)
cars-# VALUES ('IIHS Safety Award', '2015', '48');
INSERT 0 1
cars=# INSERT INTO awards (name, year)
cars-# VALUES ('Best in Class', '2015');
INSERT 0 1



cars=# SELECT * FROM awards;
 id |       name        | year | winner_id 
----+-------------------+------+-----------
  1 | IIHS Safety Award | 2015 |        47
  2 | IIHS Safety Award | 2015 |        48
  3 | Best in Class     | 2015 |          
(3 rows)

