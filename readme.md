## multipass

### インストール

macにインストール（VirtualBoxは要らない）
- https://multipass.run/docs/installing-on-macos

```
brew install --cask multipass
```

アンインストール

```
brew uninstall --zap multipass
```

#### macの注意事項

mountしたディレクトリがpermission deinedになる
- https://github.com/canonical/multipass/issues/1389#issuecomment-591074740

### 使い方

`<name>` を省略すると primary が対象になる

```
multipass stop <name>
multipass delete <name>
multipass purge

multipass mount /Users/masanobuimai <name>:/home/ubuntu/Home

multipass ls
multipass shell <name>

multipass find
multipass launch 20.04 --name <name> --disk 10G
multipass launch 20.04 -n <name> --cloud-init ./cloud-config.yml
```

sshで接続
- https://qiita.com/satokaz/items/ab974af5632d1389add2#host-macos-側-からインスタンスへ-ssh-するには

### ansibleを使う

ansibleのインストール

```
sudo apt update
sudo apt install -y software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
```

```
ansible-galaxy install -r requirements.yml -p roles
ansible-playbook -K -i hosts playbook.yml
```


## lima - Linux-on-Mac

### インストール

```
brew install lima
```

### 使い方

```
limactl start
limactl ls
limactl stop

lima
```
