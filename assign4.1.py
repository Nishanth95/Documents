L = []
s=raw_input().split(',')
from collections import defaultdict
d = defaultdict(int)
for i in s:
   d[i] += 1
print d