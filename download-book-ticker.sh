#!/usr/bin/env bash

touch links.txt
echo "" >links.txt

declare -a dates=(
	"2024-03-15"
)

declare -a coins=(
	"BTC"
	"ETH"
	"BNB"
	"SOL"
	"XRP"
	"DOGE"
	"ADA"
	"TON"
	"AVA"
	"DOT"
)

for date in "${dates[@]}"; do
	for coin in "${coins[@]}"; do
		curl -q -X POST https://www.binance.com/bapi/bigdata/v1/public/bigdata/finance/exchange/listDownloadData2 \
			-d "{
    \"bizType\":\"FUTURES_UM\",
    \"productName\":\"bookTicker\",
    \"symbolRequestItems\":[
    {
      \"endDay\":\"$date\",
      \"granularityList\":[],
      \"interval\":\"daily\",
      \"startDay\":\"$date\",
      \"symbol\":\"${coin}USDT\"
    }
    ]}" -H 'Content-Type: application/json' | jq -r '.data.downloadItemList | .[] | .url' >>links.txt
	done
done

aria2c -i links.txt
