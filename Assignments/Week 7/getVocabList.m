function vocabList = getVocabList()
%GETVOCABLIST reads the fixed vocabulary list in vocab.txt and returns a
%cell array of the words
%   vocabList = GETVOCABLIST() reads the fixed vocabulary list in vocab.txt 
%   and returns a cell array of the words in vocabList.


%% Read the fixed vocabulary list
fid = fopen('vocab.txt');

% Store all dictionary words in cell array vocab{}
n = 1899;  % Total number of words in the dictionary

% For ease of implementation, we use a struct to map tShe strings => integers  ...
    # 把单词对应成vocab里的数字
% In practice, you'll want to use some form of hashmap
vocabList = cell(n, 1); # 空n行1列
for i = 1:n
    % Word Index (can ignore since it will be = i)
    fscanf(fid, '%d', 1);    # 十进制整数：数字前面的 + 或 - 号是可选的。
                             # 此处只读取一个整数=跳过整数，以便之后%s读取字符
    
    % Actual Word
    vocabList{i} = fscanf(fid, '%s', 1);  #%s 字符串。这将读取连续字符，直到遇到一个空格字符（空格字符可以是空白、换行和制表符）。
    # 最终目的是把vocab.txt里的字符导入到vocabList里去(列向量)
end
fclose(fid);

end
