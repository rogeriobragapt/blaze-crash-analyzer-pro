@echo off
echo 🔧 Corrigindo estrutura do projeto para deploy na Vercel...

:: Caminho base
set BASE=%cd%

:: Verifica se existe a pasta src
if not exist "%BASE%\src" (
    echo ❌ Pasta "src" não encontrada. Já foi movida?
    pause
    exit /b
)

:: Move todos os arquivos e pastas de src para a raiz
echo ✅ Movendo arquivos da pasta src...
move "%BASE%\src\app" "%BASE%"
move "%BASE%\src\public" "%BASE%" >nul 2>&1
move "%BASE%\src\globals.css" "%BASE%" >nul 2>&1
move "%BASE%\src\*" "%BASE%" >nul 2>&1

:: Apagar a pasta src
echo 🧹 Apagando pasta src...
rmdir /s /q "%BASE%\src"

echo 🎉 Pronto! Estrutura corrigida com sucesso.
pause
