class Solution(object):
    def calcEquation(self, equations, values, queries):
        table =  make_val_table(equations, values)
        ans = [query_from_table(table, q) for q in queries]
        return [(-1.0 if x is None else x) for x in ans]
            

def make_val_table(equations, values):
    val_table = {}
    for i, equation in enumerate(equations):
        for variable in equation:
            if variable not in val_table:
                val_table[variable] = {}
        
        var_1, var_2 = equation
        value = values[i]

        val_table[var_1][var_2] = value
        val_table[var_2][var_1] = 1.0 / value
    return val_table

def query_from_table(table, query):
    visited = set()
    return rec_query(table, visited, query[0], query[1])
    
def rec_query(table, visited, a, b):
    if a in visited or a not in table:
        return None
    if a == b:
        return 1.0
    
    visited.add(a)
    if b in table[a]:
        return table[a][b]
    else:
        for x in table[a]:
            k = rec_query(table, visited, x, b)
            if k is not None:
                return table[a][x] * k
        return None
