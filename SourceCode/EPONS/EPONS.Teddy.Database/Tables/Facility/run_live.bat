for %%G in (*.sql) do sqlcmd /S developersworkspace.co.za /d SADFM_Live -U sa -P Galjoen501 -i"%%G"
pause