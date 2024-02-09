import csv

with open('monika.csv',encoding='latin1',on_bad_lines='skip') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)
    print(header)
    print(rows)


#with open('monika.csv') as file:
    #content = file.readlines()
#header = content[:1]
#rows = content[3:]
#print(header)
#print(rows)