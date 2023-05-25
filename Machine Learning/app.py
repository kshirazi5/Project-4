import streamlit as st
import pickle
from datetime import timedelta
import yfinance as yf
import matplotlib.pyplot as plt

with open('scaler.pkl', 'rb') as f: 
    scaler=pickle.load(f)
    
with open('lr.pkl', 'rb') as f: 
    lr=pickle.load(f)
    
#Interval required 1 minute
data=yf.download(tickers=['SPY', 'FTXN', 'GLD', '^SPGSSOTR'], period='1d', interval='5m')

data=data['Close']
data=data[['FTXN', 'GLD', 'SPY', '^SPGSSOTR']]
data=data.sort_index(ascending=False)

fig, ax=plt.subplots(2, 2, sharex=True)
data['SPY'].plot(ax=ax[0][0], title='SPY')
data['FTXN'].plot(ax=ax[0][1], title='FTXN')
data['GLD'].plot(ax=ax[1][0], title='GLD')
data['^SPGSSOTR'].plot(ax=ax[1][1], title='^SPGSSOTR')
plt.tight_layout()
st.pyplot(fig)

# random_sample=df.sample(1)
# next_hour=random_sample.index+timedelta(hours=1)
# actual=df.loc[next_hour, 'SPY'].values

data=data.dropna()

input_scaled=scaler.transform(data)

prediction=lr.predict(input_scaled)

# print(f'Predict: {prediction} vs Actual: {actual}.')

data['Prediction']=prediction
data['Accuracy (%)']=(((data['Prediction']-data['SPY'].shift(1))/data['SPY'].shift(1)).abs()*100).round(1)

st.write(data)