firstrow="Plaintext "+" A "+" B "+" C "+" D "+" E "+" F "+" G "+" H "+" I "+" J "+" K "+" L "+" M "+" N "+" O "+" P "+" Q "+" S "+" T "+" U "+" V "+" W "+" X "+" Y "+" Z";
i=1;
secondrow="Cyphertext";
while i<=25
    x=randsample(33:126,1);
    y= char(x);

    secondrow= secondrow+"  "+y;
    i=i+1;
end
disp(firstrow)
disp(secondrow)




