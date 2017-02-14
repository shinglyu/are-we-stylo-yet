import csv
import json

data = []
with open('stylo.csv', 'rb') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        datum = {}
        datum['date'] = row[0]
        datum['reftest_fails'] = row[1]
        datum['remaining_properties'] = row[3]
        data.append(datum)
print(json.dumps(data, indent=3))
