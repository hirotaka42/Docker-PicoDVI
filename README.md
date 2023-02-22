# Docker Pico DV

https://github.com/Wren6991/PicoDVI/pull/22/files  
このビルド手順をDockerfileに落とし込んだもの

dockerのインストールが必要です。

# How-to-use

```
docker build -t picodvi-build-env .
sh docker-run.sh
```

デフォルトで再生されるデータの名前は`BigBuckBunny2.rgb`と`BigBuckBunny2.pcm`です。

以下のファイルに記述があるので適宜変更してみると幸せになれます。
`PicoDVI/software/apps/raw_av_player/main.cpp`