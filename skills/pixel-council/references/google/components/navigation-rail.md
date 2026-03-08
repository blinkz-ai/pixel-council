---
name: navigation-rail
description: M3 vertical navigation rail for tablet and desktop with icon destinations and optional FAB
metadata:
  tags: navigation rail, side nav, vertical nav, rail, desktop nav, tablet nav
---

# Navigation Rail -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Width | 80px |
| Item height | 56px (icon area + label) |
| Active indicator | 56x32px pill, border-radius 9999px |
| Icon size | 24px |
| Icon-label gap | 4px |
| Label font (prominent) | Roboto, 12px/16px, weight 500, spacing 0.5px |
| Label font (standard) | Roboto, 12px/16px, weight 400, spacing 0.5px |
| Destinations | 3-7 |
| FAB size (optional) | 56x56px |
| Active indicator color (light) | #E8DEF8 |
| Active indicator color (dark) | #4A4458 |
| Container color (light) | #FEF7FF |
| Container color (dark) | #141218 |

## Design Tokens

```css
:root {
  --md-nav-rail-bg: #FEF7FF;
  --md-nav-rail-indicator: #E8DEF8;
  --md-nav-rail-active-icon: #1D192B;
  --md-nav-rail-inactive-icon: #49454F;
  --md-nav-rail-active-label: #1D1B20;
  --md-nav-rail-inactive-label: #49454F;
  --md-nav-rail-ripple: #49454F;
  --md-nav-rail-fab-bg: #E8DEF8;
  --md-nav-rail-fab-icon: #1D192B;
  --md-nav-rail-fab-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15);
  --md-nav-rail-transition: all 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-nav-rail-bg: #141218;
    --md-nav-rail-indicator: #4A4458;
    --md-nav-rail-active-icon: #E8DEF8;
    --md-nav-rail-inactive-icon: #CAC4D0;
    --md-nav-rail-active-label: #E6E0E9;
    --md-nav-rail-inactive-label: #CAC4D0;
    --md-nav-rail-ripple: #CAC4D0;
    --md-nav-rail-fab-bg: #4A4458;
    --md-nav-rail-fab-icon: #E8DEF8;
  }
}

.dark {
  --md-nav-rail-bg: #141218;
  --md-nav-rail-indicator: #4A4458;
  --md-nav-rail-active-icon: #E8DEF8;
  --md-nav-rail-inactive-icon: #CAC4D0;
  --md-nav-rail-active-label: #E6E0E9;
  --md-nav-rail-inactive-label: #CAC4D0;
  --md-nav-rail-ripple: #CAC4D0;
  --md-nav-rail-fab-bg: #4A4458;
  --md-nav-rail-fab-icon: #E8DEF8;
}
```

## Variants

| Variant | Description |
|---------|-------------|
| Standard | 3-7 icon+label destinations, vertically centered |
| With FAB | FAB at top, destinations below with vertical centering |
| With menu icon | Hamburger icon at top to open full navigation drawer |
| With badge (dot) | 6px error dot on icon |
| With badge (count) | 16px min-height count badge on icon |

## HTML Structure

