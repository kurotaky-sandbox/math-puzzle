# Q3: カードを裏返せ
# n番目のカードからn-1枚おきに裏返す
#
# 0: 裏, 1: 表
# [[1,0],[2,0],[3,0]]

arr = []
(1..100).to_a.each {|n| arr.push [n,0]}

# 2番目のカードから1枚おきに裏返す
num = 2
interval = 1

while num <= 100 do
  start_point = num - 1
  # 裏返す場所を指定して裏返す
  start_point.step(100, interval + 1).to_a.each do |n|
    arr[n][1] = arr[n][1] == 0 ? 1 : 0
  end
  # 間隔とn番目を更新
  interval = interval + 1
  num = num + 1
end

p '裏になっているカードの枚数は・・・'
p arr.select{|a| a[1] == 0}.size.to_s + '枚！！！'
p 'カードの番号は ↓'
p arr.select{|a| a[1] == 0}
