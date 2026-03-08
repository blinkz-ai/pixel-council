---
name: segmented-button
description: M3 single-select and multi-select segmented button groups
metadata:
  tags: segmented button, toggle group, button group, selector, segment
---

# Segmented Button -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Height | 40px |
| Min segment width | 48px |
| Outer corner radius | 9999px (full pill) |
| Border | 1px solid #79747E (light) / #938F99 (dark) |
| Font | Roboto, 14px/20px, weight 500, spacing 0.1px |
| Icon size | 18px |
| Check icon size | 18px |
| Icon-label gap | 8px |
| Segments | 2-5 |
| Selected bg (light) | #E8DEF8 |
| Selected bg (dark) | #4A4458 |

## Design Tokens

```css
:root {
  --md-seg-btn-bg: transparent;
  --md-seg-btn-selected-bg: #E8DEF8;
  --md-seg-btn-text: #1D1B20;
  --md-seg-btn-selected-text: #1D192B;
  --md-seg-btn-border: #79747E;
  --md-seg-btn-icon: #1D1B20;
  --md-seg-btn-selected-icon: #1D192B;
  --md-seg-btn-hover: rgba(29, 27, 32, 0.08);
  --md-seg-btn-focus: rgba(29, 27, 32, 0.10);
  --md-seg-btn-pressed: rgba(29, 27, 32, 0.10);
  --md-seg-btn-radius: 9999px;
  --md-seg-btn-transition: all 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-seg-btn-bg: transparent;
    --md-seg-btn-selected-bg: #4A4458;
    --md-seg-btn-text: #E6E0E9;
    --md-seg-btn-selected-text: #E8DEF8;
    --md-seg-btn-border: #938F99;
    --md-seg-btn-icon: #E6E0E9;
    --md-seg-btn-selected-icon: #E8DEF8;
    --md-seg-btn-hover: rgba(230, 224, 233, 0.08);
    --md-seg-btn-focus: rgba(230, 224, 233, 0.10);
    --md-seg-btn-pressed: rgba(230, 224, 233, 0.10);
  }
}

.dark {
  --md-seg-btn-bg: transparent;
  --md-seg-btn-selected-bg: #4A4458;
  --md-seg-btn-text: #E6E0E9;
  --md-seg-btn-selected-text: #E8DEF8;
  --md-seg-btn-border: #938F99;
  --md-seg-btn-icon: #E6E0E9;
  --md-seg-btn-selected-icon: #E8DEF8;
  --md-seg-btn-hover: rgba(230, 224, 233, 0.08);
  --md-seg-btn-focus: rgba(230, 224, 233, 0.10);
  --md-seg-btn-pressed: rgba(230, 224, 233, 0.10);
}
```

## Variants

| Variant | Behavior | ARIA Pattern |
|---------|----------|--------------|
| Single-select | Radio behavior -- one selected at a time | `role="radiogroup"` + `role="radio"` |
| Multi-select | Checkbox behavior -- zero or more selected | `role="group"` + `aria-pressed` |
| Icon only | Each segment shows only an icon (18px) | Same as above + `aria-label` per segment |
| Label only | Each segment shows only a text label | Same as above |
| Icon + label | Icon left, label right, 8px gap | Same as above |

## HTML Structure

```html
<!-- Single-select (radio behavior) -->
<div class="md-seg-btn" role="radiogroup" aria-label="View options">
  <button class="md-seg-btn__segment md-seg-btn__segment--selected"
          role="radio" aria-checked="true" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__label">Day</span>
  </button>
  <button class="md-seg-btn__segment"
          role="radio" aria-checked="false" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__label">Week</span>
  </button>
  <button class="md-seg-btn__segment"
          role="radio" aria-checked="false" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__label">Month</span>
  </button>
</div>

<!-- Multi-select (checkbox behavior) -->
<div class="md-seg-btn" role="group" aria-label="Text formatting">
  <button class="md-seg-btn__segment md-seg-btn__segment--selected"
          aria-pressed="true" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__icon" aria-hidden="true">
      <svg width="18" height="18"><!-- Bold icon --></svg>
    </span>
    <span class="md-seg-btn__label">Bold</span>
  </button>
  <button class="md-seg-btn__segment"
          aria-pressed="false" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__icon" aria-hidden="true">
      <svg width="18" height="18"><!-- Italic icon --></svg>
    </span>
    <span class="md-seg-btn__label">Italic</span>
  </button>
</div>

<!-- Icon only -->
<div class="md-seg-btn md-seg-btn--icon-only" role="radiogroup" aria-label="Density">
  <button class="md-seg-btn__segment md-seg-btn__segment--selected"
          role="radio" aria-checked="true" aria-label="Compact" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__icon" aria-hidden="true">
      <svg width="18" height="18"><!-- icon --></svg>
    </span>
  </button>
  <button class="md-seg-btn__segment"
          role="radio" aria-checked="false" aria-label="Default" type="button">
    <span class="md-seg-btn__ripple"></span>
    <span class="md-seg-btn__check" aria-hidden="true">
      <svg width="18" height="18" viewBox="0 0 18 18">
        <path d="M6.75 12.15L3.6 9l-1.05 1.05L6.75 14.25l9-9-1.05-1.05z"/>
      </svg>
    </span>
    <span class="md-seg-btn__icon" aria-hidden="true">
      <svg width="18" height="18"><!-- icon --></svg>
    </span>
  </button>
</div>

<!-- Disabled segment -->
<button class="md-seg-btn__segment" role="radio" aria-checked="false"
        type="button" disabled aria-disabled="true">
  <span class="md-seg-btn__ripple"></span>
  <span class="md-seg-btn__label">Disabled</span>
</button>
```

