Project setup
=============

Project setup instructions here.

    1. install poetry ((Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -)
    2. add environment variable
    3. poetry init
        Licence : MIT
        define your main dependencies interactively: no
        development dependencies interactively: no
    4. add dependencies:- poetry add <packages>
    5. run server:- poetry run python manage.py runserver

MakeFile setup for windows.
    1. install mingw from https://sourceforge.net/projects/mingw/
    2. install reference https://www.youtube.com/watch?v=JsO58opI3SQ
    3. documentation https://medium.com/@samsorrahman/how-to-run-a-makefile-in-windows-b4d115d7c516
        cmd(administrator)
        * mingw-get install mingw32-make
        * mingw32-make — version
        rename "C:\MinGW\bin\mingw32-make.exe" to "C:\MinGW\bin\make.exe"
    3. run make command

Split django settings
    1. poetry add django-split-settings PyYAML
    2. add local settings

Logging

    import logging
    logger = logging.getLogger(__name__)
    logger.debug("This is a debug message")
    logger.info("This is a info message")
    logger.warning("This is a warning message")
