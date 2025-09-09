# Sales & Lead Analysis (Synthetic)
This repository contains a synthetic dataset and analysis templates for **Sales & Lead Funnel Analysis**.

## Contents
- `data/` - CSV files: `leads.csv`, `sales.csv`, `products.csv`
- `notebooks/` - Jupyter notebooks with cleaning, EDA, and visualizations (as templates)
- `sql/` - Example SQL queries for funnel and revenue analysis
- `app/` - Simple Streamlit app starter
- `requirements.txt` - Python dependencies

## Objective
Analyze lead sources, conversion rates, sales rep performance, and revenue by product category. This is synthetic data created for demonstration and learning purposes.

## Quickstart
1. Clone this repo or download the zip.
2. Create a virtual environment and install dependencies:
```bash
python3 -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate
pip install -r requirements.txt
```
3. Launch Jupyter Lab/Notebook to run the notebooks in `notebooks/`:
```bash
jupyter lab
```
4. Or run the Streamlit demo app:
```bash
streamlit run app/app.py
```

## Notes
- Data is synthetic but structured to mimic a CRM/sales pipeline.
- Feel free to expand datasets, add a prediction model, or create an interactive dashboard.
