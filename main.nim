import strutils, sequtils

proc main() =
  let n: int = parseInt(stdin.readLine)
  var m: seq[int] = stdin.readLine.split(" ").mapIt(parseInt(it))
  let k: int = parseInt(stdin.readLine)
  var m1: seq[int]
  var left, right, middle: int 
  for i in 0 .. (n - 1):
    m1.add(k - m[i])
  var flag: bool = true
  for i in 0 .. (n - 2):
    left = i + 1
    right = n - 1
    while (left <= right) and flag:
      middle = (right + left) div 2
      if m1[i] < m[middle]:
        right = middle - 1
      elif m1[i] > m[middle]:
        left = middle + 1
      else:
        echo m[i],' ', m[middle]
        flag = false
  if flag:
    echo "none"

main()