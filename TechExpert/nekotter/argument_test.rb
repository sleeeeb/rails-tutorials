movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

def rock(a)
    movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}
p=movie[a]

p
end
    puts "好きな数字を入力"
a=gets.chomp
puts +rock(a)+"みたいですね"
hash[