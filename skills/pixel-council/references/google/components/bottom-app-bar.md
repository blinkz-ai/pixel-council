---
name: bottom-app-bar
description: M3 bottom app bar with action icons and optional FAB
metadata:
  tags: bottom app bar, bottom bar, toolbar, actions, fab
---

# Bottom App Bar -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Height | 80px |
| Icon size | 24px |
| Icon touch target | 48x48px |
| Icon button padding | 8px (centers 24px icon in 48px target) |
| Max action icons | 4 |
| FAB size | 56x56px |
| FAB corner radius | 16px |
| FAB elevation | Level 3 |
| Bar corner radius | 0 |
| Horizontal padding | 4px (icon area), 16px (end with FAB) |
| Gap between icons | 0 (icons are 48px touch targets flush) |
| Background (light) | #FEF7FF |
| Background (dark) | #141218 |
| FAB background (light) | #EADDFF |
| FAB background (dark) | #4F378B |

## Design Tokens

```css
:root {
  --md-bottom-app-bar-bg: #FEF7FF;
  --md-bottom-app-bar-icon: #49454F;
  --md-bottom-app-bar-shadow: 0 -1px 2px rgba(0,0,0,0.3), 0 -1px 3px 1px rgba(0,0,0,0.15);
  --md-bottom-app-bar-fab-bg: #EADDFF;
  --md-bottom-app-bar-fab-icon: #21005D;
  --md-bottom-app-bar-fab-hover: rgba(33, 0, 93, 0.08);
  --md-bottom-app-bar-fab-focus: rgba(33, 0, 93, 0.10);
  --md-bottom-app-bar-fab-active: rgba(33, 0, 93, 0.10);
  --md-bottom-app-bar-fab-shadow: 0 4px 8px 3px rgba(0,0,0,0.15), 0 1px 3px rgba(0,0,0,0.3);
  --md-bottom-app-bar-fab-shadow-hover: 0 6px 10px 4px rgba(0,0,0,0.15), 0 2px 3px rgba(0,0,0,0.3);
  --md-bottom-app-bar-icon-hover: rgba(73, 69, 79, 0.08);
  --md-bottom-app-bar-icon-focus: rgba(73, 69, 79, 0.10);
  --md-bottom-app-bar-icon-active: rgba(73, 69, 79, 0.10);
  --md-bottom-app-bar-transition: transform 250ms cubic-bezier(0.4, 0.0, 1, 1);
  --md-bottom-app-bar-transition-show: transform 300ms cubic-bezier(0, 0, 0, 1);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-bottom-app-bar-bg: #141218;
    --md-bottom-app-bar-icon: #CAC4D0;
    --md-bottom-app-bar-fab-bg: #4F378B;
    --md-bottom-app-bar-fab-icon: #EADDFF;
    --md-bottom-app-bar-fab-hover: rgba(234, 221, 255, 0.08);
    --md-bottom-app-bar-fab-focus: rgba(234, 221, 255, 0.10);
    --md-bottom-app-bar-fab-active: rgba(234, 221, 255, 0.10);
    --md-bottom-app-bar-icon-hover: rgba(202, 196, 208, 0.08);
    --md-bottom-app-bar-icon-focus: rgba(202, 196, 208, 0.10);
    --md-bottom-app-bar-icon-active: rgba(202, 196, 208, 0.10);
  }
}
.dark {
  --md-bottom-app-bar-bg: #141218;
  --md-bottom-app-bar-icon: #CAC4D0;
  --md-bottom-app-bar-fab-bg: #4F378B;
  --md-bottom-app-bar-fab-icon: #EADDFF;
  --md-bottom-app-bar-fab-hover: rgba(234, 221, 255, 0.08);
  --md-bottom-app-bar-fab-focus: rgba(234, 221, 255, 0.10);
  --md-bottom-app-bar-fab-active: rgba(234, 221, 255, 0.10);
  --md-bottom-app-bar-icon-hover: rgba(202, 196, 208, 0.08);
  --md-bottom-app-bar-icon-focus: rgba(202, 196, 208, 0.10);
  --md-bottom-app-bar-icon-active: rgba(202, 196, 208, 0.10);
}
```

## Variants

| Variant | Icons | FAB | Description |
|---------|-------|-----|-------------|
| Standard | 1-4 action icons | None | Simple action bar without FAB |
| With FAB | 1-4 action icons | End-aligned | FAB sits at trailing end, icons at leading end |

## HTML Structure

