# -*- coding: utf-8 -*-
#=  サイト更新 Ping 送信
# ：指定の Ping サーバにサイトの更新 Ping を送信する。
#
# date          name            version
# 2012.12.03    mk-mode.com     1.00 新規作成
#
# Copyright(C) 2012 mk-mode.com All Rights Reserved.
#---------------------------------------------------------------------------------
#++
require 'xmlrpc/client'

SITE_NAME = "shigeki.takeguchi.log"              # 自サイト名称
SITE_URL  = "http://shigekitakeguchi.com"  # 自サイト URL
# Ping サーバ一覧 ( 以下に送信先を設定する )
PING_SERVERS = [
"http://api.my.yahoo.co.jp/RPC2",
"http://blog.goo.ne.jp/XMLRPC",
"http://blogsearch.google.co.jp/ping/RPC2",
"http://blogsearch.google.com/ping/RPC2",
"http://ping.blo.gs/",
"http://ping.bloggers.jp/rpc/",
"http://ping.blogranking.net/",
"http://ping.dendou.jp/",
"http://ping.fc2.com/",
"http://ping.freeblogranking.com/xmlrpc/",
"http://pingoo.jp/ping/",
"http://rpc.weblogs.com/RPC2",
"http://serenebach.net/rep.cgi",
"http://rpc.reader.livedoor.com/ping",
"http://taichistereo.net/xmlrpc/",
"http://www.i-learn.jp/ping/",
"http://www.blogpeople.net/servlet/weblogUpdates",
"http://www.hypernavi.com/ping/",
"http://rpc.pingomatic.com/",
"http://ping.speenee.com/xmlrpc",
"http://ping.feedburner.com/",
"http://ping.rss.drecom.jp/",
"http://ranking.kuruten.jp/ping",
"http://www.blogstyle.jp/",
"http://xping.pubsub.com/ping/",
"http://services.newsgator.com/ngws/xmlrpcping.aspx"
]

# 処理クラス
class Main
  # サイト更新 Ping 送信処理
  def send
    begin
      PING_SERVERS.each do |svr|
        puts "- #{svr}"
        client = XMLRPC::Client.new2(svr)
        begin
          res = client.call("weblogUpdates.ping", SITE_NAME, SITE_URL)
        rescue XMLRPC::FaultException => e
          puts "  [ERROR] #{e.faultCode} - #{e.faultString}"
        rescue Exception => e
          puts "  [ERROR] #{e.class} - #{e.message}"
        end
      end
    rescue => e
      str_msg = "[ERROR][" + self.class.name + ".send] " + e.to_s
      STDERR.puts str_msg
      exit 1
    end
  end
end

################
####  MAIN  ####
################

# 開始メッセージ出力
puts "#### Send Update Ping [ START ]"

# 処理クラスインスタンス化
obj_main = Main.new

# サイト更新 Ping 送信
obj_main.send

# 終了メッセージ出力
puts "#### Send Update Ping [ E N D ]"

