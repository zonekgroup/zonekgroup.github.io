# array=( 28-9-2019 boy fantasy girl lover news unknow )
array=( 3-10-2019 28-9-2019 boy fantasy girl lover news unknow )
######################## RENAME IMAGES ########################
# for i in "${array[@]}";do
#   echo "Rename: $i"
#   listImage=( `ls $i| grep -v thumb` )
#   # mkdir "./$i/thumb"
#   counter=1
#   for image in "${listImage[@]}";do
#     mv "$i/ $image" "$i/$image"
#     counter=$((counter+1))
#   done
# done

######################## CONVERT QUALITY ########################
for i in "${array[@]}";do
  echo "Convert: $i"
  mkdir "./$i/thumb"
  listImage=( `ls $i| grep -v thumb` )
  for image in "${listImage[@]}";do
    echo -n "."
    convert -resize 20% "./$i/$image" "./$i/thumb/$image" 
  done
  echo "Done"
done

######################## TAO LIST JSON ########################
#  ls 28-9-2019 |  xargs -i echo "\"https://zonekgroup.github.io/animebg/28-9-2019/{}\","  > list.txt