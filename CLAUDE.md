# Pixel Council

A Claude Code skill that produces production-grade UI by reading real design system specifications from Google Material Design 3 and Apple HIG.

## Project Structure

```
pixel-council/
├── CLAUDE.md                              # This file
├── README.md                              # Installation & usage docs
├── install.sh                             # One-command installer
├── skill/
│   └── SKILL.md                           # The skill prompt (installed to ~/.agents/skills/)
└── references/                            # 50 self-contained component reference files
    ├── google/                            # Google Material Design 3
    │   ├── overview.md                    # Full M3 token system (34 colors light+dark, typography, elevation, motion)
    │   └── components/                    # 22 per-component specs with complete HTML+CSS
    ├── apple/                             # Apple HIG
    │   ├── overview.md                    # System colors, SF Pro, Liquid Glass, shadows, focus ring
    │   └── components/                    # 13 per-component specs with complete HTML+CSS
    └── blended/                           # Best-of-both defaults (DEFAULT when no preference stated)
        ├── design-principles.md           # Spacing, breakpoints, easing, accessibility
        └── components/                    # 12 blended specs with complete HTML+CSS
```

## How It Works

1. **Skill triggers** when user asks to build UI (auto-trigger or `/pixel-council`)
2. **SKILL.md routes** to the correct design system (Google, Apple, or Blended)
3. **Agent reads the component reference file** which contains EVERYTHING: design tokens with resolved hex values, semantic HTML, complete CSS with all states (hover, focus, active, disabled, loading), dark mode, animations, accessibility, responsive behavior
4. **Agent translates** the reference HTML+CSS into the project's framework (React, Tailwind, Vue, etc.)

Each reference file is **self-contained** — the agent reads ONE file and gets everything needed. No guessing.

## Reference File Depth (9-10/10)

Every component file includes:
- Quick Reference table (scannable dimensions + colors)
- Design Tokens (CSS custom properties with resolved hex, light + dark)
- HTML Structure (semantic markup with ARIA for every variant)
- Complete CSS (all states, transitions, cubic-bezier easing, dark mode via @media + .dark)
- States Reference table (exact values per state per property)
- Animation & Motion (keyframes, prefers-reduced-motion)
- Accessibility (ARIA, keyboard, focus management, touch targets)
- Responsive behavior and Do/Don't tables

## Adding New Companies

Just a new folder. No skill code changes needed.
1. Create `references/{company}/overview.md`
2. Create `references/{company}/components/` with per-component files

## Development

After modifying reference files or SKILL.md, re-install:
```bash
./install.sh
```
This copies everything to `~/.agents/skills/pixel-council/` where Claude Code loads it from.
