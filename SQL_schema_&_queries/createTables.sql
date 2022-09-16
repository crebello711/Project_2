-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE cases_df;
DROP TABLE vaccines_merge_df;
DROP TABLE response_df;

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cases_df" (
    "res_state" VARCHAR(5)   NOT NULL PRIMARY KEY,
    "case_count" INT   NOT NULL,
    "jurisdiction" VARCHAR(255)   NOT NULL Unique
);

CREATE TABLE "vaccines_merge_df" (
    "jurisdiction" VARCHAR(255)   NOT NULL ,
    "1st_dose_Moderna" INT   NOT NULL,
    "2nd_dose_Moderna" INT   NOT NULL,
    "1st_dose_Pfizer" INT   NOT NULL,
    "2nd_dose_Pfizer" INT   NOT NULL,
    "Week_of_Allocations" DATE   NOT NULL
);

CREATE TABLE "response_df" (
    "res_state" VARCHAR(50)   NOT NULL ,
    "age_group" VARCHAR(50)   NOT NULL,
    "sex" VARCHAR(50)   NOT NULL,
    "race" VARCHAR(50)   NOT NULL,
    "ethnicity" VARCHAR(50)   NOT NULL,
    "death_yn" VARCHAR(50)   NOT NULL
);

SELECT *
FROM information_schema.columns
WHERE table_name = 'cases_df';

SELECT *
FROM pg_constraint;

ALTER TABLE response_df DROP cases_df_jurisdiction_key;
