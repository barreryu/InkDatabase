DROP TABLE IF EXISTS Users CASCADE;
CREATE TABLE Users (
  "user_id" SERIAL PRIMARY KEY,
  "username" VARCHAR(25) NOT NULL,
  "password" VARCHAR(50) NOT NULL,
  "role" VARCHAR(10) NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL
);

DROP TABLE IF EXISTS ProductionYields CASCADE;
CREATE TABLE ProductionYields (
  "production_yield_id" SERIAL PRIMARY KEY,
  "user_id" INTEGER NOT NULL REFERENCES Users(user_id),
  "ink_id" INTEGER NOT NULL REFERENCES Inks(ink_id),
  "ink_lot" VARCHAR(15) NOT NULL,
  "lab_id" INTEGER NOT NULL REFERENCES Labs(lab_id),
  "vehicle_mass_built" FLOAT,
  "vehicle_mass_used" FLOAT,
  "inherent_vehicle_loss" FLOAT,
  "ink_produced" FLOAT,
  "ink_packaged" FLOAT,
  "inherent_product_loss" FLOAT,
  "build_time" FLOAT,
  "manufactured_date" DATE
);

DROP TABLE IF EXISTS Inks CASCADE;
CREATE TABLE Inks (
  "ink_id" SERIAL PRIMARY KEY,  
  "ink_name" VARCHAR(30) NOT NULL,
  "production_type" VARCHAR(25) NOT NULL
);

DROP TABLE IF EXISTS Labs CASCADE;
CREATE TABLE Labs (
  "lab_id" SERIAL PRIMARY KEY,
  "lab_name" VARCHAR(25) NOT NULL,
  "asset_one" VARCHAR(25),
  "asset_two" VARCHAR(25),
  "asset_three" VARCHAR(25)
);