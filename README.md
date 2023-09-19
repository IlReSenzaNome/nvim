# Get Started

⚙️ Basic configuration for programming microcontrollers that can be used in mechatronic engineering.

<p align="center">
<img alt="Plugins" src="https://img.shields.io/badge/Plugin%20Install%20-%2019%20-%20brightgreen?style=for-the-badge&logo=vim&logoColor=black&label=Plugin%20Install">
<img alt="leader key" src="https://img.shields.io/badge/Leader%20Key%20-%20%2C%20-%20brightgreen?style=for-the-badge&logo=vim&logoColor=black&label=Plugin%20Install"> 
<img alt="Plugin Management" src="https://img.shields.io/badge/Plugin%20Management%20-%20Vim%20Plug%20-%20brightgreen?style=for-the-badge&logo=vim&logoColor=black&label=Plugin%20Install">
</p>

![Editor Style](img/appearence-workspace-nvim.png)

## Table of contents

- [Requirements](#⚡️-requirements)
- [Installation](#installation)
- [Keymaps](#⌨️-keymaps)
- [Configuration](#⚙️-configuration)
- [Plugins](#📦-plugins)

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

1. In the terminal,

   ```
   git clone https://github.com/IlReSenzaNome/nvim.git $env:LOCALAPPDATA\nvim
   ```

2. Reload the terminal and launch nvim,

   ```
   nvim $env:LOCALAPPDATA\nvim\init.vim
   ```

3. Use the following command in nvim :PlugInstall,

4. Install additional dependencies for configuration,

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

<details>
<summary>Linux/MacOS</summary>

1. In the terminal,

   ```
   git clone https://github.com/IlReSenzaNome/nvim.git ~/.config/nvim
   ```

2. Reload the terminal and launch nvim,

   ```
   nvim ~/.config/nvim/init.vim
   ```

3. Use the following command in nvim :PlugInstall,

4. Install additional dependencies for configuration,

   <details>
   <summary>Dependencies</summary>

   ```
   python pip -r requirements.txt
   ```

   On linux and macOs, you can install the [fd-find](https://npm.im/fd-find) package:

   ```
   npm install -g fd-find
   ```

   On windows using dependencies, you ca install the [ripgrep](https://github.com/BurntSushi/ripgrep#installation) In Linux

   ```
   sudo apt-get install ripgrep
   ```

   In MacOS

   ```
   brew install ripgrep
   ```

   </details>

</details>

## ⌨️ Keymaps

| Tables        | Are           | Cool  |
| ------------- | ------------- | ----- |
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      | $12   |
| zebra stripes | are neat      | $1    |

## ⚙️ Configuration

## 📦 Plugins
