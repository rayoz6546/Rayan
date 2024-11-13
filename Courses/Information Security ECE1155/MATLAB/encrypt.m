function x = encrypt(inputArg1,inputArg2)
%this function takes inputArg1 which corresponds to the plaintext, and
%inputArg2, which is the key, and gives outputArg1 which is the ciphertext
%Please note that in my program, the unput should be provided in the
%following form: {'a','b','c',...} where a,b,c,... are the letters of the
%plaintext.
i=1;
L=length(inputArg1); %get size of the input array
while i<=L
    b=inputArg1(i); % access first letter in my plaintext
    a=double(char(b)); % get the ASCII code of that letter
    
    c=a+inputArg2;% this ascii code will get incremented by value of the key
    fprintf(char(c)); % finally print the corresponding letter 
    i=i+1;   
end 

x=0;
end
%To test this code, please write the following function call:
%x=encrypt({'B','E','N','E','D','U','M','H','A','L','L','O','H','A','R','A','S','T','R','E','E','T'},5);