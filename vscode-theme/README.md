# My Custom VS Code Theme
## Install the theme locally (no publishing)
### Install vsce (one-time)
```
npm install -g @vscode/vsce
```

###2️⃣ Package the theme
From ~/dotfiles/vscode-theme:
```
vsce package
```
This creates:
`my-custom-theme-0.0.1.vsix`

###3️⃣ Install the .vsix
```
code --install-extension my-custom-theme-0.0.1.vsix
```

✅ Now it’s a real installed extension.

###4️⃣ Update later
After changes:
```
vsce package
code --install-extension my-custom-theme-0.0.1.vsix --force
```

## Activate the theme
In VS Code:
1. `Ctrl+Shift+P`
1. Preferences: Color Theme
1. Select My Custom Theme

🎉 You’re now using your own theme.
