lines = []
print "enter the lines"
str = list()
while True:
    s = raw_input()
    if s:
        lines.append(s.upper())
    else:
        break;

#for sentence in lines:
str = " ".join(lines)
print str