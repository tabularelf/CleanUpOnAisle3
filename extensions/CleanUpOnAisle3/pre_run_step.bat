@echo off
if EXIST "%YYMACROS_project_dir%\.cuta3" (
	for /f "delims=" %%a in ('type "%YYMACROS_project_dir%\.cuta3"') do (
		if NOT [%%a]==[] (
			if %%a EQU %YYTARGET_runtime% (
				goto EOF
			) ELSE (
				goto assemble
			)
		)	
	)
) ELSE (
	goto assemble
)

:assemble
echo CleanUpOnAisle3: Spilt runtime on the floor... Sweeping! 🧹🧹🧹
echo 🧹
echo 🧹
echo %YYTARGET_runtime%>"%YYMACROS_project_dir%\.cuta3"
"%YYMACROS_runtimeLocation%\bin\igor\windows\x64\Igor.exe" ^
        -j=%NUMBER_OF_PROCESSORS% -options="%YYtempFolder%\build.bff" -v -- Windows Clean
echo 🧹
echo 🧹
echo CleanUpOnAisle3: Sweeping done! 🧹🧹🧹
:EOF
exit 0