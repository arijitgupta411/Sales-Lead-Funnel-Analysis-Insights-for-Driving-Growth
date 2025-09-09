import streamlit as st
import pandas as pd
import os

DATA_DIR = os.path.join(os.path.dirname(__file__), '..', 'data')
leads = pd.read_csv(os.path.join(DATA_DIR, 'leads.csv'))
sales = pd.read_csv(os.path.join(DATA_DIR, 'sales.csv'))

st.title('Sales & Lead Analysis - Demo')
st.write('Sample metrics from synthetic dataset')

st.metric('Total Leads', int(len(leads)))
st.metric('Total Sales Records', int(len(sales)))
st.write('Top lead sources:')
st.write(leads['lead_source'].value_counts().head())