## Complete CSS

```css
.md-seg-btn {
  display: inline-flex;
  align-items: center;
  height: 40px;
  border: 1px solid var(--md-seg-btn-border);
  border-radius: var(--md-seg-btn-radius);
  overflow: hidden;
  position: relative;
}

.md-seg-btn__segment {
  position: relative;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
  flex: 1;
  height: 100%;
  min-width: 48px;
  padding: 0 16px;
  border: none;
  border-right: 1px solid var(--md-seg-btn-border);
  background: var(--md-seg-btn-bg);
  color: var(--md-seg-btn-text);
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  letter-spacing: 0.1px;
  cursor: pointer;
  overflow: hidden;
  transition: var(--md-seg-btn-transition);
  -webkit-tap-highlight-color: transparent;
  user-select: none;
}

/* Remove right border on last segment */
.md-seg-btn__segment:last-child {
  border-right: none;
}

/* Ripple container */
.md-seg-btn__ripple {
  position: absolute;
  inset: 0;
  pointer-events: none;
  overflow: hidden;
}

/* Icon */
.md-seg-btn__icon {
  width: 18px;
  height: 18px;
  color: var(--md-seg-btn-icon);
  flex-shrink: 0;
}

.md-seg-btn__segment--selected .md-seg-btn__icon {
  color: var(--md-seg-btn-selected-icon);
}

/* Check icon (hidden when not selected, animates in) */
.md-seg-btn__check {
  width: 0;
  height: 18px;
  overflow: hidden;
  display: inline-flex;
  align-items: center;
  color: var(--md-seg-btn-selected-icon);
  flex-shrink: 0;
  transition: width 150ms cubic-bezier(0.05, 0.7, 0.1, 1);
}

.md-seg-btn__check svg {
  width: 18px;
  height: 18px;
  fill: currentColor;
  flex-shrink: 0;
}

.md-seg-btn__segment--selected .md-seg-btn__check {
  width: 18px;
}

/* Label */
.md-seg-btn__label {
  white-space: nowrap;
}

/* -- Selected state -- */
.md-seg-btn__segment--selected {
  background: var(--md-seg-btn-selected-bg);
  color: var(--md-seg-btn-selected-text);
}

/* -- Hover -- */
.md-seg-btn__segment:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-seg-btn-hover);
}

/* -- Focus -- */
.md-seg-btn__segment:focus-visible {
  outline: none;
  z-index: 1;
}

.md-seg-btn__segment:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-seg-btn-focus);
}

/* Focus ring on the whole group */
.md-seg-btn:focus-within {
  outline: 2px solid #6750A4;
  outline-offset: 2px;
}

/* -- Active / pressed -- */
.md-seg-btn__segment:active::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-seg-btn-pressed);
}

/* -- Disabled -- */
.md-seg-btn__segment:disabled,
.md-seg-btn__segment[aria-disabled="true"] {
  background: rgba(29, 27, 32, 0.12);
  color: rgba(29, 27, 32, 0.38);
  cursor: not-allowed;
  pointer-events: none;
}

.md-seg-btn__segment:disabled .md-seg-btn__icon,
.md-seg-btn__segment[aria-disabled="true"] .md-seg-btn__icon {
  opacity: 0.38;
}

/* Unselected disabled: transparent bg */
.md-seg-btn__segment:disabled:not(.md-seg-btn__segment--selected) {
  background: transparent;
}

/* -- Dark mode disabled -- */
@media (prefers-color-scheme: dark) {
  .md-seg-btn__segment:disabled,
  .md-seg-btn__segment[aria-disabled="true"] {
    background: rgba(230, 224, 233, 0.12);
    color: rgba(230, 224, 233, 0.38);
  }
  .md-seg-btn__segment:disabled:not(.md-seg-btn__segment--selected) {
    background: transparent;
  }
  .md-seg-btn:focus-within {
    outline-color: #D0BCFF;
  }
}

.dark .md-seg-btn__segment:disabled {
  background: rgba(230, 224, 233, 0.12);
  color: rgba(230, 224, 233, 0.38);
}
.dark .md-seg-btn__segment:disabled:not(.md-seg-btn__segment--selected) {
  background: transparent;
}
.dark .md-seg-btn:focus-within {
  outline-color: #D0BCFF;
}

/* -- Icon only variant -- */
.md-seg-btn--icon-only .md-seg-btn__segment {
  padding: 0 12px;
}
```

