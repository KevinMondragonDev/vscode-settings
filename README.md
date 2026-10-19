# VS Code settings

Mi configuración de VS Code (macOS): tema "Outatime" sobre GitHub Dark, JetBrainsMono Nerd Font, Prettier/ESLint/Ruff y funciones de IA desactivadas.

## Contenido

- `settings.json`: ajustes de usuario
- `extensions.txt`: extensiones instaladas (`code --list-extensions`)
- `install.sh`: copia los ajustes (respaldando los actuales) e instala las extensiones

## Instalar

```bash
git clone https://github.com/KevinMondragonDev/vscode-settings.git
cd vscode-settings
./install.sh
```

## Actualizar

```bash
cp ~/Library/Application\ Support/Code/User/settings.json .
code --list-extensions > extensions.txt
git commit -am "Actualizar configuración" && git push
```
