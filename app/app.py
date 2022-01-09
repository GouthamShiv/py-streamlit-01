import yfinance as yf
import streamlit as st
import pandas as pd

st.write("""
# Simple Stock Price App

#### Below are the stock ***closing price*** and ***volume*** of Apple!

""")

tickerSymbol = 'AAPL'
tickerData = yf.Ticker(tickerSymbol)
tickerDf = tickerData.history(period='1d', start='2010-1-31', end='2021-12-31')

st.write("""
### `Closing Price`
""")
st.line_chart(tickerDf.Close)

st.write("""
### `Volume Price`
""")
st.line_chart(tickerDf.Volume)