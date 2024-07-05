Что запустить 3 лабораторку, нужно просто прописать команду в терминале
.\buildSubproject.ps1 -lab "LAB1" -run
Возможно, чтобы запустить придётся поменять пути компилятора в .vscode и в CMAKELists.txt
Я использую:
-CMAKE_C_COMPILER "C:/msys64/mingw64/bin/gcc.exe"
-CMAKE_CXX_COMPILER "C:/msys64/mingw64/bin/g++.exe"
