#!/bin/bash

# Script per configurare un nuovo Mac

echo "Inizio configurazione..."

# 1. Installa Homebrew se non è presente
if ! command -v brew &> /dev/null; then
    echo "Homebrew non trovato. Installazione in corso..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew è già installato."
fi

# 2. Installa tutti i pacchetti dal Brewfile
echo "Installazione dei pacchetti dal Brewfile..."
brew bundle install --file ~/dotfiles/Brewfile

# 3. Crea i collegamenti simbolici
# Lista dei file di cui fare il symlink
# Formato: "nome_file_nel_repo percorso_symlink_nella_home"
files_to_symlink=(
    "gitconfig .gitconfig"
    "zshrc .zshrc"
    # Aggiungi altre coppie qui
)

echo "Creazione dei collegamenti simbolici..."
for item in "${files_to_symlink[@]}"; do
    # Dividi la stringa in sorgente e destinazione
    set -- $item
    source_file="$1"
    symlink_target="$2"
    
    source_path="$HOME/dotfiles/$source_file"
    target_path="$HOME/$symlink_target"

    # Se esiste già un file, ne fa un backup
    if [ -f "$target_path" ] && [ ! -L "$target_path" ]; then
        echo "Backup di $target_path in $target_path.bak"
        mv "$target_path" "$target_path.bak"
    fi

    # Crea il symlink
    ln -sf "$source_path" "$target_path"
    echo "Creato symlink per $source_file"
done

echo "Configurazione completata! Riavvia il terminale per applicare le modifiche."