## States Reference

| State | Background | Text Color | Border | Overlay | Cursor |
|-------|-----------|------------|--------|---------|--------|
| Unselected | transparent | #1D1B20 | #79747E | none | pointer |
| Unselected hover | transparent | #1D1B20 | #79747E | 0.08 | pointer |
| Unselected focus | transparent | #1D1B20 | #79747E | 0.10 | pointer |
| Unselected pressed | transparent | #1D1B20 | #79747E | 0.10 | pointer |
| Selected | #E8DEF8 | #1D192B | #79747E | none | pointer |
| Selected hover | #E8DEF8 | #1D192B | #79747E | 0.08 | pointer |
| Selected focus | #E8DEF8 | #1D192B | #79747E | 0.10 | pointer |
| Selected pressed | #E8DEF8 | #1D192B | #79747E | 0.10 | pointer |
| Disabled | 12% #1D1B20 | 38% #1D1B20 | #79747E | -- | not-allowed |

## Animation & Motion

```css
/* Check icon reveal on selection */
.md-seg-btn__check {
  transition: width 150ms cubic-bezier(0.05, 0.7, 0.1, 1);
}

/* Background color transition */
.md-seg-btn__segment {
  transition: background-color 200ms cubic-bezier(0.2, 0, 0, 1),
              color 200ms cubic-bezier(0.2, 0, 0, 1);
}

/* Ripple */
@keyframes md-seg-ripple {
  from { transform: scale(0); opacity: 0.12; }
  to { transform: scale(2.5); opacity: 0; }
}
.md-seg-btn__ripple::after {
  content: '';
  position: absolute;
  width: 100%;
  padding-top: 100%;
  border-radius: 50%;
  background: currentColor;
  transform: scale(0);
  opacity: 0;
}
.md-seg-btn__segment:active .md-seg-btn__ripple::after {
  animation: md-seg-ripple 300ms cubic-bezier(0.2, 0, 0, 1) forwards;
}

@media (prefers-reduced-motion: reduce) {
  .md-seg-btn__check,
  .md-seg-btn__segment,
  .md-seg-btn__ripple::after {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA (single-select)**: Container `role="radiogroup"` with `aria-label`. Each segment `role="radio"` with `aria-checked="true"|"false"`. Only one `aria-checked="true"` at a time.
- **ARIA (multi-select)**: Container `role="group"` with `aria-label`. Each segment uses `aria-pressed="true"|"false"`.
- **Keyboard (single-select)**: Arrow Left/Right to move selection between segments. Tab moves focus to/from the group.
- **Keyboard (multi-select)**: Tab between segments. Space to toggle `aria-pressed`.
- **Focus ring**: 2px solid primary outline on the group container via `:focus-within`, 2px offset
- **Touch target**: 40px height, min 48px width per segment (meets WCAG 2.5.8)
- **Disabled**: `disabled` attribute + `aria-disabled="true"`, `pointer-events: none`
- **Icon only**: Each segment requires `aria-label` describing the action

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Full-width via `.md-seg-btn--full-width { width: 100% }`, segments flex equally |
| 600-1024px | Auto width, inline placement |
| > 1024px | Auto width, inline placement |

## Do / Don't

| Do | Don't |
|----|-------|
| Use 2-5 segments | Use more than 5 segments |
| Keep labels to 1-2 words | Use long multi-word labels |
| Use single-select for mutually exclusive options | Mix radio and checkbox behavior in one group |
| Show check icon on selected segments | Rely only on color to indicate selection |
| Use equal-width segments | Make segments wildly different widths |
| Place at a consistent location across views | Nest segmented buttons inside other segmented buttons |
