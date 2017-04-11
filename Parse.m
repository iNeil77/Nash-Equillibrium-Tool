a = input('Enter the entire filename with extension','s');
fileID = fopen(a);
tline1 = fgetl(fileID);
tline2 = fgetl(fileID);
tline2 = fliplr(tline2);
tline3 = fgetl(fileID);
tline4 = fgetl(fileID);

player1_moves = str2double(tline2(5));
player2_moves = str2double(tline2(3));

player1_utilities = zeros(player1_moves,player2_moves);
player2_utilities = zeros(player1_moves,player2_moves);
player1_counter = 1;
player2_counter = 1;

C = strsplit(tline4,' ');
p1_dummy = zeros(3,2);
p2_dummy = zeros(3,2);
k = 1;
i = 1;
j=1;
while i<=length(C)
    p1_dummy(k,j)=str2double(C(i));
    player1_utilities(player1_counter,player2_counter) = str2double(C(i));
    i = i + 1;
    p2_dummy(k,j)=str2double(C(i));
    player2_utilities(player1_counter,player2_counter) = str2double(C(i));
    i = i + 1;
    player2_counter = player2_counter + 1;
    k=k+1;
    if player2_counter == player2_moves
        player2_counter = 1;
        player1_counter = player1_counter + 1;
    end
end

            
     
        