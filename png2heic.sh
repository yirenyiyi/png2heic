#!/bin/bash
echo "param"
echo $1
# 源文件目录
input_dir=$1
# 输出文件目录
output_dir=$1

echo "dir"
echo $input_dir
echo $output_dir

# 遍历源文件目录的每个 PNG 文件
for file in $input_dir/*.png
do
    # 获取文件名和扩展名
    filename=$(basename "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"

    # 将 PNG 转换为 HEIC
    sips -s format heic "$file" --out "$output_dir/$filename.heic"
done