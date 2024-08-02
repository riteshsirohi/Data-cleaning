-- Handle Null Values
DELETE FROM world_layoffs.layoffs_staging
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;
