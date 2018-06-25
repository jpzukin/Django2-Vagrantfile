
# 概要

Vagrantのプロビジョニングにより、Python製のWebフレームワークであるDjangoを利用する開発環境を構築するためのVagrantfile。

# 環境

- CentOS 7.5 (bento/centos-7.5 version 201806.08.0)
- Python 3.6.x
- Django 2.x
- vim 8.x

# 備考

Pythonは、SCL(Software Collection)パッケージによりインストール。
Vim 8.xは、ソースファイルからのインストール。
Webサーバーは開発用サーバーを利用します。

Windows上でも利用しやすいように、VirtualBox Guest AddtionsがインストールされているBoxイメージから仮想マシンを構築します。
