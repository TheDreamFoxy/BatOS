for /f "tokens=1,2 delims=," %%a in ("%time%") do (
  set clean_time=%%a
)

echo Current time is: %clean_time%