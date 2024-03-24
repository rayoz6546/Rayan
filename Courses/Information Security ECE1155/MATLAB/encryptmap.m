function [x] = encryptmap(inputArg1)
% Please note that inputArg1 (the plaintext) should be given in this format:
% ['a','b','c',...]
firstrow=['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']; 
i=0;
secondrow=[];
while i<=25
    x=randsample(33:126,1); % fill second row with 26 random letters and chatacters. I could have 
                            % chosen randsample(0:255,1) to cover all ascii
                            % characters but I chose the ones that are more
                            % commonly used.
    y= char(x); % get the character/letter from the number randomly generated in x

    secondrow= [secondrow,y]; %fill the row with the randomly generated characters for each letter
    i=i+1;
end
disp('PlainLetters:')
disp(firstrow)  %this is the first row of the table (letters A --> Z)
disp('EncodeLetters:')
disp(secondrow)  % this is the second row of the table (corresponding randomly generated characters)

disp('Ciphertext:');
j=1;
L=length(inputArg1);
while j<=L
    a=inputArg1(j); % get each letter in inputArg1 one at a time
    b=strfind(firstrow,a); % find index of this letter in firstrow
    a=secondrow(b); % substitute the letter by its corresponding character in table
    fprintf(a);
    j=j+1;
end
x=0;
end

% Please use the following function call to verify answer:
% x = encryptmap(['I','N','F','O','R','M','A','T','I','O','N']);


