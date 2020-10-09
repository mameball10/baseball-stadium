# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Team (セリーグ)
Team.create(team_name: "読売ジャイアンツ", team_image: "giants.png")
Team.create(team_name: "横浜DeNAベイスターズ", team_image: "baystars.png")
Team.create(team_name: "阪神タイガース", team_image: "tigers.png")
Team.create(team_name: "広島東洋カープ", team_image: "carp.png")
Team.create(team_name: "中日ドラゴンズ", team_image: "dragons.png")
Team.create(team_name: "東京ヤクルトスワローズ", team_image: "swallows.jpg")
# Team (パリーグ)
Team.create(team_name: "埼玉西武ライオンズ", team_image: "lions.png")
Team.create(team_name: "福岡ソフトバンクホークス", team_image: "hawks.png")
Team.create(team_name: "東北楽天ゴールデンイーグルス", team_image: "eagles.png")
Team.create(team_name: "千葉ロッテマリーンズ", team_image: "marines.png")
Team.create(team_name: "北海道日本ハムファイターズ", team_image: "fighters.png")
Team.create(team_name: "オリックス・バファローズ", team_image: "buffaloes.png")

# Player, team_id:1 (読売ジャイアンツ)
Player.create(player_name: "菅野 智之", team_id: 1)
Player.create(player_name: "坂本 勇人", team_id: 1)

# Player, team_id:2 (横浜DeNAベイスターズ)
Player.create(player_name: "今永 昇太", team_id: 2)
Player.create(player_name: "佐野 恵太", team_id: 2)

# Player, team_id:3 (阪神タイガース)
Player.create(player_name: "西 勇輝", team_id: 3)
Player.create(player_name: "糸原 健斗", team_id: 3)

# Player, team_id:4 (広島東洋カープ)
Player.create(player_name: "大瀬良 大地", team_id: 4)
Player.create(player_name: "鈴木 誠也", team_id: 4)

# Player, team_id:5 (中日ドラゴンズ)
Player.create(player_name: "大野 雄大", team_id: 5)
Player.create(player_name: "高橋 周平", team_id: 5)

# Player, team_id:6 (東京ヤクルトスワローズ)
Player.create(player_name: "石川 雅規", team_id: 6)
Player.create(player_name: "青木 宣親", team_id: 6)

# Player, team_id:7 (埼玉西武ライオンズ)
Player.create(player_name: "ニール", team_id: 7)
Player.create(player_name: "源田 壮亮", team_id: 7)

# Player, team_id:8 (福岡ソフトバンクホークス)
Player.create(player_name: "東浜 巨", team_id: 8)
Player.create(player_name: "柳田 悠岐", team_id: 8)

# Player, team_id:9 (東北楽天ゴールデンイーグルス)
Player.create(player_name: "則元 昂大", team_id: 9)
Player.create(player_name: "茂木 栄五郎", team_id: 9)

# Player, team_id:10 (千葉ロッテマリーンズ)
Player.create(player_name: "石川 歩", team_id: 10)
Player.create(player_name: "安田 尚憲", team_id: 10)

# Player, team_id:11 (北海道日本ハムファイターズ)
Player.create(player_name: "有原 航平", team_id: 11)
Player.create(player_name: "西川 遥輝", team_id: 11)

# Player, team_id:12 (オリックス・バファローズ)
Player.create(player_name: "山岡 泰輔", team_id: 12)
Player.create(player_name: "吉田 正尚", team_id: 12)