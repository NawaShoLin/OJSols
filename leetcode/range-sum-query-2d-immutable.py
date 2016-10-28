class NumMatrix(object):
    def __init__(self, matrix):
        row_num = len(matrix)
        col_num = len(matrix[0]) if row_num > 0 else 0 
        
        m = [[0 for i in range(col_num + 1)] for j in range(row_num + 1)]
        for i in range(1, row_num + 1):
            for j in range(1, col_num + 1):
                m[i][j] = m[i-1][j] + m[i][j-1] - m[i-1][j-1] + matrix[i-1][j-1]
        self.m = m
        

    def sumRegion(self, row1, col1, row2, col2):
        x1 = row1 + 1
        x2 = row2 + 1
        y1 = col1 + 1
        y2 = col2 + 1
        m = self.m
        return m[x2][y2] + m[x1-1][y1-1] - m[x2][y1-1] - m[x1-1][y2]
