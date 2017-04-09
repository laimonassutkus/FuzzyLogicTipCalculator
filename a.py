file = open("./../a.txt", 'r+')
lines = file.read().splitlines()
print(len(lines))
lines = list(set(lines))
print(len(lines))

file.seek(0)
file.truncate()

file.write("\n".join(lines))
file.close()

