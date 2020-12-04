#!/bin/sh
gcc pipe_in.c -o pipe_in


# 一番シンプルな無名パイプ「|」を使う方法
python pipe_out.py | ./pipe_in





# 名前付きパイプを使う方法もある。
# カレントディレクトリにパイプを作成する。
mkfifo named_pipe

# Pythonをバックグラウンドで動かしながら…（あるいは２窓で動かす）
python pipe_out.py > named_pipe &

# Cを起動する。
./pipe_in < named_pipe

# パイプはファイルであるかのように削除できる
rm named_pipe