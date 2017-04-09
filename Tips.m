fileName = 'TipsCalculator.fis';
fis = readfis(fileName);

prompt1 = 'How much did you spend?  ';
prompt2 = 'How good was the service?  ';
prompt3 = 'How many of people there was?  ';
prompt4 = 'Would you like to see FIS model?  ';

checkSum = input(prompt1);
serviceQuality = input(prompt2);
numberOfPeople = input(prompt3);

output = evalfis([checkSum serviceQuality numberOfPeople], fis);
disp(output * checkSum)

show = input(prompt4, 's');
if strcmp(show, 'y') || strcmp(show, 'yes')
    getfis(fis);
    fuzzy(fis);
end