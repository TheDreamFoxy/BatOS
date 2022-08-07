set strs[0]=This "OS" does not have temp folder, neither temp files!
set strs[1]=I created fun facts because I didn't know what to put here.
set strs[2]=This OS was inspired by someone but I forgot who lmao
set strs[3]=You can get more fun facts by executing "funfact" command in the console. (if you already did it then it's weird)
set strs[4]=This is the fifth fun fact message in the list and I'm already out of ideas lmao...
set strs[5]=I probably know less than you in batch file language.
set strs[6]=Big shoutout to Foxy#8956 (me)!!1!1!
set strs[7]=This OS was made in one day!
set strs[8]=The installer just sets 3 variables to a file... That's basically all it does.
set strs[9]=There are only 10 fun fact messages cause I'm too dumb with batch and don't know how to create more.
set strs[10]=You won't see this one in the console.


:: These copied lines are here because random always started with 1 when called on boot.
:: Idk if this is some "pseudorandom bug" but I'll leave it here because it is working
echo %random:~0,1%  >nul
echo %random:~0,1%  >nul
echo %random:~0,1%  >nul
echo %random:~0,1%  >nul
echo %random:~0,1%  >nul
echo %random:~0,1%  >nul
echo %random:~0,1%  >nul


:: Big shoutout again: https://stackoverflow.com/a/40559171/18128069 I am literally stealing atp lmao
call echo Fun fact: %%strs[%random:~0,1%]%%