```html
<!-- Standard rail -->
<nav class="md-nav-rail" role="navigation" aria-label="Main navigation">
  <div class="md-nav-rail__destinations">
    <a href="/home" class="md-nav-rail__item md-nav-rail__item--active"
       aria-current="page">
      <span class="md-nav-rail__indicator"></span>
      <span class="md-nav-rail__icon" aria-hidden="true">
        <svg width="24" height="24"><!-- filled icon --></svg>
      </span>
      <span class="md-nav-rail__label">Home</span>
    </a>
    <a href="/search" class="md-nav-rail__item">
      <span class="md-nav-rail__indicator"></span>
      <span class="md-nav-rail__icon" aria-hidden="true">
        <svg width="24" height="24"><!-- outlined icon --></svg>
      </span>
      <span class="md-nav-rail__label">Search</span>
    </a>
    <a href="/library" class="md-nav-rail__item">
      <span class="md-nav-rail__indicator"></span>
      <span class="md-nav-rail__icon" aria-hidden="true">
        <svg width="24" height="24"><!-- outlined icon --></svg>
      </span>
      <span class="md-nav-rail__label">Library</span>
    </a>
  </div>
</nav>

<!-- Rail with FAB -->
<nav class="md-nav-rail md-nav-rail--with-fab" role="navigation" aria-label="Main navigation">
  <button class="md-nav-rail__fab" aria-label="Compose">
    <span class="md-nav-rail__fab-icon" aria-hidden="true">
      <svg width="24" height="24"><!-- icon --></svg>
    </span>
  </button>
  <div class="md-nav-rail__destinations">
    <a href="/home" class="md-nav-rail__item md-nav-rail__item--active"
       aria-current="page">
      <span class="md-nav-rail__indicator"></span>
      <span class="md-nav-rail__icon" aria-hidden="true">
        <svg width="24" height="24"><!-- filled icon --></svg>
      </span>
      <span class="md-nav-rail__label">Home</span>
    </a>
    <a href="/search" class="md-nav-rail__item">
      <span class="md-nav-rail__indicator"></span>
      <span class="md-nav-rail__icon" aria-hidden="true">
        <svg width="24" height="24"><!-- outlined icon --></svg>
      </span>
      <span class="md-nav-rail__label">Search</span>
    </a>
  </div>
</nav>

<!-- Rail with menu icon -->
<nav class="md-nav-rail md-nav-rail--with-menu" role="navigation" aria-label="Main navigation">
  <button class="md-nav-rail__menu" aria-label="Open navigation drawer" aria-expanded="false">
    <svg width="24" height="24"><!-- hamburger icon --></svg>
  </button>
  <div class="md-nav-rail__destinations">
    <a href="/home" class="md-nav-rail__item md-nav-rail__item--active"
       aria-current="page">
      <span class="md-nav-rail__indicator"></span>
      <span class="md-nav-rail__icon" aria-hidden="true">
        <svg width="24" height="24"><!-- filled icon --></svg>
      </span>
      <span class="md-nav-rail__label">Home</span>
    </a>
  </div>
</nav>

<!-- Item with badge -->
<a href="/notifications" class="md-nav-rail__item">
  <span class="md-nav-rail__indicator"></span>
  <span class="md-nav-rail__icon" aria-hidden="true">
    <svg width="24" height="24"><!-- icon --></svg>
  </span>
  <span class="md-nav-rail__badge md-nav-rail__badge--dot" aria-label="New items"></span>
  <span class="md-nav-rail__label">Alerts</span>
</a>

<!-- Item with count badge -->
<a href="/notifications" class="md-nav-rail__item">
  <span class="md-nav-rail__indicator"></span>
  <span class="md-nav-rail__icon" aria-hidden="true">
    <svg width="24" height="24"><!-- icon --></svg>
  </span>
  <span class="md-nav-rail__badge" aria-label="5 notifications">5</span>
  <span class="md-nav-rail__label">Alerts</span>
</a>
```

## Complete CSS

