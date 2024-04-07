#!/bin/bash

# スクリプトの現在のディレクトリを取得
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# 更新したいファイルのリスト
files=(
    ".bashrc" 
    ".gitconfig" 
    ".zshrc"
    ".vimrc"
)

# ファイルごとにループ
for file in "${files[@]}"; do
    # ホームディレクトリとrootディレクトリ内のファイルのパス
    home_file="$HOME/$file"
    root_file="$DIR/root/$file"

    # ファイルがホームディレクトリに存在するか確認
    if [ -f "$home_file" ]; then
        # ファイルがrootディレクトリに既に存在する場合は差分を表示
        if [ -f "$root_file" ]; then
            echo "差分を表示: $file"
            diff "$home_file" "$root_file"
        fi

        # ファイルをrootディレクトリにコピー
        echo "更新: $file"
        cp "$home_file" "$root_file"
    else
        echo "ファイルが存在しません: $home_file"
    fi
done

echo "全てのファイルが更新されました。"
