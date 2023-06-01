import random
import statistics

means = []
while True:
    totals = []
    #mults = []
    for i in range(1000000):
        totals.append(0)
        #mults.append(1)
        while True:
            if random.random() < 0.5:
                totals[i] += 1# * mults[i]
                #mults[i] += 1
            else:
                break
    means.append(statistics.mean(totals))
    print("Sample mean: " + str(means[len(means)-1]))
    print("Mean of sample means: " + str(statistics.mean(means)))
    input("Again?")
#print(totals)
#print(mults)