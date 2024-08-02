# World Layoffs Project

This project involves cleaning a dataset of world layoffs using SQL. The dataset is sourced from [Kaggle](https://www.kaggle.com/datasets/swaptr/layoffs-2022).

## Project Structure

- `sql/`: Contains SQL scripts for various steps in the data cleaning process.
  - `create_staging_table.sql`: Creates a staging table and inserts raw data.
  - `remove_duplicates.sql`: Removes duplicate entries from the data.
  - `standardize_data.sql`: Standardizes the data, fixing errors and inconsistencies.
  - `handle_nulls.sql`: Handles null values appropriately.
  - `clean_data.sql`: Final cleanup of the data.
- `data/`: Contains the raw data file.
  - `layoffs_data.csv`: The raw data file from Kaggle.
- `docs/`: Contains documentation for the project.
  - `project_description.md`: Detailed description of the project, objectives, and methods used.

## Instructions

1. Clone this repository.
2. Execute the SQL scripts in the following order:
   1. `create_staging_table.sql`
   2. `remove_duplicates.sql`
   3. `standardize_data.sql`
   4. `handle_nulls.sql`
   5. `clean_data.sql`
3. The cleaned data will be available in the `world_layoffs.layoffs_staging` table.

## Dataset

The dataset used in this project is from Kaggle and contains information about layoffs in various companies worldwide in 2022.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
