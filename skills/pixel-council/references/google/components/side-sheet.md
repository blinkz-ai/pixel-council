---
name: side-sheet
description: M3 standard and modal side sheets for supplementary content
metadata:
  tags: side sheet, side panel, detail panel, drawer, supplementary
---

# Side Sheet -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Width | 256px (standard), up to 360px (max) |
| Height | 100% viewport |
| Corner radius (modal) | 16px (top-left, bottom-left when right-aligned) |
| Corner radius (standard) | 0 |
| Background (light) | #FEF7FF |
| Background (dark) | #141218 |
| Scrim (modal) | rgba(0,0,0,0.32) |
| Divider (standard, light) | 1px #CAC4D0 |
| Divider (standard, dark) | 1px #49454F |
| Header height | 64px |
| Content padding | 24px |
| Title font | Roboto, 16px/24px, weight 500 |
| Body font | Roboto, 14px/20px, weight 400 |
| Close icon size | 24px |
| Elevation (modal) | Level 1 |

## Design Tokens

```css
:root {
  --md-side-sheet-bg: #FEF7FF;
  --md-side-sheet-text: #1D1B20;
  --md-side-sheet-body-text: #49454F;
  --md-side-sheet-icon: #49454F;
  --md-side-sheet-divider: #CAC4D0;
  --md-side-sheet-scrim: rgba(0, 0, 0, 0.32);
  --md-side-sheet-shadow: -1px 0 3px rgba(0,0,0,0.3), -4px 0 8px 3px rgba(0,0,0,0.15);
  --md-side-sheet-radius: 16px;
  --md-side-sheet-width: 256px;
  --md-side-sheet-width-max: 360px;
  --md-side-sheet-transition: all 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-side-sheet-bg: #141218;
    --md-side-sheet-text: #E6E0E9;
    --md-side-sheet-body-text: #CAC4D0;
    --md-side-sheet-icon: #CAC4D0;
    --md-side-sheet-divider: #49454F;
  }
}

.dark {
  --md-side-sheet-bg: #141218;
  --md-side-sheet-text: #E6E0E9;
  --md-side-sheet-body-text: #CAC4D0;
  --md-side-sheet-icon: #CAC4D0;
  --md-side-sheet-divider: #49454F;
}
```

## Variants

| Variant | Scrim | Content Layout | Border | Corner Radius | Use Case |
|---------|-------|----------------|--------|---------------|----------|
| Standard (coexisting) | none | pushes main content | 1px left divider | 0 | persistent detail or filter panel |
| Modal | rgba(0,0,0,0.32) | overlays content | none (shadow instead) | 16px inner edge | temporary focused task |

## HTML Structure

```html
<!-- Standard (coexisting) side sheet -->
<div class="md-layout">
  <main class="md-layout__main">
    <!-- main content, width adjusts when sheet opens -->
  </main>
  <aside class="md-side-sheet md-side-sheet--standard" role="complementary"
    aria-label="Detail panel">
    <header class="md-side-sheet__header">
      <h2 class="md-side-sheet__title">Details</h2>
      <button class="md-side-sheet__close" aria-label="Close detail panel" type="button">
        <span aria-hidden="true"><!-- close svg --></span>
      </button>
    </header>
    <div class="md-side-sheet__content">
      <!-- scrollable content -->
    </div>
  </aside>
</div>

<!-- Modal side sheet -->
<div class="md-side-sheet-scrim" aria-hidden="true"></div>
<aside class="md-side-sheet md-side-sheet--modal" role="dialog"
  aria-modal="true" aria-labelledby="side-sheet-title">
  <header class="md-side-sheet__header">
    <h2 class="md-side-sheet__title" id="side-sheet-title">Filters</h2>
    <button class="md-side-sheet__close" aria-label="Close filters" type="button">
      <span aria-hidden="true"><!-- close svg --></span>
    </button>
  </header>
  <div class="md-side-sheet__content">
    <!-- scrollable content -->
  </div>
  <footer class="md-side-sheet__actions">
    <button class="md-side-sheet__action" type="button">Reset</button>
    <button class="md-side-sheet__action md-side-sheet__action--confirm" type="button">Apply</button>
  </footer>
</aside>

<!-- Side sheet with sections -->
<aside class="md-side-sheet md-side-sheet--standard" role="complementary"
  aria-label="Properties">
  <header class="md-side-sheet__header">
    <h2 class="md-side-sheet__title">Properties</h2>
    <button class="md-side-sheet__close" aria-label="Close properties" type="button">
      <span aria-hidden="true"><!-- close svg --></span>
    </button>
  </header>
  <div class="md-side-sheet__content">
    <section class="md-side-sheet__section">
      <h3 class="md-side-sheet__section-title">General</h3>
      <!-- section content -->
    </section>
    <hr class="md-side-sheet__divider" />
    <section class="md-side-sheet__section">
      <h3 class="md-side-sheet__section-title">Advanced</h3>
      <!-- section content -->
    </section>
  </div>
</aside>
```

