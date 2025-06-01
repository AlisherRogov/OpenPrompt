#!/bin/bash

DIR="./TextClassification"
mkdir -p "$DIR" && cd "$DIR" || exit

# MNLI
rm -rf mnli
curl -L -O https://cloud.tsinghua.edu.cn/f/33182c22cb594e88b49b/?dl=1
tar -zxvf mnli.tar.gz
rm -rf mnli.tar.gz

# AGNews
rm -rf agnews
curl -L -O https://cloud.tsinghua.edu.cn/f/0fb6af2a1e6647b79098/?dl=1
tar -zxvf agnews.tar.gz
rm -rf agnews.tar.gz

# DBPedia
rm -rf dbpedia
curl -L -O https://cloud.tsinghua.edu.cn/f/362d3cdaa63b4692bafb/?dl=1
tar -zxvf dbpedia.tar.gz
rm -rf dbpedia.tar.gz

# IMDB
rm -rf imdb
curl -L -O https://cloud.tsinghua.edu.cn/f/37bd6cb978d342db87ed/?dl=1
tar -zxvf imdb.tar.gz
rm -rf imdb.tar.gz

# SST-2
rm -rf SST-2
curl -L -O https://cloud.tsinghua.edu.cn/f/bccfdb243eca404f8bf3/?dl=1
tar -zxvf SST-2.tar.gz
rm -rf SST-2.tar.gz

# Amazon
rm -rf amazon
curl -L -O https://cloud.tsinghua.edu.cn/f/e00a4c44aaf844cdb6c9/?dl=1
tar -zxvf amazon.tar.gz
mv datasets/amazon/ amazon
rm -rf ./datasets
rm -rf amazon.tar.gz

# Yahoo Answers Topics
rm -rf yahoo_answers_topics
curl -L -O https://cloud.tsinghua.edu.cn/f/79257038afaa4730a03f/?dl=1
tar -zxvf yahoo_answers_topics.tar.gz
rm -rf yahoo_answers_topics.tar.gz

cd ..