---
name: top-app-bar
description: M3 center-aligned, small, medium, and large top app bar with scroll behavior
metadata:
  tags: top app bar, app bar, header, toolbar, navigation, title
---

# Top App Bar -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Height (small / center-aligned) | 64px |
| Height (medium) | 112px |
| Height (large) | 152px |
| Leading icon | 48x48px touch, 24px icon |
| Trailing icon(s) | 48x48px touch, 24px icon |
| Title font (small) | Roboto, 22px/28px, weight 400 |
| Title font (medium) | Roboto, 24px/32px, weight 400 |
| Title font (large) | Roboto, 28px/36px, weight 400 |
| Horizontal padding (icons) | 4px |
| Horizontal padding (title) | 16px |
| Icon button padding | 8px (centers 24px icon in 48px target) |
| Background (light, flat) | #FEF7FF |
| Background (light, scrolled) | #ECE6F0 |
| Background (dark, flat) | #141218 |
| Background (dark, scrolled) | #2B2930 |

## Design Tokens

```css
:root {
  --md-top-app-bar-bg: #FEF7FF;
  --md-top-app-bar-bg-scroll: #ECE6F0;
  --md-top-app-bar-text: #1D1B20;
  --md-top-app-bar-icon: #49454F;
  --md-top-app-bar-shadow: none;
  --md-top-app-bar-shadow-scroll: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
  --md-top-app-bar-icon-hover: rgba(73, 69, 79, 0.08);
  --md-top-app-bar-icon-focus: rgba(73, 69, 79, 0.10);
  --md-top-app-bar-icon-active: rgba(73, 69, 79, 0.10);
  --md-top-app-bar-transition: background-color 200ms cubic-bezier(0.2, 0.0, 0, 1.0), box-shadow 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-top-app-bar-bg: #141218;
    --md-top-app-bar-bg-scroll: #2B2930;
    --md-top-app-bar-text: #E6E0E9;
    --md-top-app-bar-icon: #CAC4D0;
    --md-top-app-bar-icon-hover: rgba(202, 196, 208, 0.08);
    --md-top-app-bar-icon-focus: rgba(202, 196, 208, 0.10);
    --md-top-app-bar-icon-active: rgba(202, 196, 208, 0.10);
  }
}
.dark {
  --md-top-app-bar-bg: #141218;
  --md-top-app-bar-bg-scroll: #2B2930;
  --md-top-app-bar-text: #E6E0E9;
  --md-top-app-bar-icon: #CAC4D0;
  --md-top-app-bar-icon-hover: rgba(202, 196, 208, 0.08);
  --md-top-app-bar-icon-focus: rgba(202, 196, 208, 0.10);
  --md-top-app-bar-icon-active: rgba(202, 196, 208, 0.10);
}
```

## Variants

| Variant | Height | Title Position | Title Font | Collapse Behavior |
|---------|--------|---------------|------------|-------------------|
| Center-aligned | 64px | Center | 22px/28px w400 | N/A -- fixed |
| Small | 64px | Left (after nav icon) | 22px/28px w400 | N/A -- fixed |
| Medium | 112px | Bottom-left (expanded) | 24px/32px w400 | Collapses to 64px on scroll |
| Large | 152px | Bottom-left (expanded) | 28px/36px w400 | Collapses to 64px on scroll |

## HTML Structure

