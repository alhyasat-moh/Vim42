Millions of years ago, a race of hyper-intelligent beings built the most powerful computer ever conceived—Deep Thought—to answer the greatest mystery of all: What is the meaning of life, the universe, and everything? After eons of humming, blinking, and thinking (very deeply), Deep Thought finally emerged from its contemplative trance and declared the answer was… 42. The architects were stunned. "Forty-two what?" they asked. Deep Thought blinked again and shrugged—in its very supercomputer way. You see, it had given the answer, but no one had ever figured out the question. And so began the most wonderfully ridiculous search for meaning in the galaxy: not for life itself, but for the question that made 42 the answer. It's a brilliant cosmic punchline, reminding us that maybe the universe isn't just strange—it's in on the joke.

# Vim42 Configuration

> ⚙️  A customized Vim setup designed for efficient development at Ecole 42 and beyond, developed by students, with full integration for Norminette, Git, snippets, fuzzy search, smooth scrolling, and more.

```
===========================================================
██████      ██████     ██████████████████████████
██████      ██████     ██████████████████████████
██████      ██████     ██████              ██████
██████      ██████     ██████              ██████
██████      ██████                         ██████
██████      ██████                         ██████
██████      ██████     Vim                 ██████
██████████████████                         ██████
██████████████████       ████████████████████████
██████████████████       ████████████████████████
            ██████       ██████
            ██████       ████████████████████████
            ██████       ████████████████████████
```

---

## 📦 Plugin Manager: Vim-Plug

