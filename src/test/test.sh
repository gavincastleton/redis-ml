for i in {0..5}
do
  redis-cli ml.forest.add f1 $i . numeric 1 0.1 .l leaf 1 .r leaf 0
done

for i in {6..9}
do
  redis-cli ml.forest.add f1 $i . numeric 1 0.1
  redis-cli ml.forest.add f1 $i .l leaf 0
  redis-cli ml.forest.add f1 $i .r leaf 1
done

for i in {10..12}
do
  redis-cli ml.forest.add f1 $i . numeric 1 0.1
  redis-cli ml.forest.add f1 $i .l leaf 3
  redis-cli ml.forest.add f1 $i .r leaf 11
done


for i in {13..19}
do
  redis-cli ml.forest.add f1 $i . numeric 1 0.1
  redis-cli ml.forest.add f1 $i .l leaf 15
  redis-cli ml.forest.add f1 $i .r leaf 11
done

#sleep 1
echo run:
redis-cli ml.forest.run "f1" "a:2,b:4,1:0.01"
