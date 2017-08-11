class Solution(object):
    def rotate(self, matrix):
        mLen = len(matrix)
        matrix.reverse()
        for i in range(0, mLen):
            for j in range(1+i, mLen):
                matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]