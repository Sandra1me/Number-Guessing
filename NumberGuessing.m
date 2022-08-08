fprintf("Let's play the number guessing game!\n")

guessed=false;
tries=[];
fails=0;
number=randi([1 100]);

if number-10 > 0
    fprintf('The number is between %d and %d\n',number-10,number+10)
else
    fprintf('The number is between 0 and %d\n',number+10)
end

if mod(number,2)==0
    fprintf("HINT: The number is even\n")
else
    fprintf("HINT: The number is odd\n")
end

while guessed==false
    guess=input("\nWhich number is it? ");

    [fails,tries,guessed]=check(number,guess,fails,tries,guessed);
end