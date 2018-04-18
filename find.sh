查找所有目录
find /3T/images/helen_labels/ -type d;

查找所有目录并加权限
find /directory -type d -exec chmod o+x {} \;

匹配正则的文件
find /directory -regex ".*_effect.png" -type f -exec ls -l {} \;

不匹配该正则的文件
 find ./ ! -regex ".*_effect.png" -type f -exec ls -l {} \;

逐个处理文件
 find ./ -regex ".*.png" -type f -exec ls -1 {} \;  | grep -v "_label" | xargs -n 1 ls -l $0

 把png文件转成jpg
 find ./ -regex ".*.png" -type f -exec ls -1 {} \;  | grep -v "_label" |xargs -n 1  bash -c 'convert "$0" -quality 90 "${0%.*}.jpg"; echo "$0";'

 查看非重名文件
 find -regex ".*_mask.png" -printf "%f\n"  | sort | uniq | wc -l

 查看重名文件
 find -regex ".*_mask.png" -printf "%f\n"  | sort | uniq -d

 拷贝部分文件
 find /3T/images/facial_seg_data2_2-crop/ -name "*.jpg" | head -n 10 | xargs -n 1 bash -c 'cp "$0" /3T/images/testaug/'

 批量删除文件
 sudo find ./models/ -regex ".*[8]_D_model" -type f -exec rm {} \;
