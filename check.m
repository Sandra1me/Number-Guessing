function [fails,tries,guessed] = check(number,guess,fails,tries,guessed)
%Check Checks if the input number is correct or not
%   Checks if the input number is correct or not and gives more clues to
%   the user. Also, it creates a list with all the tried numbers and
%   calculates the number of failures.
if guess == number
    fprintf("Correct! You guessed the number!\n")
    guessed=true;
    fprintf("Number of fails: %d \n",fails)
else
    fprintf("That is not the number...\n")
    fails=fails+1;
    tries=[tries,guess];    
    fprintf("Number of fails: %d \n",fails)
    tries

    if number > guess
        fprintf("HINT: The number bigger than %d\n",guess)
    else
        fprintf("HINT: The number smaller than %d\n",guess)
end
end

