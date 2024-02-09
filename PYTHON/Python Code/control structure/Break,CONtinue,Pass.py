# break
for i in range(1, 5):
    for j in range(2, 6):
        if j % i == 0:
            break
            print(i, " ", j)
#continue
for i in range(1, 11):
    if i == 6:
        continue
    else:
        print(i, end=" ")
#pass
s = "geeks"
for i in s:
    pass

def fun():
    pass
fun()

# Pass statement
for i in s:
    if i == 'k':
        print('Pass executed')
        pass
    print(i)
