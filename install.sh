
# ----------------------------
# 使い方
# ----------------------------

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ytr0/conf/_setup.sh)"
# curl -fsSL https://raw.githubusercontent.com/ytr0/conf/_setup.sh) | sh

# https://raw.githubusercontent.com/ytr0/info/main/README.mdA
# $HOME

# ----------------------------
# 環境設定
# ----------------------------
remote_resource="https://raw.githubusercontent.com/ytr0/conf"

install_dir="~/"

files=(
    "amcmac-init.sh" 
    "add-login-item.sh" 
    "openLaunchAgents.command"
)

# ----------------------------
# インストール
# ----------------------------

# インストール先ディレクトリを作成し、書き込み権限を付与
mkdir -p "$install_dir"
chmod u+w "$install_dir"

# スクリプトをダウンロードしてインストール先ディレクトリに保存
for file in "${files[@]}"; do
  curl -fsSL "$remote_resource/$file" --output "$install_dir/$file"
done

# ----------------------------
# 後処理
# ----------------------------




# # add-login-item.shを実行してamcmac-init.shをログインアイテムに追加
# sh "$install_dir/add-login-item.sh" "$install_dir/amcmac-init.sh"