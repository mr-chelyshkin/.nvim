# Nvim configuration
This configuration based on [NvChad](https://nvchad.com)

# Install
```shell
rm -rf ~/.local/share/
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim/lua/custom

cd ~/.config/nvim/lua/ && git clone git@github.com:mr-chelyshkin/.nvim.git
mv .nvim custom

# run nvim after for sync modules.
```

# Helpers
| Hotkey / CMD       | Description                              |
|--------------------|------------------------------------------|
| [SPC+T+H]          | select theme                             |
| [CTRL+N]           | open tree                                |
| [SPC+F+F]          | find files                               |
| [SPC+C+H]          | help for default commands                |
| [SPC+R+N]          | switch line numbers: absolute / relative |
| [TAB]              | switch another open tab                  |
| [SPC + X]          | close tab                                |
| [SPC + H / V]      | open terminal (horizontal / vertical)    |
| [:vsp]             | vertical split window                    |
| [:Lazy sync]       | reinstall all plugins                    |
| [:MasonInstallAll] | reinstall all plugins                    |
| [:TS...]           | highlight commands                       |

Most of the commands are related to installed plugins for Neovim. 
For more information, refer to the plugin descriptions.

