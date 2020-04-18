def make_memos
    puts"===================================="
    puts"【メモ新規作成モードを選択しました】"
    print"メモのタイトルを入力してください→"
    title = gets.chomp
    print"メモの本文を入力してください→"
    content = gets.chomp
    memo = {"タイトル" => title, "本文" => content}
end

def show_memos(memos)
    puts"===================================="
    puts "【メモ一覧モードが選択されました】"
    memos.each do |memo|
        puts memo["タイトル"] + ":" + memo["本文"]
    end
end

memos = []

while true
    puts"===================================="
    puts "メモのモードを選択してください"
    puts"【add】を入力するとメモ新規作成モード【show】を入力するとメモ一覧モード"
    print"addかshowを入力してください→"
    mode = gets.chomp
    if mode == "add"
        memos.push(make_memos)
    elsif mode == "show"
        show_memos(memos)
    else 
        エラーです
    end
end