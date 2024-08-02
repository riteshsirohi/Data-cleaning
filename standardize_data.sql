-- Standardize Data
UPDATE world_layoffs.layoffs_staging
SET industry = NULL
WHERE industry = '';

UPDATE world_layoffs.layoffs_staging t1
JOIN world_layoffs.layoffs_staging t2
ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL
AND t2.industry IS NOT NULL;

UPDATE world_layoffs.layoffs_staging
SET industry = 'Crypto'
WHERE industry IN ('Crypto Currency', 'CryptoCurrency');

UPDATE world_layoffs.layoffs_staging
SET country = TRIM(TRAILING '.' FROM country);

UPDATE world_layoffs.layoffs_staging
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

ALTER TABLE world_layoffs.layoffs_staging
MODIFY COLUMN `date` DATE;