This configuration uses [vim-plug](https://github.com/junegunn/vim-plug) for plugin management. Plugins are installed in `~/.vim/plugged`.

### Install `vim-plug` (if not installed):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---

## 🔌 Included Plugins

| Category          | Plugins |
|-------------------|---------|
| **File Explorer** | `preservim/nerdtree`, `ryanoasis/vim-devicons` |
| **Fuzzy Finder**  | `junegunn/fzf`, `junegunn/fzf.vim` |
| **Commenting**    | `tpope/vim-commentary` |
| **Start Screen**  | `mhinz/vim-startify` |
| **Status Line**   | `vim-airline/vim-airline`, `vim-airline/vim-airline-themes` |
| **Brackets**      | `jiangmiao/auto-pairs` |
| **Git Tools**     | `tpope/vim-fugitive`, `lewis6991/gitsigns.nvim` |
| **Linting**       | `dense-analysis/ale` |
| **AI Coding**     | `github/copilot.vim` |
| **Scrolling**     | `terryma/vim-smooth-scroll` |
| **YAML Support**  | `stephpy/vim-yaml` |
| **Terminal**      | `kassio/neoterm` |
| **Undo Tree**     | `mbbill/undotree` |
| **Tag Browser**   | `preservim/tagbar` |
| **Text Manipulation** | `tpope/vim-surround` |
| **Completion**    | `neoclide/coc.nvim` (with VS Code-like IntelliSense) |
| **Language Support** | `octol/vim-cpp-enhanced-highlight`, `arzg/vim-sh`, `fatih/vim-go` |
| **Color Scheme**  | `sainnhe/everforest` (customized dark theme) |
| **42 Norms**      | `alexandregv/norminette-vim` |

---

## 🆕 What's New in This Configuration

### Enhanced Completion with CoC.nvim
- **VS Code-like IntelliSense**: Full LSP support with intelligent code completion
- **Snippet Support**: Tab-based snippet expansion and navigation
- **Multi-Language Support**: Out-of-the-box support for C/C++, Python, Go, JavaScript, TypeScript, JSON, HTML, CSS
- **Smart Completion Navigation**: Tab/Enter to accept, Arrow keys to navigate, Ctrl+Space to trigger manually
- **Signature Help**: Function parameter hints while typing
- **Go To Definition**: Jump to symbol definitions with `gd`
- **Symbol Renaming**: Intelligent rename with F2 or `<leader>rn`
- **Code Actions**: Quick fixes and refactoring with `<leader>a`
- **Diagnostics**: Real-time error checking with navigation shortcuts

### Advanced Linting with ALE
- Replaced Syntastic with ALE for asynchronous linting
- Auto-fix on save for supported languages
- Support for multiple linters per language
- Python: `pylsp` + `black` formatter
- Go: `gopls`, `golint`, `govet` + `gofmt` formatter
- Shell: `shellcheck` + `shfmt` formatter
- C/C++: `clangd` integration

### Enhanced Go Support
- Full syntax highlighting for Go with `vim-go`
- Highlights for functions, methods, types, fields, operators, and more
- Integrated with CoC's `gopls` for intelligent completion
- Auto-formatting disabled to prevent conflicts with ALE

### Improved Visual Experience
- **Everforest Dark Theme**: Ultra-dark customized theme with GitHub-inspired colors
- **Enhanced Syntax Highlighting**: Vibrant colors for Go, C/C++, and other languages
- **Better Completion Menu**: Styled popup menus with clear selection indicators
- **Persistent Undo**: Never lose your changes with unlimited undo history
- **Custom Start Screen**: Beautiful ASCII art welcome screen

### Better Key Mappings
- **Window Navigation**: Alt+Arrow keys for intuitive window switching
- **Smooth Scrolling**: Shift+Arrow keys for smooth page scrolling
- **Line Movement**: Ctrl+Shift+Up/Down to move lines up and down
- **Copilot Toggle**: Backtick (`) to quickly enable/disable GitHub Copilot
- **Documentation**: K or Ctrl+K Ctrl+I to show hover documentation

---

## 🧠 Key Mappings

| Mode | Keys                  | Action                                      |
|------|------------------------|---------------------------------------------|
| Normal | `<leader>ft`         | Toggle NERDTree                             |
| Normal | `<leader>ff`         | Open FZF file search                        |
| Normal | `cc`                 | Comment/uncomment line                      |
| Visual | `cc`                | Comment/uncomment selected lines            |
| Normal | `` ` ``              | Toggle Copilot On/Off                       |
| Normal | `gd`                 | Go to definition (CoC)                      |
| Normal | `gr`                 | Find references (CoC)                       |
| Normal | `gy`                 | Go to type definition (CoC)                 |
| Normal | `gi`                 | Go to implementation (CoC)                  |
| Normal | `K`                  | Show documentation (CoC)                    |
| Normal | `F2` or `<leader>rn` | Rename symbol (CoC)                         |
| Normal | `<C-k><C-n>`         | Next diagnostic (CoC)                       |
| Normal | `<C-k><C-p>`         | Previous diagnostic (CoC)                   |
| Normal | `<leader>a`          | Code action (CoC)                           |
| Normal | `<leader>f`          | Format code (CoC)                           |
| Insert | `<Tab>`              | Accept completion/next snippet placeholder  |
| Insert | `<C-Space>`          | Trigger completion manually                 |
| Insert | `<Down>/<Up>`        | Navigate completion menu                    |
| Normal | `<A-Left>`           | Move to left window                         |
| Normal | `<A-Right>`          | Move to right window                        |
| Normal | `<A-Up>`             | Move to upper window                        |
| Normal | `<A-Down>`           | Move to lower window                        |
| Normal | `<leader>sw`         | Swap windows                                |
| Normal | `<C-S-Up>`           | Move line up                                |
| Normal | `<C-S-Down>`         | Move line down                              |
| Visual | `<C-S-Up>`           | Move selected lines up                      |
| Visual | `<C-S-Down>`         | Move selected lines down                    |
| Terminal | `<C-n><C-n>`       | Escape terminal mode                        |
| Normal | `<S-Down>`           | Smooth scroll down                          |
| Normal | `<S-Up>`             | Smooth scroll up                            |
| Normal | `<S-Right>`          | Scroll right by 5 characters                |
| Normal | `<S-Left>`           | Scroll left by 5 characters                 |
| Normal | `<leader>nn`         | Auto-format code to 42 norm (requires helper scripts) |
| Normal | `<leader>zz`         | Clean home directory (requires helper scripts) |
| Normal | `<leader>za`         | Clean Flatpak cache (requires helper scripts) |
| Normal | `<leader>push`       | Quick git push (requires helper scripts)    |

> Note: `<leader>` is the spacebar in this config.
> 
> **Helper Scripts Commands:** The last four commands require the [42 Helper Scripts](https://github.com/Moe-Salim91156/helper_scripts) to be installed. See the installation section for details.

---

## 🧪 42 Norminette Integration

- Runs both `norminette` and `gcc` via ALE
- Errors shown on file save
- Location list auto-populated
- Works seamlessly with C/C++ linting

To run Norminette manually:
```vim
<leader>nn
```

---

## 🎨 Theme: Everforest (Ultra Dark Customized)

This configuration uses a heavily customized Everforest theme with:
- Ultra-dark background (#0D1117 - GitHub-inspired)
- Vibrant syntax colors for maximum readability
- Enhanced Go syntax highlighting with hot pink, cyan, and bright green
- Professional completion menu styling
- Distinct visual selection and search highlighting

---

## ✅ Installation Guide (If you don't have a vim configuration installed such as SpaceVim, in that case, you need to remove that configuration first)

Follow these steps to set up your custom Vim configuration:

### Prerequisites

1. **Vim 8.0+** (should be available on 42 computers)
2. **Node.js** (required for CoC.nvim)
3. **Git** (for cloning repositories)

### Step 1: Install vim-plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Step 2: Clone this repository

```bash
git clone https://github.com/malhyasa/Vim42.git
cd Vim42
```

### Step 3: Backup existing configuration (if any)

```bash
# Backup your current .vimrc
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup

# Backup your current .vim directory
[ -d ~/.vim ] && mv ~/.vim ~/.vim.backup
```

### Step 4: Install the .vimrc

```bash
mv .vimrc ~/
```

### Step 5: Install Node.js (if not available)

**On 42 cluster computers (without sudo):**

```bash
# Install Node Version Manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Restart your terminal or run:
source ~/.bashrc  # or source ~/.zshrc if using zsh

# Install the latest LTS version of Node.js
nvm install --lts
nvm use --lts

# Verify installation
node --version
npm --version
```

**On personal Linux systems (with sudo):**

```bash
# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Or use your package manager
sudo apt install nodejs npm
```

**On macOS:**

```bash
brew install node
```

### Step 6: Install FZF (Fuzzy Finder)

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

When prompted:
- Enable fuzzy auto-completion: **Yes**
- Enable key bindings: **Yes**
- Update shell configuration: **Yes**

### Step 7: Install Vim plugins

Open Vim:
```bash
vim
```

Inside Vim, run:
```vim
:PlugInstall
```

Wait for all plugins to install. This may take 3-5 minutes.

### Step 8: Install CoC language servers

After plugins are installed, install the language servers:

```vim
:CocInstall coc-clangd coc-json coc-snippets coc-pairs
```

For additional language support:
```vim
:CocInstall coc-pyright coc-tsserver coc-html coc-css coc-go
```

### Step 9: Install additional tools (optional but recommended)

**On 42 cluster computers (without sudo):**

For Python linting and formatting:
```bash
pip3 install --user python-lsp-server black
```

For Go development:
```bash
go install golang.org/x/tools/gopls@latest
go install golang.org/x/lint/golint@latest
```

**On personal systems (with sudo):**

```bash
# Ubuntu/Debian
sudo apt install shellcheck
sudo snap install shfmt

# macOS
brew install shellcheck shfmt
```

### Step 10: Install Powerline Fonts (for vim-airline)

```bash
# Clone the powerline fonts repository
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

Then configure your terminal to use a Powerline font (e.g., "Meslo LG S for Powerline").

### Step 11: Install Helper Scripts (Optional)

This configuration includes custom shell commands from the [42 Helper Scripts repository](https://github.com/Moe-Salim91156/helper_scripts).

```bash
# Clone the helper scripts repository
git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts

# Run the automated setup
cd ~/helper_scripts
./setup.sh

# Reload your shell
source ~/.zshrc  # or source ~/.bashrc
```

The helper scripts provide:
- `norm_dir` - Auto-format code to 42 norm
- `cleaner` - Enhanced cleanup with disk space reporting
- `clean` - Clean Flatpak cache
- `push` - Quick commit and push wrapper

**If you don't want the helper scripts**, remove these mappings from `.vimrc`:
```vim
nnoremap <leader>nn :!norm_dir %<CR>
nnoremap <leader>zz :!cleaner ~<CR>
nnoremap <leader>za :!clean <CR>
nnoremap <leader>push :!push %<CR>
```

### Step 12: Restart Vim

Close and reopen Vim:
```bash
vim
```

✅ You're all set! Your Vim is now configured with custom settings and plugins.

---

## 🔧 Verification Checklist

To verify everything is working:

1. ✅ **Start Screen**: You should see the Vim42 ASCII art welcome screen
2. ✅ **File Explorer**: Press `Space + ft` to toggle NERDTree
3. ✅ **Fuzzy Finder**: Press `Space + ff` to open FZF file search
4. ✅ **Syntax Highlighting**: Open a C file and check colors
5. ✅ **Code Completion**: Type code and verify completion suggestions appear
6. ✅ **LSP Features**: Press `K` on a function to see documentation
7. ✅ **Status Line**: Check vim-airline at the bottom
8. ✅ **Theme**: Background should be very dark with colorful syntax

---

## 🚨 Common Issues and Solutions

### Issue: "vim-plug not found"
**Solution:** Re-run the vim-plug installation command from Step 1.

### Issue: CoC not working / "coc.nvim not built"
**Solution:** 
```bash
# Check Node.js version (must be 14.14 or higher)
node --version

# Rebuild CoC
cd ~/.vim/plugged/coc.nvim
npm install
```

### Issue: "E117: Unknown function: coc#refresh"
**Solution:** CoC needs to be built. Follow the solution above.

### Issue: Icons not showing in NERDTree
**Solution:** Install a Nerd Font and configure your terminal to use it.

### Issue: Completion popup not showing
**Solution:** 
```vim
:CocInfo
:CocList extensions
:CocInstall coc-clangd
```

### Issue: Plugins not loading
**Solution:**
```vim
:PlugClean
:PlugInstall
```

### Issue: GitHub Copilot not working
**Solution:** Remove this line in `.vimrc`:
```vim
" Plug 'github/copilot.vim'
```

### Issue: Norminette not found
**Solution:**
```bash
pip3 install --user norminette
```

---

## 🧰 Recommended Tools

**Essential:**
- [`norminette`](https://github.com/42School/norminette) - 42 coding style checker
- `gcc` or `clang` - C compiler
- `clangd` - C/C++ language server
- `node` and `npm` - Required for CoC.nvim

**Highly Recommended:**
- [**42 Helper Scripts**](https://github.com/Moe-Salim91156/helper_scripts) - Automation scripts for 42 workflow
  - Includes: `norm_dir`, `cleaner`, `clean`, `push`, and more
  - Quick setup: `git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts && cd ~/helper_scripts && ./setup.sh`

**Optional but useful:**
- `ctags` - Better tag navigation
- `ripgrep` or `ag` - Faster FZF searching
- `python-lsp-server` - Python LSP
- `black` - Python formatter
- `shellcheck` - Shell script linter
- `shfmt` - Shell script formatter
- `gopls` - Go language server

---

## 🤝 Contributing

Contributions are welcome! If you have improvements or bug fixes:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

---

## 📜 Changelog

### Version 2.0 (Latest)
- ✨ Added CoC.nvim with full LSP support
- ✨ Replaced Syntastic with ALE for async linting
- ✨ Added vim-go with enhanced syntax highlighting
- ✨ Implemented Everforest ultra-dark theme
- ✨ Added persistent undo with 10,000 levels
- ✨ Enhanced Go syntax highlighting with vibrant colors
- ✨ Added UndoTree and Tagbar plugins
- ✨ Improved completion menu styling
- ✨ Added snippet support with CoC
- ✨ Better key mappings for code navigation
- ✨ Integrated 42 Helper Scripts for workflow automation
- 🔧 Fixed completion popup behavior
- 🔧 Optimized ALE to prevent conflicts with vim-go
- 📚 Comprehensive installation guide for non-sudo environments

### Version 1.0
- Initial release with basic plugins
- Syntastic for linting
- Nord theme
- Basic file navigation and fuzzy finding

---

## ⚠️ Disclaimers

- This configuration was tailored by students and is not an official 42 configuration
- This configuration is a work in progress and may not be fully optimized
- Some features (like GitHub Copilot) require additional setup or subscriptions
- Contributions and suggestions are welcome!

---

Made with ❤️ by 42 students, for 42 students

**@ 42Amman**

---

## 🆕 What's New in This Configuration

### Enhanced Completion with CoC.nvim
- **VS Code-like IntelliSense**: Full LSP support with intelligent code completion
- **Snippet Support**: Tab-based snippet expansion and navigation
- **Multi-Language Support**: Out-of-the-box support for C/C++, Python, Go, JavaScript, TypeScript, JSON, HTML, CSS
- **Smart Completion Navigation**: Tab/Enter to accept, Arrow keys to navigate, Ctrl+Space to trigger manually
- **Signature Help**: Function parameter hints while typing
- **Go To Definition**: Jump to symbol definitions with `gd`
- **Symbol Renaming**: Intelligent rename with F2 or `<leader>rn`
- **Code Actions**: Quick fixes and refactoring with `<leader>a`
- **Diagnostics**: Real-time error checking with navigation shortcuts

### Advanced Linting with ALE
- Replaced Syntastic with ALE for asynchronous linting
- Auto-fix on save for supported languages
- Support for multiple linters per language
- Python: `pylsp` + `black` formatter
- Go: `gopls`, `golint`, `govet` + `gofmt` formatter
- Shell: `shellcheck` + `shfmt` formatter
- C/C++: `clangd` integration

### Enhanced Go Support
- Full syntax highlighting for Go with `vim-go`
- Highlights for functions, methods, types, fields, operators, and more
- Integrated with CoC's `gopls` for intelligent completion
- Auto-formatting disabled to prevent conflicts with ALE

### Improved Visual Experience
- **Everforest Dark Theme**: Ultra-dark customized theme with GitHub-inspired colors
- **Enhanced Syntax Highlighting**: Vibrant colors for Go, C/C++, and other languages
- **Better Completion Menu**: Styled popup menus with clear selection indicators
- **Persistent Undo**: Never lose your changes with unlimited undo history
- **Custom Start Screen**: Beautiful ASCII art welcome screen

### Better Key Mappings
- **Window Navigation**: Alt+Arrow keys for intuitive window switching
- **Smooth Scrolling**: Shift+Arrow keys for smooth page scrolling
- **Line Movement**: Ctrl+Shift+Up/Down to move lines up and down
- **Copilot Toggle**: Backtick (`) to quickly enable/disable GitHub Copilot
- **Documentation**: K or Ctrl+K Ctrl+I to show hover documentation

---

## 🧠 Key Mappings

| Mode | Keys                  | Action                                      |
|------|------------------------|---------------------------------------------|
| Normal | `<leader>ft`         | Toggle NERDTree                             |
| Normal | `<leader>ff`         | Open FZF file search                        |
| Normal | `cc`                 | Comment/uncomment line                      |
| Visual | `cc`                | Comment/uncomment selected lines            |
| Normal | `` ` ``              | Toggle Copilot On/Off                       |
| Normal | `gd`                 | Go to definition (CoC)                      |
| Normal | `gr`                 | Find references (CoC)                       |
| Normal | `gy`                 | Go to type definition (CoC)                 |
| Normal | `gi`                 | Go to implementation (CoC)                  |
| Normal | `K`                  | Show documentation (CoC)                    |
| Normal | `F2` or `<leader>rn` | Rename symbol (CoC)                         |
| Normal | `<C-k><C-n>`         | Next diagnostic (CoC)                       |
| Normal | `<C-k><C-p>`         | Previous diagnostic (CoC)                   |
| Normal | `<leader>a`          | Code action (CoC)                           |
| Normal | `<leader>f`          | Format code (CoC)                           |
| Insert | `<Tab>`              | Accept completion/next snippet placeholder  |
| Insert | `<C-Space>`          | Trigger completion manually                 |
| Insert | `<Down>/<Up>`        | Navigate completion menu                    |
| Normal | `<A-Left>`           | Move to left window                         |
| Normal | `<A-Right>`          | Move to right window                        |
| Normal | `<A-Up>`             | Move to upper window                        |
| Normal | `<A-Down>`           | Move to lower window                        |
| Normal | `<leader>sw`         | Swap windows                                |
| Normal | `<C-S-Up>`           | Move line up                                |
| Normal | `<C-S-Down>`         | Move line down                              |
| Visual | `<C-S-Up>`           | Move selected lines up                      |
| Visual | `<C-S-Down>`         | Move selected lines down                    |
| Terminal | `<C-n><C-n>`       | Escape terminal mode                        |
| Normal | `<S-Down>`           | Smooth scroll down                          |
| Normal | `<S-Up>`             | Smooth scroll up                            |
| Normal | `<S-Right>`          | Scroll right by 5 characters                |
| Normal | `<S-Left>`           | Scroll left by 5 characters                 |
| Normal | `<leader>nn`         | Auto-format code to 42 norm (requires helper scripts) |
| Normal | `<leader>zz`         | Clean home directory (requires helper scripts) |
| Normal | `<leader>za`         | Clean Flatpak cache (requires helper scripts) |
| Normal | `<leader>push`       | Quick git push (requires helper scripts)    |

> Note: `<leader>` is the spacebar in this config.
> 
> **Helper Scripts Commands:** The last four commands require the [42 Helper Scripts](https://github.com/Moe-Salim91156/helper_scripts) to be installed. See the installation section for details.

---

## 🧪 42 Norminette Integration

- Runs both `norminette` and `gcc` via ALE
- Errors shown on file save
- Location list auto-populated
- Works seamlessly with C/C++ linting

To run Norminette manually:
```vim
<leader>nn
```

---

## 🎨 Theme: Everforest (Ultra Dark Customized)

This configuration uses a heavily customized Everforest theme with:
- Ultra-dark background (#0D1117 - GitHub-inspired)
- Vibrant syntax colors for maximum readability
- Enhanced Go syntax highlighting with hot pink, cyan, and bright green
- Professional completion menu styling
- Distinct visual selection and search highlighting

---

## ✅ Installation Guide

Follow these steps to set up your custom Vim configuration on 42 cluster computers (or any system without sudo privileges):

### Prerequisites

1. **Vim 8.0+** (should be available on 42 computers)
2. **Node.js** (required for CoC.nvim)
3. **Git** (for cloning repositories)

### Step 1: Install vim-plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Step 2: Clone this repository

```bash
git clone https://github.com/malhyasa/Vim42.git
cd Vim42
```

### Step 3: Backup existing configuration (if any)

```bash
# Backup your current .vimrc
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup

# Backup your current .vim directory
[ -d ~/.vim ] && mv ~/.vim ~/.vim.backup
```

### Step 4: Install the .vimrc

```bash
cp .vimrc ~/
```

Or create it manually:
```bash
vim ~/.vimrc
# Paste the entire configuration content and save
```

### Step 5: Install Node.js (if not available)

**On 42 cluster computers (without sudo):**

```bash
# Install Node Version Manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Restart your terminal or run:
source ~/.bashrc  # or source ~/.zshrc if using zsh

# Install the latest LTS version of Node.js
nvm install --lts
nvm use --lts

# Verify installation
node --version
npm --version
```

**On personal Linux systems (with sudo):**

```bash
# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Or use your package manager
sudo apt install nodejs npm
```

**On macOS:**

```bash
brew install node
```

### Step 6: Install FZF (Fuzzy Finder)

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

When prompted:
- Enable fuzzy auto-completion: **Yes**
- Enable key bindings: **Yes**
- Update shell configuration: **Yes**

### Step 7: Install Vim plugins

Open Vim:
```bash
vim
```

Inside Vim, run:
```vim
:PlugInstall
```

Wait for all plugins to install. This may take 3-5 minutes. You'll see a split window showing the installation progress.

### Step 8: Install CoC language servers

After plugins are installed, install the language servers for your preferred languages:

```vim
:CocInstall coc-clangd coc-json coc-snippets coc-pairs
```

For additional language support:
```vim
:CocInstall coc-pyright coc-tsserver coc-html coc-css coc-go
```

**Note:** `coc-clangd` is the most important one for C/C++ development at 42.

### Step 9: Install additional tools (optional but recommended)

**On 42 cluster computers (without sudo):**

For Python linting and formatting:
```bash
pip3 install --user python-lsp-server black
```

For shell script linting (if available):
```bash
# Check if available in user space or ask your campus
which shellcheck
which shfmt
```

For Go development:
```bash
go install golang.org/x/tools/gopls@latest
go install golang.org/x/lint/golint@latest
```

**On personal systems (with sudo):**

```bash
# Ubuntu/Debian
sudo apt install shellcheck
sudo snap install shfmt

# macOS
brew install shellcheck shfmt
```

### Step 10: Install Powerline Fonts (for vim-airline)

```bash
# Clone the powerline fonts repository
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

Then configure your terminal to use a Powerline font:
- macOS Terminal: Preferences → Profiles → Font → "Meslo LG S for Powerline"
- iTerm2: Preferences → Profiles → Text → Font → "Meslo LG S for Powerline"
- Linux Terminal: Edit → Preferences → Custom font → "Meslo LG S for Powerline"

### Step 11: Restart Vim

Close and reopen Vim to ensure all settings take effect:
```bash
vim
```

You should now see the custom start screen!

---

## 🔧 Verification Checklist

To verify everything is working correctly:

1. ✅ **Start Screen**: You should see the Vim42 ASCII art welcome screen when opening Vim
2. ✅ **File Explorer**: Press `Space + ft` to toggle NERDTree on the right side
3. ✅ **Fuzzy Finder**: Press `Space + ff` to open FZF file search
4. ✅ **Syntax Highlighting**: Open a C file and check if colors are vibrant and clear
5. ✅ **Code Completion**: Type some code and verify that completion suggestions appear automatically
6. ✅ **LSP Features**: Press `K` on a function to see documentation
7. ✅ **Status Line**: Check if vim-airline is displaying at the bottom with git branch info
8. ✅ **Theme**: Background should be very dark (#0D1117) with colorful syntax

---

## 🚨 Common Issues and Solutions

### Issue: "vim-plug not found"
**Solution:** Re-run the vim-plug installation command:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Issue: CoC not working / "coc.nvim not built"
**Solution:** 
```bash
# Check Node.js version (must be 14.14 or higher)
node --version

# If Node.js is old or missing, install it using nvm (see Step 5)

# Rebuild CoC
cd ~/.vim/plugged/coc.nvim
npm install
```

Or inside Vim:
```vim
:call coc#util#install()
```

### Issue: "E117: Unknown function: coc#refresh"
**Solution:** CoC needs to be built. Follow the solution above.

### Issue: Icons not showing in NERDTree
**Solution:** Install a Nerd Font:
```bash
# Clone nerd fonts (warning: large repo)
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh Hack
cd ..
rm -rf nerd-fonts
```

Then set your terminal font to "Hack Nerd Font".

### Issue: Completion popup not showing
**Solution:** 
1. Check if CoC is running: `:CocInfo`
2. Check if language server is installed: `:CocList extensions`
3. Reinstall the language server: `:CocInstall coc-clangd`

### Issue: "command not found: clangd"
**Solution:** Install clangd:
```bash
# On 42 computers, clangd should be available
which clangd

# If not, check with your campus or compile from source
```

### Issue: Plugins not loading
**Solution:**
```vim
# In Vim, clean and reinstall
:PlugClean
:PlugInstall
```

### Issue: FZF not working
**Solution:**
```bash
# Reinstall FZF
rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Issue: GitHub Copilot not working (or don't have access)
**Solution:** Comment out or remove this line in `.vimrc`:
```vim
" Plug 'github/copilot.vim'
```

Then run `:PlugClean` in Vim.

### Issue: Norminette not found
**Solution:** Install norminette:
```bash
pip3 install --user norminette
```

---

## 🎯 Customization Tips

### Disable GitHub Copilot
If you don't have GitHub Copilot access, remove or comment out:
```vim
" Plug 'github/copilot.vim'
```

### Change the Leader Key
The leader key is set to Space. To change it, modify:
```vim
let mapleader = " "
```

### Adjust Color Scheme
The config uses Everforest with a custom dark theme. You can try other schemes:
```vim
colorscheme everforest
" Other options: nord, gruvbox, dracula, etc.
```

### Disable Smooth Scrolling
If smooth scrolling feels sluggish, comment out:
```vim
" Plug 'terryma/vim-smooth-scroll'
```

### Installing Helper Scripts (Optional)
This configuration includes custom shell commands that use scripts from the [42 Helper Scripts repository](https://github.com/Moe-Salim91156/helper_scripts).

These scripts provide useful automation for:
- `norm_dir` - Auto-format code to 42 norm
- `cleaner` - Enhanced cleanup with disk space savings
- `clean` - Clean Flatpak cache
- `push` - Quick commit and push wrapper

**To install the helper scripts:**

```bash
# Clone the helper scripts repository
git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts

# Run the automated setup
cd ~/helper_scripts
./setup.sh

# Reload your shell
source ~/.zshrc  # or source ~/.bashrc
```

The setup script will automatically add all script directories to your PATH.

**If you don't want to install the helper scripts**, you can remove these mappings from your `.vimrc`:
```vim
nnoremap <leader>nn :!norm_dir %<CR>
nnoremap <leader>zz :!cleaner ~<CR>
nnoremap <leader>za :!clean <CR>
nnoremap <leader>push :!push %<CR>
```

### Adjust CoC Extensions
Add or remove language servers based on your needs:
```vim
let g:coc_global_extensions = [
\ 'coc-clangd',    " C/C++
\ 'coc-pyright',   " Python
\ 'coc-json',      " JSON
\ 'coc-tsserver',  " JavaScript/TypeScript
\ 'coc-go',        " Go
\ ]
```

---

## 📚 Detailed Feature Documentation

### CoC.nvim Completion System

**How it works:**
- Automatically shows suggestions as you type
- Tab accepts the current suggestion and moves to the next placeholder
- Enter also accepts suggestions
- Arrow keys navigate through the completion menu
- Esc cancels the menu
- Ctrl+Space manually triggers completion

**Snippet expansion:**
- Type a snippet prefix and press Tab
- Use Tab to jump to the next placeholder
- Use Shift+Tab to jump back

**Code navigation:**
- `gd` - Jump to definition
- `gy` - Jump to type definition
- `gi` - Jump to implementation
- `gr` - Find all references
- `Ctrl+O` - Jump back to previous location

### ALE Linting

ALE runs linters asynchronously in the background without blocking your workflow.

**Supported linters:**
- C/C++: `clangd` (also used by CoC)
- Python: `pylsp` with `black` auto-formatting
- Go: `gopls`, `golint`, `govet` with `gofmt` auto-formatting
- Shell: `shellcheck` with `shfmt` auto-formatting

**Auto-fix on save:**
Files are automatically formatted when you save them (`:w`).

### Persistent Undo

Your undo history is saved between sessions in `~/.vim/undodir`.

**Benefits:**
- Close and reopen files without losing undo history
- Undo changes from yesterday or last week
- 10,000 levels of undo
- Never lose your work

**View undo tree:**
```vim
:UndotreeToggle
```

### 42 Helper Scripts Integration

This configuration integrates with the [42 Helper Scripts](https://github.com/Moe-Salim91156/helper_scripts) repository for enhanced workflow automation.

**Included key mappings:**
- `<leader>nn` - Auto-format code to 42 norm (`norm_dir`)
- `<leader>zz` - Clean home directory with disk space reporting (`cleaner`)
- `<leader>za` - Clean Flatpak cache (`clean`)
- `<leader>push` - Quick commit and push to git (`push`)

**Available helper scripts include:**
- **Git Tools**: `push`, `git_helper`, `copy_push`
- **Testing Tools**: `push_swap_tester`, `gnl_eval`, `runner`
- **Code Quality**: `check_forbidden`, `norm_dir`, `todo_finder`
- **System Utilities**: `clean`, `cleaner`

**To install:**
```bash
git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts
cd ~/helper_scripts
./setup.sh
source ~/.zshrc  # or ~/.bashrc
```

For more information, visit the [helper scripts repository](https://github.com/Moe-Salim91156/helper_scripts).

---

## 📝 CoC.nvim Configuration Details

This configuration includes extensive CoC.nvim settings for the best possible code completion experience:

### Installed CoC Extensions
- `coc-clangd` - C/C++ LSP
- `coc-json` - JSON support
- `coc-tsserver` - JavaScript/TypeScript
- `coc-pyright` - Python
- `coc-html` - HTML
- `coc-css` - CSS
- `coc-prettier` - Code formatting
- `coc-pairs` - Auto-closing brackets
- `coc-snippets` - Snippet support
- `coc-go` - Go language support

### CoC Features Enabled
- Signature help while typing
- Automatic symbol highlighting under cursor
- Diagnostic navigation
- Code actions and quick fixes
- Format on save for selected regions
- Snippet expansion with Tab navigation

---

## 🧰 Recommended Tools

**Essential:**
- [`norminette`](https://github.com/42School/norminette) - 42 coding style checker
- `gcc` or `clang` - C compiler
- `clangd` - C/C++ language server
- `node` and `npm` - Required for CoC.nvim

**Highly Recommended:**
- [**42 Helper Scripts**](https://github.com/Moe-Salim91156/helper_scripts) - Automation scripts for 42 workflow
  - Includes: `norm_dir`, `cleaner`, `clean`, `push`, and more
  - Quick setup: `git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts && cd ~/helper_scripts && ./setup.sh`

**Optional but useful:**
- `ctags` - Better tag navigation
- `ripgrep` or `ag` - Faster FZF searching
- `python-lsp-server` - Python LSP
- `black` - Python formatter
- `shellcheck` - Shell script linter
- `shfmt` - Shell script formatter
- `gopls` - Go language server

---

## 🤝 Contributing

Contributions are welcome! If you have improvements or bug fixes:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

### Areas for Contribution
- Additional language support
- Better key mappings
- Performance optimizations
- Documentation improvements
- Bug fixes

---

## 📜 Changelog

### Version 2.0 (Latest)
- ✨ Added CoC.nvim with full LSP support
- ✨ Replaced Syntastic with ALE for async linting
- ✨ Added vim-go with enhanced syntax highlighting
- ✨ Implemented Everforest ultra-dark theme
- ✨ Added persistent undo with 10,000 levels
- ✨ Enhanced Go syntax highlighting with vibrant colors
- ✨ Added UndoTree and Tagbar plugins
- ✨ Improved completion menu styling
- ✨ Added snippet support with CoC
- ✨ Better key mappings for code navigation
- 🔧 Fixed completion popup behavior
- 🔧 Optimized ALE to prevent conflicts with vim-go
- 📚 Comprehensive installation guide for non-sudo environments

### Version 1.0
- Initial release with basic plugins
- Syntastic for linting
- Nord theme
- Basic file navigation and fuzzy finding

---

## ⚠️ Disclaimers

- This configuration was tailored by students and is not an official 42 configuration
- This configuration is a work in progress and may not be fully optimized
- Some features (like GitHub Copilot) require additional setup or subscriptions
- Contributions and suggestions are welcome!

---

## 📞 Getting Help

**If you encounter issues:**
1. Check the "Common Issues" section above
2. Run `:checkhealth` in Vim/Neovim to diagnose problems
3. Check CoC status with `:CocInfo`
4. View CoC logs with `:CocOpenLog`
5. Ask on the 42 Slack or create an issue on GitHub

**Resources:**
- [Vim Documentation](https://www.vim.org/docs.php)
- [CoC.nvim Documentation](https://github.com/neoclide/coc.nvim)
- [ALE Documentation](https://github.com/dense-analysis/ale)
- [vim-plug Documentation](https://github.com/junegunn/vim-plug)
- [42 Coding Style](https://github.com/42School/norminette)

---

## 📄 License

This configuration is provided as-is for educational purposes at École 42 and beyond. Feel free to use, modify, and share!

---

Made with ❤️ by 42 students, for 42 students

**@ 42Amman**
