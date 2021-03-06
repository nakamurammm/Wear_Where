# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Season.create([
                  { name: '春' },
                  { name: '夏' },
                  { name: '秋' },
                  { name: '冬' },
                  ])
Genre.create([
                  { name: 'トップス' },
                  { name: 'アウター' },
                  { name: 'パンツ' },
                  { name: 'スカート' },
                  { name: 'ワンピース' },
                  { name: 'バッグ' },
                  { name: 'シューズ' },
                  { name: 'ソックス' },
                  { name: 'アクセサリー' },
                  { name: 'イベント用' },
                  { name: '帽子' },
                  { name: 'その他' },
                  ])

Child.create!(
   name: 'つむぎ',
   tall:89,
   tops_size:100,
   bottom_size:90,
   foot_size:15,

)
Child.create!(
   name: 'めい',
   tall:87,
   tops_size:100,
   bottom_size:90,
   foot_size:14,
)
