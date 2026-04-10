@echo off
cd /d %~dp0

echo Starting LLaMA.cpp...
llama\llama-cli.exe -m models\your-model-name.gguf -cnv

pause