import random
import statistics
means = []
numFlips = 10000
while True:
    total = 0
    mult = 1
    for i in range(numFlips):
        if random.random() < 0.5:
            total += 1*mult
            mult += 1
        else:
            mult = 1
    means.append(total/numFlips)
    print("Sample mean: " + str(means[len(means)-1]))
    print("Mean of sample means: " + str(statistics.mean(means)))
    input("Again?")