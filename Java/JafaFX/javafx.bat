REM author: Kirs Koolsaet

@ECHO off
REM Pas de twee variabelen hieronder aan zodat ze overeenkomen
REM met jouw eigen configuratie:

REM Installatiemap van Java
SET JAVA_HOME="C:\Program Files\Java\jdk-17.0.1"

REM Map waar de JAVAFX-bibliotheek zich bevindt. Zelfde als bij de
REM Global Libraries in je IDEA Project Structure
SET JAVAFX_PATH="C:\Program Files\Java\javafx-sdk-17.0.1"

%JAVA_HOME%\bin\java.exe --module-path=%JAVAFX_PATH%\lib;%PROJECT_PATH%\lib ^
                         --add-modules=ALL-MODULE-PATH ^
                         -Dfile.encoding=UTF-8 %*%