## Complete CSS

```css
/* Scrim (modal only) */
.md-side-sheet-scrim {
  position: fixed;
  inset: 0;
  background: var(--md-side-sheet-scrim);
  z-index: 999;
  opacity: 0;
  pointer-events: none;
  transition: opacity 200ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}
.md-side-sheet-scrim--open {
  opacity: 1;
  pointer-events: auto;
}

/* Sheet container */
.md-side-sheet {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  width: var(--md-side-sheet-width);
  max-width: var(--md-side-sheet-width-max);
  height: 100%;
  background: var(--md-side-sheet-bg);
  z-index: 1000;
  display: flex;
  flex-direction: column;
  transform: translateX(100%);
  transition: transform 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
  overflow: hidden;
}
.md-side-sheet--open {
  transform: translateX(0);
}

/* Standard variant */
.md-side-sheet--standard {
  position: relative;
  z-index: auto;
  border-left: 1px solid var(--md-side-sheet-divider);
  border-radius: 0;
  box-shadow: none;
  flex-shrink: 0;
}
.md-side-sheet--standard.md-side-sheet--open {
  transform: translateX(0);
}

/* Modal variant */
.md-side-sheet--modal {
  border-radius: var(--md-side-sheet-radius) 0 0 var(--md-side-sheet-radius);
  box-shadow: var(--md-side-sheet-shadow);
  border: none;
}

/* Header */
.md-side-sheet__header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 12px 16px 12px 24px;
  height: 64px;
  flex-shrink: 0;
}

/* Title */
.md-side-sheet__title {
  margin: 0;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 16px;
  font-weight: 500;
  line-height: 24px;
  letter-spacing: 0.15px;
  color: var(--md-side-sheet-text);
  flex: 1;
}

/* Close button */
.md-side-sheet__close {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 40px;
  height: 40px;
  padding: 8px;
  background: none;
  border: none;
  border-radius: 9999px;
  cursor: pointer;
  color: var(--md-side-sheet-icon);
  transition: background 200ms;
  flex-shrink: 0;
}
.md-side-sheet__close:hover {
  background: rgba(73, 69, 79, 0.08);
}
.md-side-sheet__close:focus-visible {
  outline: 2px solid #6750A4;
  outline-offset: 2px;
  background: rgba(73, 69, 79, 0.1);
}
.md-side-sheet__close:active {
  background: rgba(73, 69, 79, 0.1);
}

/* Content */
.md-side-sheet__content {
  flex: 1;
  overflow-y: auto;
  overscroll-behavior: contain;
  padding: 0 24px 24px;
  -webkit-overflow-scrolling: touch;
}

/* Sections within content */
.md-side-sheet__section {
  padding: 8px 0;
}
.md-side-sheet__section-title {
  margin: 0 0 12px;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 12px;
  font-weight: 500;
  line-height: 16px;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  color: var(--md-side-sheet-body-text);
}
.md-side-sheet__divider {
  margin: 0;
  border: none;
  border-top: 1px solid var(--md-side-sheet-divider);
}

/* Body text */
.md-side-sheet__content p,
.md-side-sheet__content span {
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 400;
  line-height: 20px;
  letter-spacing: 0.25px;
  color: var(--md-side-sheet-body-text);
}

/* Actions footer */
.md-side-sheet__actions {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
  padding: 16px 24px;
  border-top: 1px solid var(--md-side-sheet-divider);
  flex-shrink: 0;
}
.md-side-sheet__action {
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  letter-spacing: 0.1px;
  color: #6750A4;
  background: transparent;
  border: none;
  border-radius: 20px;
  padding: 10px 12px;
  cursor: pointer;
  min-height: 40px;
  transition: background 200ms;
}
.md-side-sheet__action:hover {
  background: rgba(103, 80, 164, 0.08);
}
.md-side-sheet__action:focus-visible {
  outline: 2px solid #6750A4;
  outline-offset: 2px;
  background: rgba(103, 80, 164, 0.1);
}
.md-side-sheet__action:active {
  background: rgba(103, 80, 164, 0.1);
}
.md-side-sheet__action--confirm {
  background: #6750A4;
  color: #FFFFFF;
  border-radius: 9999px;
  padding: 10px 24px;
}
.md-side-sheet__action--confirm:hover {
  box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15);
  background: #6750A4;
}
.md-side-sheet__action--confirm:hover::after {
  content: ''; position: absolute; inset: 0;
  background: #FFFFFF; opacity: 0.08;
  border-radius: inherit;
}

/* Layout helper (standard) */
.md-layout {
  display: flex;
  min-height: 100vh;
}
.md-layout__main {
  flex: 1;
  transition: margin-right 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}
.md-layout__main--sheet-open {
  margin-right: var(--md-side-sheet-width);
}

/* RTL support */
[dir="rtl"] .md-side-sheet {
  right: auto;
  left: 0;
  transform: translateX(-100%);
  border-left: none;
  border-right: 1px solid var(--md-side-sheet-divider);
}
[dir="rtl"] .md-side-sheet--open {
  transform: translateX(0);
}
[dir="rtl"] .md-side-sheet--modal {
  border-radius: 0 var(--md-side-sheet-radius) var(--md-side-sheet-radius) 0;
  box-shadow: 1px 0 3px rgba(0,0,0,0.3), 4px 0 8px 3px rgba(0,0,0,0.15);
  border: none;
}

/* Dark mode overrides */
@media (prefers-color-scheme: dark) {
  .md-side-sheet__close:hover { background: rgba(202, 196, 208, 0.08); }
  .md-side-sheet__close:focus-visible { background: rgba(202, 196, 208, 0.1); outline-color: #D0BCFF; }
  .md-side-sheet__close:active { background: rgba(202, 196, 208, 0.1); }
  .md-side-sheet__action { color: #D0BCFF; }
  .md-side-sheet__action:hover { background: rgba(208, 188, 255, 0.08); }
  .md-side-sheet__action:focus-visible { background: rgba(208, 188, 255, 0.1); outline-color: #D0BCFF; }
  .md-side-sheet__action:active { background: rgba(208, 188, 255, 0.1); }
  .md-side-sheet__action--confirm { background: #D0BCFF; color: #381E72; }
  .md-side-sheet__action--confirm:hover { background: #D0BCFF; }
  .md-side-sheet__action--confirm:hover::after { background: #381E72; }
}
.dark .md-side-sheet__close:hover { background: rgba(202, 196, 208, 0.08); }
.dark .md-side-sheet__close:focus-visible { background: rgba(202, 196, 208, 0.1); outline-color: #D0BCFF; }
.dark .md-side-sheet__close:active { background: rgba(202, 196, 208, 0.1); }
.dark .md-side-sheet__action { color: #D0BCFF; }
.dark .md-side-sheet__action:hover { background: rgba(208, 188, 255, 0.08); }
.dark .md-side-sheet__action:focus-visible { background: rgba(208, 188, 255, 0.1); outline-color: #D0BCFF; }
.dark .md-side-sheet__action:active { background: rgba(208, 188, 255, 0.1); }
.dark .md-side-sheet__action--confirm { background: #D0BCFF; color: #381E72; }
.dark .md-side-sheet__action--confirm:hover { background: #D0BCFF; }
.dark .md-side-sheet__action--confirm:hover::after { background: #381E72; }
```