```html
<!-- Small (single-row, left-aligned title) -->
<header class="md-top-app-bar md-top-app-bar--small" role="banner">
  <div class="md-top-app-bar__row">
    <button class="md-top-app-bar__nav-icon" type="button" aria-label="Open navigation menu">
      <span class="md-top-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- menu icon --></svg>
    </button>
    <h1 class="md-top-app-bar__title">Title</h1>
    <div class="md-top-app-bar__actions">
      <button class="md-top-app-bar__action-icon" type="button" aria-label="Search">
        <span class="md-top-app-bar__icon-ripple"></span>
        <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- search icon --></svg>
      </button>
      <button class="md-top-app-bar__action-icon" type="button" aria-label="More options">
        <span class="md-top-app-bar__icon-ripple"></span>
        <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- more_vert icon --></svg>
      </button>
    </div>
  </div>
</header>

<!-- Center-aligned (single-row, centered title) -->
<header class="md-top-app-bar md-top-app-bar--center" role="banner">
  <div class="md-top-app-bar__row">
    <button class="md-top-app-bar__nav-icon" type="button" aria-label="Go back">
      <span class="md-top-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- arrow_back icon --></svg>
    </button>
    <h1 class="md-top-app-bar__title">Title</h1>
    <div class="md-top-app-bar__actions">
      <button class="md-top-app-bar__action-icon" type="button" aria-label="Account">
        <span class="md-top-app-bar__icon-ripple"></span>
        <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- account icon --></svg>
      </button>
    </div>
  </div>
</header>

<!-- Medium (two rows: icons top, expanded title bottom) -->
<header class="md-top-app-bar md-top-app-bar--medium" role="banner">
  <div class="md-top-app-bar__row">
    <button class="md-top-app-bar__nav-icon" type="button" aria-label="Open navigation menu">
      <span class="md-top-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- menu icon --></svg>
    </button>
    <div class="md-top-app-bar__actions">
      <button class="md-top-app-bar__action-icon" type="button" aria-label="Search">
        <span class="md-top-app-bar__icon-ripple"></span>
        <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- search icon --></svg>
      </button>
    </div>
  </div>
  <div class="md-top-app-bar__row md-top-app-bar__row--bottom">
    <h1 class="md-top-app-bar__title md-top-app-bar__title--expanded">Title</h1>
  </div>
</header>

<!-- Large (two rows: icons top, large expanded title bottom) -->
<header class="md-top-app-bar md-top-app-bar--large" role="banner">
  <div class="md-top-app-bar__row">
    <button class="md-top-app-bar__nav-icon" type="button" aria-label="Open navigation menu">
      <span class="md-top-app-bar__icon-ripple"></span>
      <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- menu icon --></svg>
    </button>
    <div class="md-top-app-bar__actions">
      <button class="md-top-app-bar__action-icon" type="button" aria-label="Search">
        <span class="md-top-app-bar__icon-ripple"></span>
        <svg aria-hidden="true" width="24" height="24" viewBox="0 0 24 24"><!-- search icon --></svg>
      </button>
    </div>
  </div>
  <div class="md-top-app-bar__row md-top-app-bar__row--bottom">
    <h1 class="md-top-app-bar__title md-top-app-bar__title--expanded">Title</h1>
  </div>
</header>
```

## Complete CSS

```css
/* -- Base -- */
.md-top-app-bar {
  position: sticky;
  top: 0;
  z-index: 4;
  width: 100%;
  background: var(--md-top-app-bar-bg);
  color: var(--md-top-app-bar-text);
  box-shadow: var(--md-top-app-bar-shadow);
  transition: var(--md-top-app-bar-transition);
}

.md-top-app-bar__row {
  display: flex;
  align-items: center;
  height: 64px;
  padding: 0 4px;
}

.md-top-app-bar__row--bottom {
  height: auto;
  padding: 0 16px 20px;
}

/* -- Title -- */
.md-top-app-bar__title {
  flex: 1;
  margin: 0;
  padding: 0 16px;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 22px;
  font-weight: 400;
  line-height: 28px;
  color: var(--md-top-app-bar-text);
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.md-top-app-bar--center .md-top-app-bar__title {
  text-align: center;
}

.md-top-app-bar--medium .md-top-app-bar__title--expanded {
  font-size: 24px;
  line-height: 32px;
  white-space: normal;
}

.md-top-app-bar--large .md-top-app-bar__title--expanded {
  font-size: 28px;
  line-height: 36px;
  white-space: normal;
}

/* -- Heights -- */
.md-top-app-bar--small,
.md-top-app-bar--center {
  min-height: 64px;
}

.md-top-app-bar--medium {
  min-height: 112px;
}

.md-top-app-bar--large {
  min-height: 152px;
}

/* -- Icon Buttons (nav + actions) -- */
.md-top-app-bar__nav-icon,
.md-top-app-bar__action-icon {
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
  color: var(--md-top-app-bar-icon);
  cursor: pointer;
  overflow: hidden;
  -webkit-tap-highlight-color: transparent;
}

.md-top-app-bar__nav-icon svg,
.md-top-app-bar__action-icon svg {
  width: 24px;
  height: 24px;
  fill: currentColor;
}

.md-top-app-bar__icon-ripple {
  position: absolute;
  inset: 0;
  border-radius: inherit;
  pointer-events: none;
  overflow: hidden;
}

/* -- Icon State Layers -- */
.md-top-app-bar__nav-icon:hover::after,
.md-top-app-bar__action-icon:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-top-app-bar-icon);
  opacity: 0.08;
}

.md-top-app-bar__nav-icon:focus-visible::after,
.md-top-app-bar__action-icon:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-top-app-bar-icon);
  opacity: 0.10;
}

.md-top-app-bar__nav-icon:active::after,
.md-top-app-bar__action-icon:active::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-top-app-bar-icon);
  opacity: 0.10;
}

/* -- Focus ring -- */
.md-top-app-bar__nav-icon:focus-visible,
.md-top-app-bar__action-icon:focus-visible {
  outline: 2px solid var(--md-top-app-bar-icon);
  outline-offset: 2px;
}

/* -- Actions container -- */
.md-top-app-bar__actions {
  display: flex;
  align-items: center;
  margin-left: auto;
}

/* -- Scroll elevation -- */
.md-top-app-bar[data-scrolled] {
  background: var(--md-top-app-bar-bg-scroll);
  box-shadow: var(--md-top-app-bar-shadow-scroll);
}

/* -- Medium / Large collapse on scroll -- */
.md-top-app-bar--medium[data-scrolled],
.md-top-app-bar--large[data-scrolled] {
  min-height: 64px;
}

.md-top-app-bar--medium[data-scrolled] .md-top-app-bar__row--bottom,
.md-top-app-bar--large[data-scrolled] .md-top-app-bar__row--bottom {
  height: 0;
  padding: 0 16px;
  overflow: hidden;
}

.md-top-app-bar--medium[data-scrolled] .md-top-app-bar__title--expanded,
.md-top-app-bar--large[data-scrolled] .md-top-app-bar__title--expanded {
  font-size: 22px;
  line-height: 28px;
  opacity: 0;
}

/* -- Dark mode disabled states -- */
@media (prefers-color-scheme: dark) {
  .md-top-app-bar__nav-icon:hover::after,
  .md-top-app-bar__action-icon:hover::after {
    background: var(--md-top-app-bar-icon);
    opacity: 0.08;
  }
  .md-top-app-bar__nav-icon:focus-visible::after,
  .md-top-app-bar__action-icon:focus-visible::after {
    background: var(--md-top-app-bar-icon);
    opacity: 0.10;
  }
}
```

