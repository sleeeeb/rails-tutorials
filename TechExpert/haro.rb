posts = []   

 def post_review(a_posts)
# 変数の定義
post={}
  puts "ジャンルを入力してください："
  post[:genre]  = gets.chomp
  puts "タイトルを入力してください："
  post[:title]  = gets.chomp
  puts "感想を入力してください："
  post[:review] = gets.chomp
  line   = "---------------------------"

  # レビューの描画
  puts "ジャンル : #{post[:genre]}\n#{line}"
  puts "タイトル : #{post[:title]}\n#{line}"
  puts "感想 :\n#{post[:review]}\n#{line}"
  a_posts << post
  return a_posts
end

def read_reviews(posts)
   fee=0
posts.each do  |post|

puts "[#{fee}]タイトル : #{post[:title]}"
fee =fee + 1 
end
puts"見たいレビューの番号を入力してください："
num = gets.to_i
post={}
post = posts[num]
  line   = "---------------------------"
  puts "ジャンル : #{post[:genre]}\n#{line}"
  puts "タイトル : #{post[:title]}\n#{line}"
  puts "感想 :\n#{post[:review]}\n#{line}"
end
def end_programs
  exit
end

def exception
  puts "無効な入力です"
end

 
while true do
#メニュー１  
puts "レビュー数：#{posts.length}
[0]レビューを書く
[1]レビューを読む
[2]アプリを終了する"
input  = gets.to_i
if input==0
posts = post_review(posts)
elsif input==1
  read_reviews(posts)
elsif input==2
  end_programs
else
  exception
end

end