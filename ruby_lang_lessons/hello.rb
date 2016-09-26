# comment out

=begin
comment out

-----------------------
print "hello world"
puts "hello world"
p "hello world"
-----------------------
msg = "hoge"
puts msg

CONST = "const value"
puts CONST

CONST = "const value changed"
puts CONST
-----------------------
"hello world".length
puts 1.1.round()
-----------------------
#p 4.8.class
p 10+3
p 10*3
p 2.4*3
p 10/3
p 10%3
p 10.0/3
p Rational(2, 5) + Rational(3, 4)
p 2/5r + 3/4r
-----------------------
puts "hello world\n"
puts 'hello world\n'

puts "price #{3000 * 4}"
puts 'price #{3000 * 4}'

name = "nakahira"
puts "hello #{name}"

puts "hello" + "world"
puts "hello" * 10
-----------------------
# !
# - upcase
# - upcase!

name = "nakahira"
puts name.upcase
puts name
puts name.upcase!
puts name

# ?
puts name.empty?
puts name.include?("N")
-----------------------
colors = ["red", "blue", "yellow"]

puts colors
puts ""
puts colors[0]
puts ""
puts colors[-1]
puts ""
puts colors[0..1]
puts ""
puts colors[0...1]
puts ""
puts colors[5]
puts ""

colors.push("gold")
colors << "silver"
puts colors
puts ""
puts colors.size
puts colors.sort
-----------------------
# ハッシュ

scores = {"naka" => 10, "hira" => 20}
scores = {naka:10, hira:20}

p scores[:naka]
scores[:hira] = 600

p scores.size
p scores.keys
p scores.values
p scores.has_key?(:naka)
-----------------------
# 変換

x = 50
y = "3"

p x + y.to_i
p x + y.to_f
p x.to_s + y

scores = {tagichi: 200, fkoji: 400}

p scores.to_a.to_h
-----------------------
# %
puts "hello"
puts 'hello'

puts %Q(hello)
puts %(hello)
puts %q(hello)

p ["red", "blue"]
p %W(red blue yellow gold silver)
-----------------------
# "文字列" % 値

p "%s %d %f" % ["naka", "2", 1.5]
-----------------------
# if
# && || !

if "hoge".include?("h") then
  puts "t"
else
  puts "h"
end

puts "hoge" if "hoge".include?("h")
-----------------------
# signal

signal = gets.chomp

case signal
when "red"
  puts "stop!"
when "green", "blue"
  puts "go!"
when "yellow"
  puts "caution!"
else 
  puts "wrong signal"
end
-----------------------
# while

i = 0
while i < 10 do
  puts "#{i} hello"
  i += 1
end

# times
num = 20
num.times do |i|
  puts "#{i} hello"
end

10.times { |i| puts "#{i} hello" }
-----------------------
# for

for i in 15..20 do
  p i
end

for name, score in {taguchi: 200, fkoji: 400} do
  puts "#{name}: #{score}"
end

# each

(15..20).each do |i|
  p i
end

{taguchi: 200, fkoji: 400}.each do |name, score|
  puts "#{name}: #{score}"
end
-----------------------
# loop

i = 0
loop do
  p i
  i += 1
end

# break next
10.times do |i|
  p i
  break if i == 7
  #next
end
-----------------------
# method

def sayhi(name = "Tom")
  #puts "hi! #{name}"
  return "hi! #{name}"
end

puts sayhi("nakahira")
puts sayhi
-----------------------
# クラス

class User

  def initialize(name)
    @name = name
  end

  def sayhi
    puts "hi, #{@name}!"
  end
end

tom = User.new("tom")
tom.sayhi

bob = User.new("bob")
bob.sayhi
-----------------------
# クラス
# クラスメソッド（インスタンス作らなくても使える）
# クラス変数
# 定数
# 継承
# アクセス権
# - public
# - protected
# - private

class User

  @@count  = 0
  VERSION = 1.1

  # setter, getterの自動定義
  attr_accessor :name
  #attr_reader: name

  def initialize(name)
    @@count += 1
    @name = name
    puts "User Class, #{@@count}th instance."
  end

  def sayhi
    # self
    puts "hi, #{@name}!"
  end

  def self.info
    puts "#{VERSION}: User Class, #{@@count} instances."
  end
end

class AdminUser < User
  
  def sayHello
    puts "Hello from #{@name}"
  end

  # override
  def sayhi
    puts "hi! from admin!"
  end
end

tom = AdminUser.new("tom")
tom.sayhi
tom.sayHello

#tom = User.new("tom")
#tom = User.new("bob")
#tom = User.new("steve")
#User.info
#p User::VERSION
-----------------------
# module
# - 名前空間

# 1文字目必ず大文字
module Movie

  VERSION = 1.1

  def self.encode
    puts "encoding..."
  end

  def self.export
    puts "exporting..."
  end
end

Movie.encode
Movie.export
p Movie::VERSION

-----------------------
# module 
# -ミックスイン

module Debug

  def info
    puts "#{self.class} debug info ..."
  end

end

class Player
  include Debug
end

class Monster
  include Debug
end


Player.new.info
Monster.new.info
-----------------------
# 例外
class MyError < StandardError; end

x = gets.to_i

begin
  if x == 3
    raise MyError
  end
  p 100/x
rescue MyError => ex
  p ex.class
  puts "not 3!"
rescue => ex
  p ex.message
  p ex.class
  puts "stopped!"
ensure
  puts "--END--"
end
-----------------------
=end

