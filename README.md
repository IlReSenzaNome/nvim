# Get Started

:gear: Basic configuration for programming microcontrollers that can be used in mechatronic engineering.

<p align="center">
<img alt="Plugins" src="https://img.shields.io/badge/Plugins%20install-19-green?style=cuadrado&logo=vim&logoColor=blue" />
<img alt="leader key" src="https://img.shields.io/badge/leader%20key-%2C-green?style=square&logo=vim&logoColor=blue"> 
<img alt="Plugin Management" src="https://img.shields.io/badge/Plugin%20Management-Vim%20Plug-green?style=cuadrado&logo=vim&logoColor=blue">
</p>

![Editor Style](img/appearence-workspace-nvim.png)

## Table of contents

- [Requirements](#⚡️-requirements)
- [Installation](#installation)

## ⚡️ Requirements

- Neovim >= 0.7
- a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
- Node >= 19.8.8
- A C compiler in your path and libstdc++ installed ([Windows users please read this!](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)).
- Properly configured Neovim LSP client
- Python 3.11

## 🛠️ Installation

You can start with the configuration as follows:

<details>
<summary>Windows</summary>
  Install configuration with <a href="https://github.com/PowerShell/PowerShell" target="_blank" rel="noopener noreferrer">Poweshell</a>

1.  In the terminal,

    ```
    git clone https://github.com/IlReSenzaNome/nvim.git $env:LOCALAPPDATA\nvim
    ```

2.  Reload the terminal and launch nvim,

    ```
    nvim $env:LOCALAPPDATA\nvim\init.vim
    ```

3.  Use the following command in nvim :PlugInstall,

4.  Install additional dependencies for configuration,

    <details>
    <summary>Dependencies</summary>

    ```
    python pip -r requirements.txt
    ```

    On linux and macOs, you can install the [fd-find](https://npm.im/fd-find) package:

    ```
    npm install -g fd-find
    ```

    On windows using dependencies, you ca install the ripgrep

    ```
    winget install BurntSushi.ripgrep.MSVC
    ```

    </details>

</details>

## Install dependences for plugins

## From python

Instal dependence for coc

```

python pip -r requirements.txt

```

## From npm

On linux and macOS, you can install the [fd-find](https://npm.im/fd-find) package:

```

npm install -g fd-find

```

## From Chocolate

On windows using dependences, you ca install the ripgrep

```

choco install ripgrep
winget install BurntSushi.ripgrep.MSVC

```

nvim $env:LOCALAPPDATA\nvim\init.vim
Reload the terminal and launch nvim,

```

```
