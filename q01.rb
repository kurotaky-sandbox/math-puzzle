start_num = 11

arr = []
(start_num..20000).each do |n|
  if n.to_s == n.to_s.reverse # 10進数で回文数?
    if n.to_s(8) == n.to_s(8).reverse # 8進数で回文数?
      if n.to_s(2) == n.to_s(2).reverse# 2進数で回文数?
        arr.push n
      end
    end
  end
end

p '=== 10進数 ==='
p arr.first
p '=== 8進数 ==='
p arr.first.to_s(8)
p '=== 2進数 ==='
p arr.first.to_s(2)