```css
.md-nav-rail {
  position: fixed;
  top: 0;
  left: 0;
  bottom: 0;
  width: 80px;
  display: flex;
  flex-direction: column;
  align-items: center;
  background: var(--md-nav-rail-bg);
  z-index: 50;
  padding: 0;
  overflow-y: auto;
  overflow-x: hidden;
}

.md-nav-rail__destinations {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  flex: 1;
  gap: 12px;
  padding: 16px 0;
  width: 100%;
}

.md-nav-rail__item {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 56px;
  min-height: 56px;
  gap: 4px;
  position: relative;
  text-decoration: none;
  cursor: pointer;
  border-radius: 9999px;
  -webkit-tap-highlight-color: transparent;
  user-select: none;
  transition: color 200ms cubic-bezier(0.2, 0, 0, 1);
}

/* Active indicator pill */
.md-nav-rail__indicator {
  position: absolute;
  top: 0;
  width: 32px;
  height: 32px;
  border-radius: 9999px;
  background: transparent;
  transition: width 200ms cubic-bezier(0.2, 0, 0, 1),
              background-color 200ms cubic-bezier(0.2, 0, 0, 1);
}

.md-nav-rail__item--active .md-nav-rail__indicator {
  width: 56px;
  background: var(--md-nav-rail-indicator);
}

/* Icon */
.md-nav-rail__icon {
  position: relative;
  z-index: 1;
  width: 24px;
  height: 24px;
  color: var(--md-nav-rail-inactive-icon);
  transition: color 200ms cubic-bezier(0.2, 0, 0, 1);
}

.md-nav-rail__item--active .md-nav-rail__icon {
  color: var(--md-nav-rail-active-icon);
}

/* Label */
.md-nav-rail__label {
  position: relative;
  z-index: 1;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 12px;
  font-weight: 500;
  line-height: 16px;
  letter-spacing: 0.5px;
  text-align: center;
  color: var(--md-nav-rail-inactive-label);
  transition: color 200ms cubic-bezier(0.2, 0, 0, 1);
  max-width: 72px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.md-nav-rail__item--active .md-nav-rail__label {
  color: var(--md-nav-rail-active-label);
}

/* FAB */
.md-nav-rail__fab {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 56px;
  height: 56px;
  margin: 16px 0 0;
  border: none;
  border-radius: 16px;
  background: var(--md-nav-rail-fab-bg);
  color: var(--md-nav-rail-fab-icon);
  box-shadow: var(--md-nav-rail-fab-shadow);
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: box-shadow 200ms cubic-bezier(0.2, 0, 0, 1);
  -webkit-tap-highlight-color: transparent;
}

.md-nav-rail__fab-icon {
  width: 24px;
  height: 24px;
}

.md-nav-rail__fab:hover {
  box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
}

.md-nav-rail__fab:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-nav-rail-fab-icon);
  opacity: 0.08;
  border-radius: inherit;
}

.md-nav-rail__fab:focus-visible {
  outline: 2px solid var(--md-nav-rail-fab-icon);
  outline-offset: 2px;
}

.md-nav-rail__fab:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-nav-rail-fab-icon);
  opacity: 0.10;
  border-radius: inherit;
}

.md-nav-rail__fab:active::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-nav-rail-fab-icon);
  opacity: 0.10;
  border-radius: inherit;
}

/* With FAB: top-align FAB, destinations below */
.md-nav-rail--with-fab .md-nav-rail__destinations {
  justify-content: flex-start;
  padding-top: 24px;
}

/* Menu icon */
.md-nav-rail__menu {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 48px;
  height: 48px;
  margin: 16px 0 0;
  border: none;
  border-radius: 9999px;
  background: transparent;
  color: var(--md-nav-rail-inactive-icon);
  cursor: pointer;
  position: relative;
  -webkit-tap-highlight-color: transparent;
}

.md-nav-rail__menu:hover::before {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-nav-rail-ripple);
  opacity: 0.08;
  border-radius: inherit;
}

.md-nav-rail__menu:focus-visible {
  outline: 2px solid var(--md-nav-rail-active-icon);
  outline-offset: 2px;
}

.md-nav-rail--with-menu .md-nav-rail__destinations {
  justify-content: flex-start;
  padding-top: 24px;
}

/* Badge: dot */
.md-nav-rail__badge--dot {
  position: absolute;
  top: 2px;
  right: 8px;
  width: 6px;
  height: 6px;
  border-radius: 3px;
  background: #B3261E;
  z-index: 2;
}

/* Badge: count */
.md-nav-rail__badge:not(.md-nav-rail__badge--dot) {
  position: absolute;
  top: -2px;
  right: 2px;
  min-width: 16px;
  height: 16px;
  padding: 0 4px;
  border-radius: 9999px;
  background: #B3261E;
  color: #FFFFFF;
  font-family: Roboto, sans-serif;
  font-size: 11px;
  font-weight: 500;
  line-height: 16px;
  text-align: center;
  z-index: 2;
}

/* Hover state layer */
.md-nav-rail__item:hover::before {
  content: '';
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 56px;
  height: 32px;
  background: var(--md-nav-rail-ripple);
  opacity: 0.08;
  border-radius: 9999px;
}

/* Focus */
.md-nav-rail__item:focus-visible {
  outline: none;
}
.md-nav-rail__item:focus-visible::before {
  content: '';
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 56px;
  height: 32px;
  background: var(--md-nav-rail-ripple);
  opacity: 0.10;
  border-radius: 9999px;
}

/* Active / pressed */
.md-nav-rail__item:active::before {
  content: '';
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 56px;
  height: 32px;
  background: var(--md-nav-rail-ripple);
  opacity: 0.10;
  border-radius: 9999px;
}

/* Dark mode badges */
@media (prefers-color-scheme: dark) {
  .md-nav-rail__badge--dot { background: #F2B8B5; }
  .md-nav-rail__badge:not(.md-nav-rail__badge--dot) {
    background: #F2B8B5;
    color: #601410;
  }
}
.dark .md-nav-rail__badge--dot { background: #F2B8B5; }
.dark .md-nav-rail__badge:not(.md-nav-rail__badge--dot) {
  background: #F2B8B5;
  color: #601410;
}
```

