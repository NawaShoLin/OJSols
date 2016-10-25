# python 2.7

drop = raw_input()
line = raw_input()

coins = map(int, line.split())
coins.sort(reverse=True)
need = sum(coins) / 2

n = 0
s = 0
for coin in coins :
    n += 1
    s += coin
    if s > need :
        break

print n