## States Reference

| State | Background | Shadow | Icon Overlay | Cursor |
|-------|-----------|--------|-------------|--------|
| Flat (default) | Surface (#FEF7FF) | none | 0% | default |
| Scrolled | Surface Container (#ECE6F0) | Level 2 | 0% | default |
| Icon Hover | -- | -- | 8% icon color | pointer |
| Icon Focus | -- | -- | 10% icon color | pointer |
| Icon Active | -- | -- | 10% icon color | pointer |

## Animation & Motion

```css
/* -- Scroll elevation transition -- */
.md-top-app-bar {
  transition: background-color 200ms cubic-bezier(0.2, 0.0, 0, 1.0),
              box-shadow 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

/* -- Medium/Large collapse transition -- */
.md-top-app-bar__row--bottom {
  transition: height 300ms cubic-bezier(0, 0, 0, 1),
              padding 300ms cubic-bezier(0, 0, 0, 1);
}

.md-top-app-bar__title--expanded {
  transition: font-size 300ms cubic-bezier(0, 0, 0, 1),
              line-height 300ms cubic-bezier(0, 0, 0, 1),
              opacity 200ms cubic-bezier(0, 0, 0, 1);
}

/* -- Icon ripple -- */
@keyframes md-icon-ripple {
  from { transform: scale(0); opacity: 0.12; }
  to { transform: scale(2); opacity: 0; }
}

.md-top-app-bar__icon-ripple::after {
  content: '';
  position: absolute;
  width: 100%;
  padding-top: 100%;
  border-radius: 50%;
  background: currentColor;
  transform: scale(0);
  opacity: 0;
}

.md-top-app-bar__nav-icon:active .md-top-app-bar__icon-ripple::after,
.md-top-app-bar__action-icon:active .md-top-app-bar__icon-ripple::after {
  animation: md-icon-ripple 300ms cubic-bezier(0.2, 0, 0, 1) forwards;
}

@media (prefers-reduced-motion: reduce) {
  .md-top-app-bar,
  .md-top-app-bar__row--bottom,
  .md-top-app-bar__title--expanded,
  .md-top-app-bar__icon-ripple::after {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA**: `role="banner"` on `<header>`, `aria-label` on every icon button (nav + actions)
- **Landmark**: The header serves as a banner landmark for assistive technology
- **Keyboard**: Tab to move between icon buttons, Enter/Space to activate
- **Focus ring**: 2px solid icon color, 2px offset, pill shape
- **Touch target**: 48x48px minimum on all icon buttons (meets WCAG 2.5.8)
- **Screen reader**: Title is an `<h1>` heading, providing document structure

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Always use Small or Center-aligned (64px). Medium/Large may be used but collapse quickly on scroll. |
| 600-1024px | Any variant. Medium and Large have room to display expanded title. |
| > 1024px | Consider pairing with Navigation Rail or Navigation Drawer. Top app bar still valid but may use Small variant. |

## Do / Don't

| Do | Don't |
|----|-------|
| Use Center-aligned for simple screens with a single trailing action | Use Center-aligned with long titles that overflow |
| Use Small for most standard navigation patterns | Place more than 3 trailing action icons |
| Use Medium/Large for content-heavy screens where the title provides context | Use Medium/Large on screens that require instant scroll access |
| Elevate on scroll to separate header from scrolled content | Keep flat styling when content scrolls behind |
| Provide aria-label on every icon button | Use icon-only buttons without accessible labels |
| Collapse Medium/Large to 64px on scroll | Jump-cut between expanded and collapsed states |