```html
<!-- Standard (icons only) -->
<nav class="md-bottom-app-bar" role="toolbar" aria-label="Bottom actions">
  <div class="md-bottom-app-bar__icons">
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Search" tabindex="0">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- search icon --></svg>
    </button>
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Delete" tabindex="-1">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- delete icon --></svg>
    </button>
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Archive" tabindex="-1">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- archive icon --></svg>
    </button>
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Reply" tabindex="-1">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- reply icon --></svg>
    </button>
  </div>
</nav>

<!-- With FAB -->
<nav class="md-bottom-app-bar md-bottom-app-bar--fab" role="toolbar" aria-label="Bottom actions">
  <div class="md-bottom-app-bar__icons">
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Search" tabindex="0">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- search icon --></svg>
    </button>
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Delete" tabindex="-1">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- delete icon --></svg>
    </button>
    <button class="md-bottom-app-bar__icon" type="button" aria-label="Archive" tabindex="-1">
      <span class="md-bottom-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- archive icon --></svg>
    </button>
  </div>
  <button class="md-bottom-app-bar__fab" type="button" aria-label="Compose">
    <span class="md-bottom-app-bar__fab-ripple"></span>
    <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- add icon --></svg>
  </button>
</nav>
```

## Complete CSS

```css
/* -- Base -- */
.md-bottom-app-bar {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 4;
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 80px;
  padding: 0 4px;
  background: var(--md-bottom-app-bar-bg);
  box-shadow: var(--md-bottom-app-bar-shadow);
  transition: var(--md-bottom-app-bar-transition-show);
}

/* -- Icons container -- */
.md-bottom-app-bar__icons {
  display: flex;
  align-items: center;
}

/* -- Icon Buttons -- */
.md-bottom-app-bar__icon {
  position: relative;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 48px;
  height: 48px;
  padding: 8px;
  border: none;
  border-radius: 9999px;
  background: transparent;
  color: var(--md-bottom-app-bar-icon);
  cursor: pointer;
  overflow: hidden;
  -webkit-tap-highlight-color: transparent;
}

.md-bottom-app-bar__icon svg {
  width: 24px;
  height: 24px;
  fill: currentColor;
}

.md-bottom-app-bar__icon-ripple {
  position: absolute;
  inset: 0;
  border-radius: inherit;
  pointer-events: none;
  overflow: hidden;
}

/* -- Icon State Layers -- */
.md-bottom-app-bar__icon:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-bottom-app-bar-icon);
  opacity: 0.08;
}

.md-bottom-app-bar__icon:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-bottom-app-bar-icon);
  opacity: 0.10;
}

.md-bottom-app-bar__icon:active::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-bottom-app-bar-icon);
  opacity: 0.10;
}

/* -- Focus ring (icons) -- */
.md-bottom-app-bar__icon:focus-visible {
  outline: 2px solid var(--md-bottom-app-bar-icon);
  outline-offset: 2px;
}

/* -- FAB -- */
.md-bottom-app-bar__fab {
  position: relative;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 56px;
  height: 56px;
  margin-right: 12px;
  border: none;
  border-radius: 16px;
  background: var(--md-bottom-app-bar-fab-bg);
  color: var(--md-bottom-app-bar-fab-icon);
  box-shadow: var(--md-bottom-app-bar-fab-shadow);
  cursor: pointer;
  overflow: hidden;
  transition: box-shadow 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
  -webkit-tap-highlight-color: transparent;
}

.md-bottom-app-bar__fab svg {
  width: 24px;
  height: 24px;
  fill: currentColor;
}

.md-bottom-app-bar__fab-ripple {
  position: absolute;
  inset: 0;
  border-radius: inherit;
  pointer-events: none;
  overflow: hidden;
}

/* -- FAB State Layers -- */
.md-bottom-app-bar__fab:hover {
  box-shadow: var(--md-bottom-app-bar-fab-shadow-hover);
}

.md-bottom-app-bar__fab:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-bottom-app-bar-fab-icon);
  opacity: 0.08;
}

.md-bottom-app-bar__fab:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-bottom-app-bar-fab-icon);
  opacity: 0.10;
}

.md-bottom-app-bar__fab:active::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-bottom-app-bar-fab-icon);
  opacity: 0.10;
}

/* -- Focus ring (FAB) -- */
.md-bottom-app-bar__fab:focus-visible {
  outline: 2px solid var(--md-bottom-app-bar-fab-icon);
  outline-offset: 2px;
}

/* -- Scroll hide/show -- */
.md-bottom-app-bar[data-hidden] {
  transform: translateY(100%);
  transition: var(--md-bottom-app-bar-transition);
}

/* -- Dark mode -- */
@media (prefers-color-scheme: dark) {
  .md-bottom-app-bar__icon:hover::after {
    background: var(--md-bottom-app-bar-icon);
    opacity: 0.08;
  }
  .md-bottom-app-bar__icon:focus-visible::after {
    background: var(--md-bottom-app-bar-icon);
    opacity: 0.10;
  }
  .md-bottom-app-bar__fab:hover::after {
    background: var(--md-bottom-app-bar-fab-icon);
    opacity: 0.08;
  }
  .md-bottom-app-bar__fab:focus-visible::after {
    background: var(--md-bottom-app-bar-fab-icon);
    opacity: 0.10;
  }
}
```

