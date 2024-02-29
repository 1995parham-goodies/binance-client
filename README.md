# [Binance](https://www.binance.com/en) Client 💰

## Introduction

Binance Client in Python to grab their historical data using their future APIs. Future APIs returns
URLs which will have your data in future (consider this as Asynchronous implementation over HTTP).

Future APIs required API keys, so we decided to use their web API to grab data for the last week.
Doing this only require writing bash script.

## How to run?

We are going to use Jupyter-lab to do experiments with the data,
and for doing that we need to have
[`micromamba`](https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html) environment.

```bash
micromamba env create -f environment.yml
micromamba activate binance-client
```
