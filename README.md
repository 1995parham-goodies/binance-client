# [Binance](https://www.binance.com/en) Data Analyzer 💰

## Introduction

Asan Pardakht wants to have Telegram bot and follows the market leads for investment in the crypocurrencies.
Here we are use the Binance data to find the leads that we can use 🤔

## Data Gathering

Binance Client in Python to grab their historical data using their future APIs. Future APIs returns
URLs which will have your data in future (consider this as Asynchronous implementation over HTTP).

Future APIs **required** API keys, so we decided to use their web API to grab data for the last week (instead of the historical data).
Doing this only requires writing bash script 💃.

## How to run? 🚀

We are going to use Jupyter-lab to do experiments with the data,
and for doing that we need to have
[`micromamba`](https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html) environment.

```bash
micromamba env create -f environment.yml
micromamba activate binance-client
```

## Noetebooks

The first meetings with our direct manager are scheduled in Slack and their agenda are based on the demo notebook.

### Why not yellowbrick?

Yellowbrick is a collection of visual analysis and diagnostic tools to facilitate machine learning model selection,
but it is not updated for almost 2 years, so it is better to remove it.