## States Reference

| Element | State | Overlay | Shadow | Cursor |
|---------|-------|---------|--------|--------|
| Icon | Default | 0% | -- | pointer |
| Icon | Hover | 8% icon color | -- | pointer |
| Icon | Focus | 10% icon color | -- | pointer |
| Icon | Active | 10% icon color | -- | pointer |
| FAB | Default | 0% | Level 3 | pointer |
| FAB | Hover | 8% FAB icon color | Level 4 (elevated) | pointer |
| FAB | Focus | 10% FAB icon color | Level 3 | pointer |
| FAB | Active | 10% FAB icon color | Level 3 | pointer |
| Bar | Visible | -- | top shadow | -- |
| Bar | Hidden (scroll down) | -- | -- | -- |

## Animation & Motion

```css
/* -- Scroll hide (downward scroll) -- */
.md-bottom-app-bar[data-hidden] {
  transform: translateY(100%);
  transition: transform 250ms cubic-bezier(0.4, 0.0, 1, 1); /* accelerate */
}

/* -- Scroll show (upward scroll) -- */
.md-bottom-app-bar {
  transform: translateY(0);
  transition: transform 300ms cubic-bezier(0, 0, 0, 1); /* decelerate */
}

/* -- FAB shadow transition -- */
.md-bottom-app-bar__fab {
  transition: box-shadow 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

/* -- Icon ripple -- */
@keyframes md-bar-icon-ripple {
  from { transform: scale(0); opacity: 0.12; }
  to { transform: scale(2); opacity: 0; }
}

.md-bottom-app-bar__icon-ripple::after {
  content: '';
  position: absolute;
  width: 100%;
  padding-top: 100%;
  border-radius: 50%;
  background: currentColor;
  transform: scale(0);
  opacity: 0;
}

.md-bottom-app-bar__icon:active .md-bottom-app-bar__icon-ripple::after {
  animation: md-bar-icon-ripple 300ms cubic-bezier(0.2, 0, 0, 1) forwards;
}

/* -- FAB ripple -- */
@keyframes md-fab-ripple {
  from { transform: scale(0); opacity: 0.12; }
  to { transform: scale(2.5); opacity: 0; }
}

.md-bottom-app-bar__fab-ripple::after {
  content: '';
  position: absolute;
  width: 100%;
  padding-top: 100%;
  border-radius: 50%;
  background: currentColor;
  transform: scale(0);
  opacity: 0;
}

.md-bottom-app-bar__fab:active .md-bottom-app-bar__fab-ripple::after {
  animation: md-fab-ripple 300ms cubic-bezier(0.2, 0, 0, 1) forwards;
}

@media (prefers-reduced-motion: reduce) {
  .md-bottom-app-bar,
  .md-bottom-app-bar[data-hidden],
  .md-bottom-app-bar__fab,
  .md-bottom-app-bar__icon-ripple::after,
  .md-bottom-app-bar__fab-ripple::after {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA**: `role="toolbar"` on `<nav>` container, `aria-label` on the toolbar and every icon button and FAB
- **Keyboard**: Roving tabindex for icon group -- first icon has `tabindex="0"`, rest have `tabindex="-1"`. Arrow keys move focus between icons. Tab moves to FAB (if present), then out of toolbar.
- **Focus ring**: 2px solid icon/FAB-icon color, 2px offset
- **Touch target**: 48x48px minimum on all icon buttons, 56x56px FAB (exceeds WCAG 2.5.8)
- **Screen reader**: FAB aria-label describes primary action (e.g., "Compose"), icon aria-labels describe each action

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Shown. This is the primary use case -- mobile bottom actions. |
| 600-1024px | Hidden. Replace with Navigation Rail for primary nav, or keep for contextual actions on tablets. |
| > 1024px | Hidden. Use Navigation Drawer or top app bar actions instead. Bottom app bar is a mobile-only pattern. |

## Do / Don't

| Do | Don't |
|----|-------|
| Use 2-4 action icons for common contextual actions | Use more than 4 action icons (overflow to a menu) |
| Place the single primary action in the FAB | Put multiple FABs in the bottom app bar |
| Hide on downward scroll to maximize content area | Keep the bar visible during long scrolling content |
| Show on upward scroll so actions are quickly accessible | Use abrupt show/hide without animation |
| Use for mobile screens only (< 600px) | Show on tablet/desktop where nav rail/drawer exists |
| Use roving tabindex for icon keyboard navigation | Make every icon independently tabbable via Tab key |
| Provide clear aria-label on every action | Use icon-only buttons without accessible labels |
