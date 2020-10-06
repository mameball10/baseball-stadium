# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# セリーグ
Team.create(team_name: "読売ジャイアンツ", team_image: "giants.png")
Team.create(team_name: "横浜DeNAベイスターズ", team_image: "baystars.png")
Team.create(team_name: "阪神タイガース", team_image: "tigers.png")
Team.create(team_name: "広島東洋カープ", team_image: "carp.png")
Team.create(team_name: "中日ドラゴンズ", team_image: "dragons.png")
Team.create(team_name: "東京ヤクルトスワローズ", team_image: "swallows.jpg")
# パリーグ
Team.create(team_name: "埼玉西武ライオンズ", team_image: "lions.png")
Team.create(team_name: "福岡ソフトバンクホークス", team_image: "hawks.png")
Team.create(team_name: "東北楽天ゴールデンイーグルス", team_image: "eagles.png")
Team.create(team_name: "千葉ロッテマリーンズ", team_image: "marines.png")
Team.create(team_name: "北海道日本ハムファイターズ", team_image: "fighters.png")
Team.create(team_name: "オリックス・バファローズ", team_image: "buffaloes.png")