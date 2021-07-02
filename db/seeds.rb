category_params = [
  {
    name: 'アプリ'
  },
  {
    name: '会議'
  }
]

Category.delete_all
Category.create!(category_params)
puts 'categoryの初期データの投入に成功しました!'

idea_params = [
  {
    category_id: 1,
    body: 'オンラインでブレスト'
  },
  {
    category_id: 2,
    body: 'タスク管理ツール'
  }

]

Idea.delete_all
Idea.create!(idea_params)
puts 'ideaの初期データの投入に成功しました!'

puts 'すべての初期データ投入に成功しました!'
