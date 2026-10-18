# Homebrew Tap für Saytrue

Offizielles Homebrew Tap für [Saytrue](https://saytrue.de/): Klingt ein Satz härter als gemeint, sprich oder tippe ihn ein, und Saytrue schlägt eine wärmere Fassung vor. Auf Wunsch bleibt alles auf deinem Mac. Homebrew liefert die Free-Ausgabe (Universal, Apple Silicon und Intel).

## Installation

```bash
brew install --cask fidpa/saytrue/saytrue
```

## Updates

```bash
brew upgrade --cask saytrue
```

## Deinstallation

```bash
# Nur App entfernen (Aufnahmen bleiben erhalten)
brew uninstall --cask saytrue

# Vollständig (inkl. Aufnahmen und Einstellungen)
brew uninstall --zap --cask saytrue
```

## Troubleshooting

### Mikrofon-Berechtigung

Beim ersten Start muss die Mikrofon-Berechtigung erteilt werden:

1. Systemeinstellungen → Datenschutz & Sicherheit → Mikrofon
2. Saytrue aktivieren

### Ollama (optional)

Saytrue braucht ein Sprachmodell: Ollama auf diesem Mac (`brew install ollama`), Apple Intelligence (ab macOS 26) oder einen Cloud-Anbieter. Das Onboarding der App führt durch die Wahl; Anleitung: [saytrue.de/einrichtung](https://saytrue.de/einrichtung/).

## Support

- [Website und Einrichtung](https://saytrue.de/)
- [Releases](https://github.com/fidpa/saytrue-releases)
- Kontakt: marc@saytrue.de

## Lizenz

Source-Available, alle Rechte vorbehalten. Details im [Saytrue-Releases-Repository](https://github.com/fidpa/saytrue-releases).
