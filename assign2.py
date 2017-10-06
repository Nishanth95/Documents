#------------------------------------------Assignment2--------------------------------------
list=raw_input("enter the string:")
count=0
result= ""
for i in list:
	if count%2==0:
		 result=result +i
		 #print result
	count +=1
print result