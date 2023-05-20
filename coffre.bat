@echo off
@title Coffre avec mot de passe
echo
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto ouvre
if NOT EXIST Coffre goto coffre
:CONFIRM
echo Voulez vous verouiller le dossier Coffre ?(O/N)
set/p "cho=>"
if %cho%==O goto ferme
if %cho%==o goto ferme
if %cho%==n goto fin
if %cho%==N goto fin
echo Choix incorrect, Oui ou Non !!
goto CONFIRM
:ferme
ren Coffre "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Dossier Coffre verouille
goto fin
:ouvre
echo Mot de passe d'ouverture du coffre ?
set/p "pass=>"
if NOT %pass%==votremotdepasse goto niet
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Coffre
echo Le dossier Coffre est ouvert
goto fin
:niet
echo Mot de passe incorect
goto fin
:coffre
md Coffre
echo Le dossier Coffre est crée
goto fin
:fin
pause