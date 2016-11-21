class Task {
    public int x;
    public int y;
    public Task(int x, int y) {
        this.x = x;
        this.y = y;
    }
}

public class Solution {
    private char[][] bd = null;
    
    boolean out(int x, int y) {
        return x < 0 || y < 0 || x >= bd.length || y >= bd[0].length;
    }
    
    boolean procTask(Task t) {
        int x = t.x;
        int y = t.y;
        
        if (out(x, y)) {
            return false;
        }
        
        if (bd[x][y] == 'O') {
            bd[x][y] = 'Q';
            return true;
        }
        
        return false;
    }
    
    void dfs(int x, int y) {
        Queue<Task> q = new LinkedList<Task>();
        
        q.add(new Task(x,y));
        
        while (!q.isEmpty()) {
            Task t = q.poll();
            boolean isO = procTask(t);
            if (isO) {
                x = t.x;
                y = t.y;
                q.add(new Task(x, y + 1));
                q.add(new Task(x, y - 1));
                q.add(new Task(x + 1, y));
                q.add(new Task(x - 1, y));
            } 
        }
    }
    
    public void solve(char[][] board) {
        if (board.length == 0 || board[0].length == 0) {
            return;
        }
        
        bd = board;
        
        int bound = bd[0].length - 1;
        for (int i = 0; i < bd.length; ++i) {
            if (bd[i][0] == 'O') {
                dfs(i, 0);
            }
            if (bd[i][bound] == 'O') {
                dfs(i, bound);
            }
        }
        
        bound = bd.length - 1;
        for (int i = 0; i < bd[0].length; ++i) {
            if (bd[0][i] == 'O') {
                dfs(0, i);
            }
            if (bd[bound][i] == 'O') {
                dfs(bound, i);
            }
        }
        
        
        for (int i = 0; i < board.length; ++i) {
            for (int j = 0; j < board[i].length; ++j) {
                if (board[i][j] == 'O') {
                    board[i][j] = 'X';
                }
            }
        }
        
        for (int i = 0; i < board.length; ++i) {
            for (int j = 0; j < board[i].length; ++j) {
                if (board[i][j] == 'Q') {
                    board[i][j] = 'O';
                }
            }
        }
    }
}
