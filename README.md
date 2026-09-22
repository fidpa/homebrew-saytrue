# Homebrew Tap für Saytrue

Offizielles Homebrew Tap für [Saytrue](https://github.com/fidpa/saytrue-releases): Sprache zu Text mit lokaler Analyse und Umformulierung.

> Der Cask wird beim ersten Release befüllt; bis dahin schlägt die Installation fehl.

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

Für lokale Analysen: `brew install ollama`, danach führt das Onboarding der App durch die Modellwahl.

## Support

- [Dokumentation und Releases](https://github.com/fidpa/saytrue-releases)

## Lizenz

Source-Available, alle Rechte vorbehalten. Details im [Saytrue-Releases-Repository](https://github.com/fidpa/saytrue-releases).
