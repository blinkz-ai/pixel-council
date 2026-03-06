# Pixel Council

Summon the design wisdom of Apple, Google, Stripe, IBM, and Microsoft. A Claude Code skill that produces production-grade UIs informed by the actual design systems of the world's top tech companies.

## The Problem

AI-generated UIs look AI-generated. Excessive gradients, inconsistent spacing, random colors, missing interaction states, and generic layouts that scream "vibe-coded."

## The Solution

Pixel Council encodes the real design principles, token systems, spacing scales, typography rules, color strategies, and per-component specifications from world-class design teams into a Claude Code skill. When triggered, it guides Claude to build UI the way Apple, Google, and Stripe actually build theirs.

- **Semantic color tokens** instead of random hex values
- **Consistent spacing** from a 4px/8px grid system
- **Proper typography hierarchy** with defined scales
- **All interaction states** (hover, focus, active, disabled, loading, error)
- **Dark mode** from the start
- **Accessibility standards** (WCAG AA contrast, touch targets, keyboard nav)
- **Responsive layouts** that work across screen sizes

## Design Systems Included

| Company | Source | Coverage |
|---------|--------|----------|
| Google | [Material Design 3](https://github.com/material-components/material-web) | 22 component specs with complete HTML+CSS, 34 color roles (light+dark hex), typography scale, elevation box-shadows, state layers, motion easing |
| Apple | [Human Interface Guidelines](https://github.com/6639835/apple-hig) | 13 component specs with complete HTML+CSS, 15 system colors (light+dark hex), SF Pro font stack, Liquid Glass CSS, shadow system, focus ring |
| Blended | Best-of-both | 12 component specs with complete HTML+CSS combining Google's tokens with Apple's refinement |

*More companies coming: Stripe, IBM, Microsoft, Linear, Vercel, Shopify...*

## Installation

```bash
git clone https://github.com/shubhamshrivastava/pixel-council.git
cd pixel-council
./install.sh
```

Or manually:

```bash
mkdir -p ~/.agents/skills/pixel-council
cp skill/SKILL.md ~/.agents/skills/pixel-council/
cp -r references ~/.agents/skills/pixel-council/
mkdir -p ~/.claude/skills
ln -sf ../../.agents/skills/pixel-council ~/.claude/skills/pixel-council
```

Restart Claude Code. Type `/skills` to verify `pixel-council` is listed.

## Usage

```
> /pixel-council Build a settings page with profile info and notification toggles

> /pixel-council Create a card component, Apple style

> /pixel-council Design a dashboard with sidebar, Google Material style
```

It also auto-triggers when you ask Claude to build any UI:

```
> build a login screen
> create a pricing page
> make this look more polished
> design a dashboard with sidebar navigation
```

### Choosing a Design System

| What you say | What happens |
|---|---|
| Just describe the UI | Blended (best of all companies) |
| "Google style" / "Material style" | Pure Google Material Design 3 specs |
| "Apple style" / "iOS style" | Pure Apple HIG specs |
| "Combine Google and Apple" | Reads both, synthesizes |

## What's Inside (50 files, 15,000+ lines)

Every component file is a **complete implementation guide** containing: Quick Reference table, Design Tokens (resolved hex, light+dark), HTML Structure (semantic, ARIA), Complete CSS (all states, transitions, dark mode), Animation keyframes, Accessibility notes, Responsive behavior, and Do/Don't tables.

```
references/
├── google/                    # 22 component files + design system overview
│   ├── overview.md            # Full M3 tokens: 34 color roles, elevation shadows, typescale, motion easing
│   └── components/
│       ├── button.md          # 5 variants, complete CSS with ripple keyframes, state layers
│       ├── text-field.md      # Filled/outlined, floating label animation CSS
│       ├── card.md            # Elevated/filled/outlined, hover elevation, drag state
│       ├── dialog.md, tabs.md, navigation-bar.md, navigation-drawer.md
│       ├── switch.md, chip.md, list.md, menu.md, fab.md
│       ├── checkbox.md, radio.md, progress.md, slider.md
│       └── icon-button.md, select.md, snackbar.md, divider.md, badge.md, tooltip.md
│
├── apple/                     # 13 component files + design system overview
│   ├── overview.md            # System colors, Liquid Glass CSS, SF Pro stack, shadow system
│   └── components/
│       ├── button.md          # 4 styles, pressed opacity, continuous corners, focus ring
│       ├── text-field.md, card.md, tab-bar.md, sidebar.md, toolbar.md
│       ├── list.md, toggle.md, sheet.md, segmented-control.md
│       └── progress-indicator.md, context-menu.md, alert.md
│
└── blended/                   # 12 component files + universal design principles
    ├── design-principles.md   # Resolved spacing scale, easing functions, dark mode tokens
    └── components/
        ├── button.md          # 5 emphasis levels, loading spinner, all states
        ├── text-field.md, card.md, navigation.md, dialog.md
        ├── switch.md, list.md, chip.md, progress.md, toast.md
        └── form-controls.md, misc.md
```

## Adding More Design Systems

Adding a new company is just a new folder. No skill code changes needed.

1. Create `references/{company}/overview.md` with their design foundations
2. Create `references/{company}/components/` with per-component spec files
3. Submit a PR

## Contributing

Contributions welcome:

- **New design system references** (Stripe, IBM, Microsoft, Linear, Vercel, Shopify)
- **More component specs** for existing companies
- **Framework-specific examples** and patterns
- **Figma resource links** and integration

## License

MIT
