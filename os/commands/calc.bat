:: Batch will do it all for us. Just use /a
set check=%*
if not defined check goto err

set res=
set /a res="%*"
if defined res echo %res%
goto end

:err
echo Usage: calc ^<math problem^>
echo Example: calc 2+2

:end