## States Reference

| State | Transform | Scrim (Modal) | Border (Standard) | Close Button | Cursor |
|-------|-----------|---------------|--------------------|--------------|---------|
| Hidden | translateX(100%) | opacity 0 | n/a | n/a | n/a |
| Open | translateX(0) | opacity 1 | 1px left divider | visible | default |
| Close hover | -- | -- | -- | 8% overlay | pointer |
| Close focus | -- | -- | -- | 10% overlay, focus ring | pointer |
| Close active | -- | -- | -- | 10% overlay | pointer |
| Closing | translateX(100%) | fading to 0 | fading | visible | default |

## Animation & Motion

```css
@keyframes md-side-sheet-open {
  from { transform: translateX(100%); }
  to   { transform: translateX(0); }
}
@keyframes md-side-sheet-close {
  from { transform: translateX(0); }
  to   { transform: translateX(100%); }
}
@keyframes md-side-sheet-scrim-open {
  from { opacity: 0; }
  to   { opacity: 1; }
}
@keyframes md-side-sheet-scrim-close {
  from { opacity: 1; }
  to   { opacity: 0; }
}

/* RTL animations */
@keyframes md-side-sheet-open-rtl {
  from { transform: translateX(-100%); }
  to   { transform: translateX(0); }
}
@keyframes md-side-sheet-close-rtl {
  from { transform: translateX(0); }
  to   { transform: translateX(-100%); }
}

.md-side-sheet--opening {
  animation: md-side-sheet-open 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-side-sheet--closing {
  animation: md-side-sheet-close 250ms cubic-bezier(0.3, 0.0, 0.8, 0.15) forwards;
}
.md-side-sheet-scrim--opening {
  animation: md-side-sheet-scrim-open 200ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-side-sheet-scrim--closing {
  animation: md-side-sheet-scrim-close 200ms cubic-bezier(0.3, 0.0, 0.8, 0.15) forwards;
}

/* Standard variant: content area resizes smoothly */
.md-layout__main {
  transition: margin-right 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}

/* RTL */
[dir="rtl"] .md-side-sheet--opening {
  animation-name: md-side-sheet-open-rtl;
}
[dir="rtl"] .md-side-sheet--closing {
  animation-name: md-side-sheet-close-rtl;
}

@media (prefers-reduced-motion: reduce) {
  .md-side-sheet,
  .md-side-sheet-scrim,
  .md-side-sheet--opening,
  .md-side-sheet--closing,
  .md-side-sheet-scrim--opening,
  .md-side-sheet-scrim--closing,
  .md-layout__main {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA (standard)**: `role="complementary"`, `aria-label` describing panel purpose
- **ARIA (modal)**: `role="dialog"`, `aria-modal="true"`, `aria-labelledby` pointing to title
- **Close button**: `aria-label="Close [panel name]"`, minimum 40x40px, 48x48px touch target
- **Keyboard**: **Escape** closes modal sheet; **Tab** cycles focus within modal (focus trap); **Tab** moves naturally in/out of standard sheet
- **Focus**: move focus to first focusable element (close button or first interactive content) on open; return focus to trigger on close
- **Touch target**: close button minimum 48x48px (use padding for hit area)
- **Screen reader**: sheet title announced on open; landmark navigation available via `role="complementary"`
- **RTL**: sheet appears on left side, animations reversed, `dir="rtl"` on ancestor

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| <600px | Do not show side sheet; use bottom sheet instead |
| 600-1024px | Modal only; overlays content with scrim |
| >1024px | Standard (coexisting) or modal; standard pushes content |

## Do / Don't

| Do | Don't |
|----|-------|
| Use for supplementary detail or filters alongside main content | Use for primary navigation (use navigation drawer) |
| Use standard variant on large screens where content coexists | Use standard variant on mobile or small tablets |
| Switch to bottom sheet below 600px | Show side sheet overlapping small-screen content |
| Provide a close button in the header | Rely solely on scrim tap to dismiss modal |
| Keep width between 256-360px | Make side sheet wider than 360px (it's not a page) |
| Trap focus for modal variant | Allow focus to escape modal side sheet |
