-- Create Staging Table
CREATE TABLE world_layoffs.layoffs_staging 
LIKE world_layoffs.layoffs;

INSERT INTO world_layoffs.layoffs_staging 
SELECT * FROM world_layoffs.layoffs;
