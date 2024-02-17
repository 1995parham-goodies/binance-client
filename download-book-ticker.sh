#!/usr/bin/env bash

touch links.txt
echo "" >links.txt

declare -a dates=(
	"2024-02-16"
	"2024-02-15"
)

for date in "${dates[@]}"; do
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
      \"symbol\":\"BTCUSDT\"
    },
    {
      \"endDay\":\"$date\",
      \"granularityList\":[],
      \"interval\":\"daily\",
      \"startDay\":\"$date\",
      \"symbol\":\"ETHUSDT\"
    }
    ]}" -H 'Content-Type: application/json' | jq -r '.data.downloadItemList | .[] | .url' >>links.txt
done

aria2c -i links.txt
