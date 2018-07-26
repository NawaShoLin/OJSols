def firstDuplicate(a):
    s = set()
    for x in a:
        if x in s:
            return x
        else:
            s.add(x)
    return -1
