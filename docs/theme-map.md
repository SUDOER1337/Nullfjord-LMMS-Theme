# Theme Map

The stylesheet source lives under `src/styles/` and is assembled into `Nullfjord/style.css`.

Sections:

- `00-base.qss`: shared text, menus, editors, base widget colors
- `10-controls.qss`: scrollbars, buttons, sliders, transport-adjacent controls
- `20-workspace.qss`: effect dialogs, toolbars, sidebars, tracks, clips, mixer
- `30-plugins.qss`: subwindows, instrument/plugin-specific knob and graph styling
- `40-palette.qss`: LMMS palette values and global font defaults

Developer workflow:

1. Edit the relevant file in `src/styles/`.
2. Run `tools/build-style.sh`.
3. Run `tools/check-resources.sh`.
4. Smoke-test the theme in LMMS.
