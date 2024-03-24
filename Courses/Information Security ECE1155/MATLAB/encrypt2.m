function [x] = encrypt(inputArg1,inputArg2)
%this function takes inputArg1 which corresponds to the plaintext, and
%inputArg2, which is the key, and gives outputArg1 which is the ciphertext
i=1;
L=length(inputArg1);
while i<=L
    a=double(inputArg1(i)); % here i get the ascii code for each letter
    c=a+inputArg2; % this ascii code will get incremented by value of key
    disp(char(c)); % finally letter is substituted by corresponding character
    i=i+1;   
end 
end

