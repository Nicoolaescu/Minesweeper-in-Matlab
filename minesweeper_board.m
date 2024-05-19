clc

n = input("Enter size of the N x N matrix for the board. N = ");

board = create_nxn_board(n)



function board = create_nxn_board(n)
    
    board_vector = randsample([1, 0], n^2,true, [0.35, 0.65]);
    
    board_n = reshape(board_vector, [n, n]);
    
    board = -1 .* board_n;
    
    bomb_count_board = conv2(board_n, ones(3), "same");
    
    board(board ~= -1) = bomb_count_board(board ~= -1);

end