#字符串、数组以及Hash
字符串、数组以及Hash 他们的用法

##字符串
###转义字符
\a 报警符

\b 退格符

\f 换页符

\n 换行符

\r 回车符

\s 空格符

\t 制表符

\v 纵向制表符

双引号括起来的字符串内，转义字符会被解释；单引号括起来的字符串内，转义字符不会被解释。
###String类的内置方法
reverse 倒序方法

delete 删除特定字符的方法

sub（A，B） 用B替换A
##数组
数组由0开始编号，可以存储String Integer Float等类型的元素，还可以是另一个数组

数组的多种创建方式 

Array.new 创建数组
Array.new(10) 创建10个元素的数组
Array.new(4,'test') 创建4个元素，每个元素都是'test'
Array[1,2,3,4]

数组之间

& 求交集

+连接

| 求并集

-数组减

单个数组 delete_at(x)删除第X个元素

insert（3，‘d’） 指定位置插入元素

##Hash
Hash保存键值对，键和值都可以是String Integer Float Array Hash类型

Hash.new
Hash.new("Month") 创建一个默认值为"Month"的Hash
也可以 Hash["ja"=>"January","fe"=>"February"]

Hash也有很多内置方法 如

["t"]根据键求值

["t"]="Tony" 修改对应键的值

delete("m")删除对应的键值对

index（“Rose”） 查找值为“Rose”的键