var countBattleships = function(board) {
    if (board.length === 0 || board[0].lenght === 0) {
        return 0;
    }
    
    count = board[0][0] === 'X' ? 1 : 0;
    
    for (let i = 1; i < board[0].length; i += 1) {
        if (board[0][i] === 'X' && board[0][i-1] === '.') {
            count += 1;
        }
    }
    
    for (let i = 1; i < board.length; i += 1) {
        if (board[i][0] === 'X' && board[i-1][0] === '.') {
            count += 1;
        }
    }
    
    for (let i = 1; i < board.length; i += 1) {
        for (let j = 1; j < board[0].length; j += 1) {
            if (board[i][j] === 'X' &&
                board[i-1][j] === '.' && board[i][j-1] === '.') {
                count += 1;
            }
        }
    }
    
    return count;
};