## States Reference

| State | Indicator | Icon Color | Label Color | Overlay |
|-------|-----------|------------|-------------|---------|
| Inactive | transparent | #49454F | #49454F | none |
| Inactive hover | transparent | #49454F | #49454F | 0.08 |
| Active | #E8DEF8 56x32 pill | #1D192B | #1D1B20 | none |
| Active hover | #E8DEF8 56x32 pill | #1D192B | #1D1B20 | 0.08 |
| Focus-visible | (same) | (same) | (same) | 0.10 |
| Pressed | (same) | (same) | (same) | 0.10 |

## Animation & Motion

```css
/* Indicator expand/collapse */
.md-nav-rail__indicator {
  transition: width 200ms cubic-bezier(0.2, 0, 0, 1),
              background-color 200ms cubic-bezier(0.2, 0, 0, 1);
}

/* Icon and label color transitions */
.md-nav-rail__icon,
.md-nav-rail__label {
  transition: color 200ms cubic-bezier(0.2, 0, 0, 1);
}

/* FAB shadow transition */
.md-nav-rail__fab {
  transition: box-shadow 200ms cubic-bezier(0.2, 0, 0, 1);
}

@media (prefers-reduced-motion: reduce) {
  .md-nav-rail__indicator,
  .md-nav-rail__icon,
  .md-nav-rail__label,
  .md-nav-rail__fab {
    transition: none;
  }
}
```

## Accessibility

- ARIA: `role="navigation"`, `aria-label="Main navigation"`, `aria-current="page"` on active destination
- Keyboard: Tab between destinations; Enter/Space to activate; Tab to FAB separately
- Focus: State layer overlay at 0.10 opacity on indicator area (M3 uses state layers, not outline rings for items); FAB uses 2px outline ring
- Touch target: 56px wide item area, min 48x48px per destination (meets WCAG 2.5.8)
- Screen reader: Badge count announced via `aria-label` on badge element; FAB `aria-label` describes action
- Menu icon: `aria-expanded` toggles when drawer is opened/closed

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Hide rail entirely; use Navigation Bar (bottom) instead |
| 600-1024px | Show rail at 80px width, fixed left |
| > 1024px | Optionally expand to navigation drawer (256px) or keep rail |

## Do / Don't

| Do | Don't |
|----|-------|
| Use 3-7 top-level destinations | Use for fewer than 3 destinations |
| Show filled icon for active, outlined for inactive | Use same icon style for active and inactive |
| Place the FAB above destinations when using one | Place the FAB below destinations |
| Pair with bottom navigation bar for mobile breakpoints | Show rail and bottom bar simultaneously |
| Keep labels short and clear (1 word ideal) | Truncate or wrap labels to multiple lines |
| Use for tablet (600px+) and desktop layouts | Use on mobile screens (< 600px) |
