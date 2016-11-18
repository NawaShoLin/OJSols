class AllOne(object):

    def __init__(self):
        self.d = {}


    def inc(self, key):
        d = self.d
        if key in d:
            d[key] += 1
        else:
            d[key] = 1
            

    def dec(self, key):
        d = self.d
        if key in d:
            if d[key] == 1:
                del d[key]
            else:
                d[key] -= 1
                

    def getMaxKey(self):
        d = self.d
        keys = d.keys()
        select_max = lambda a, b: a if d[a] > d[b] else b
        return reduce(select_max, keys) if keys else ''


    def getMinKey(self):
        d = self.d
        keys = d.keys()
        select_min = lambda a, b: a if d[a] < d[b] else b
        return reduce(select_min, keys) if keys else ''
