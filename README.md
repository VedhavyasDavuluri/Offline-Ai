# Local AI with LLaMA.cpp

A minimal and reliable setup for running large language models locally using LLaMA.cpp on Windows systems.

---

## Overview

This project provides a structured way to run `.gguf` models offline using the LLaMA.cpp inference engine. It is designed for simplicity, portability, and low-resource environments.

---

## Requirements

* Windows 10 or later
* CPU with AVX support (recommended)
* At least 8 GB RAM (16 GB recommended)
* A `.gguf` format model

---

## Project Structure

```
project-folder/
│
├── llama/
│   └── (LLaMA.cpp executables and dependencies)
│
├── models/
│   └── your-model.gguf
│
└── run.bat
```

---

## Installation

### 1. Setup LLaMA.cpp

* Download the latest release of LLaMA.cpp
* Extract the archive
* Copy all contents into the `llama/` directory

### 2. Add Model

* Download a compatible `.gguf` model
* Place the model file inside the `models/` directory

Example:

```
models/gemma-2b.gguf
```

---

## Configuration

Edit the `run.bat` file to match your model filename:

```
llama\llama-cli.exe -m models\your-model-name.gguf -cnv
```

Example:

```
llama\llama-cli.exe -m models\gemma-2b.gguf -cnv
```

---

## Usage

1. Double-click `run.bat`
2. A command prompt window will open
3. Start interacting with the model directly in the terminal

---

## Example Script

```
@echo off
cd /d %~dp0

echo Starting LLaMA.cpp...
llama\llama-cli.exe -m models\your-model-name.gguf -cnv

pause
```

---

## Performance Tips

* Use smaller models (2B–7B) for faster performance
* Close background applications to free RAM
* Adjust thread usage with `-t` parameter if needed

---

## Troubleshooting

**Model not found**
Ensure the model filename and path are correct

**Executable not recognized**
Verify that LLaMA.cpp files are placed inside the `llama/` directory

**Low performance**
Switch to a smaller model or reduce context size

---

## License

This project does not include LLaMA.cpp or model files. Refer to their respective licenses.

---

## Acknowledgements

* LLaMA.cpp contributors for the inference engine
* Open-source community for GGUF model support
