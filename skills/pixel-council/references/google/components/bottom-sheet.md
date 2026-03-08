---
name: bottom-sheet
description: M3 standard and modal bottom sheets with drag handle, detents, and swipe-to-dismiss
metadata:
  tags: bottom sheet, sheet, drawer, panel, modal, overlay
---

# Bottom Sheet -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Width | 100% (max 640px on larger screens) |
| Min height (peeking) | 128px |
| Max height | 90vh |
| Corner radius | 28px (top-left, top-right only) |
| Drag handle size | 32x4px, centered |
| Drag handle offset | 22px from top edge |
| Drag handle color (light) | #CAC4D0 |
| Drag handle color (dark) | #49454F |
| Background (light) | #F3EDF7 |
| Background (dark) | #211F26 |
| Scrim (modal) | rgba(0,0,0,0.32) |
| Content padding | 16px 24px 24px |
| Elevation (modal) | Level 1 |
| Font (title) | Roboto, 16px/24px, weight 500 |
| Font (body) | Roboto, 14px/20px, weight 400 |

## Design Tokens

```css
:root {
  --md-bottom-sheet-bg: #F3EDF7;
  --md-bottom-sheet-handle: #CAC4D0;
  --md-bottom-sheet-text: #1D1B20;
  --md-bottom-sheet-body-text: #49454F;
  --md-bottom-sheet-scrim: rgba(0, 0, 0, 0.32);
  --md-bottom-sheet-shadow: 0 -1px 3px rgba(0,0,0,0.3), 0 -4px 8px 3px rgba(0,0,0,0.15);
  --md-bottom-sheet-radius: 28px;
  --md-bottom-sheet-width-max: 640px;
  --md-bottom-sheet-transition: all 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-bottom-sheet-bg: #211F26;
    --md-bottom-sheet-handle: #49454F;
    --md-bottom-sheet-text: #E6E0E9;
    --md-bottom-sheet-body-text: #CAC4D0;
  }
}

.dark {
  --md-bottom-sheet-bg: #211F26;
  --md-bottom-sheet-handle: #49454F;
  --md-bottom-sheet-text: #E6E0E9;
  --md-bottom-sheet-body-text: #CAC4D0;
}
```

## Variants

| Variant | Scrim | Interaction | Content Behind | Use Case |
|---------|-------|-------------|----------------|----------|
| Standard | none | coexisting, non-blocking | scrolls independently | persistent supplementary content |
| Modal | rgba(0,0,0,0.32) | blocks background | dimmed, no interaction | focused task or selection |

## HTML Structure

```html
<!-- Standard bottom sheet -->
<div class="md-bottom-sheet md-bottom-sheet--standard" role="complementary"
  aria-label="Additional options">
  <div class="md-bottom-sheet__handle-region">
    <div class="md-bottom-sheet__handle" role="slider"
      aria-label="Resize sheet"
      aria-orientation="vertical"
      aria-valuemin="0" aria-valuemax="2" aria-valuenow="0"
      aria-valuetext="Peeking"
      tabindex="0"></div>
  </div>
  <div class="md-bottom-sheet__content">
    <h3 class="md-bottom-sheet__title">Sheet Title</h3>
    <div class="md-bottom-sheet__body">
      <!-- scrollable content -->
    </div>
  </div>
</div>

<!-- Modal bottom sheet -->
<div class="md-bottom-sheet-scrim" aria-hidden="true"></div>
<div class="md-bottom-sheet md-bottom-sheet--modal" role="dialog"
  aria-modal="true" aria-labelledby="sheet-title">
  <div class="md-bottom-sheet__handle-region">
    <div class="md-bottom-sheet__handle" role="slider"
      aria-label="Resize sheet"
      aria-orientation="vertical"
      aria-valuemin="0" aria-valuemax="2" aria-valuenow="0"
      aria-valuetext="Peeking"
      tabindex="0"></div>
  </div>
  <div class="md-bottom-sheet__content">
    <h3 class="md-bottom-sheet__title" id="sheet-title">Select Option</h3>
    <div class="md-bottom-sheet__body">
      <!-- scrollable content -->
    </div>
  </div>
</div>

<!-- Bottom sheet with action buttons -->
<div class="md-bottom-sheet md-bottom-sheet--modal" role="dialog"
  aria-modal="true" aria-labelledby="action-sheet-title">
  <div class="md-bottom-sheet__handle-region">
    <div class="md-bottom-sheet__handle" role="slider"
      aria-label="Resize sheet"
      aria-orientation="vertical"
      aria-valuemin="0" aria-valuemax="2" aria-valuenow="1"
      aria-valuetext="Half expanded"
      tabindex="0"></div>
  </div>
  <div class="md-bottom-sheet__content">
    <h3 class="md-bottom-sheet__title" id="action-sheet-title">Share</h3>
    <div class="md-bottom-sheet__body">
      <ul class="md-bottom-sheet__list" role="listbox">
        <li class="md-bottom-sheet__item" role="option">
          <span class="md-bottom-sheet__item-icon" aria-hidden="true"><!-- svg --></span>
          <span class="md-bottom-sheet__item-label">Copy link</span>
        </li>
        <li class="md-bottom-sheet__item" role="option">
          <span class="md-bottom-sheet__item-icon" aria-hidden="true"><!-- svg --></span>
          <span class="md-bottom-sheet__item-label">Email</span>
        </li>
      </ul>
    </div>
  </div>
</div>
```

## Complete CSS

```css
/* Scrim (modal only) */
.md-bottom-sheet-scrim {
  position: fixed;
  inset: 0;
  background: var(--md-bottom-sheet-scrim);
  z-index: 999;
  opacity: 0;
  pointer-events: none;
  transition: opacity 200ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}
.md-bottom-sheet-scrim--open {
  opacity: 1;
  pointer-events: auto;
}

/* Sheet container */
.md-bottom-sheet {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  width: 100%;
  max-width: var(--md-bottom-sheet-width-max);
  margin: 0 auto;
  min-height: 128px;
  max-height: 90vh;
  background: var(--md-bottom-sheet-bg);
  border-radius: var(--md-bottom-sheet-radius) var(--md-bottom-sheet-radius) 0 0;
  box-shadow: var(--md-bottom-sheet-shadow);
  z-index: 1000;
  display: flex;
  flex-direction: column;
  transform: translateY(100%);
  transition: transform 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
  overflow: hidden;
  -webkit-tap-highlight-color: transparent;
}
.md-bottom-sheet--open {
  transform: translateY(0);
}

/* Detent states */
.md-bottom-sheet--peek {
  transform: translateY(calc(100% - 128px));
}
.md-bottom-sheet--half {
  transform: translateY(50%);
  max-height: 50vh;
}
.md-bottom-sheet--full {
  transform: translateY(0);
  max-height: 90vh;
}

/* Drag handle region */
.md-bottom-sheet__handle-region {
  display: flex;
  justify-content: center;
  padding: 22px 0 0;
  cursor: grab;
  flex-shrink: 0;
  touch-action: none;
}
.md-bottom-sheet__handle-region:active {
  cursor: grabbing;
}

/* Drag handle */
.md-bottom-sheet__handle {
  width: 32px;
  height: 4px;
  border-radius: 2px;
  background: var(--md-bottom-sheet-handle);
  border: none;
  padding: 0;
  flex-shrink: 0;
}
.md-bottom-sheet__handle:focus-visible {
  outline: 2px solid #6750A4;
  outline-offset: 4px;
  border-radius: 2px;
}

/* Content area */
.md-bottom-sheet__content {
  flex: 1;
  overflow-y: auto;
  overscroll-behavior: contain;
  padding: 16px 24px 24px;
  -webkit-overflow-scrolling: touch;
}

/* Title */
.md-bottom-sheet__title {
  margin: 0 0 16px;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 16px;
  font-weight: 500;
  line-height: 24px;
  letter-spacing: 0.15px;
  color: var(--md-bottom-sheet-text);
}

/* Body */
.md-bottom-sheet__body {
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 400;
  line-height: 20px;
  letter-spacing: 0.25px;
  color: var(--md-bottom-sheet-body-text);
}

/* List items (common pattern) */
.md-bottom-sheet__list {
  list-style: none;
  margin: 0;
  padding: 0;
}
.md-bottom-sheet__item {
  display: flex;
  align-items: center;
  gap: 16px;
  padding: 12px 0;
  cursor: pointer;
  border-radius: 12px;
  transition: background 200ms;
  min-height: 48px;
}
.md-bottom-sheet__item:hover {
  background: rgba(103, 80, 164, 0.08);
}
.md-bottom-sheet__item:focus-visible {
  outline: 2px solid #6750A4;
  outline-offset: -2px;
  background: rgba(103, 80, 164, 0.1);
}
.md-bottom-sheet__item:active {
  background: rgba(103, 80, 164, 0.1);
}
.md-bottom-sheet__item-icon {
  width: 24px;
  height: 24px;
  color: var(--md-bottom-sheet-body-text);
  flex-shrink: 0;
}
.md-bottom-sheet__item-label {
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 400;
  line-height: 20px;
  color: var(--md-bottom-sheet-text);
}

/* Standard variant specifics */
.md-bottom-sheet--standard {
  box-shadow: var(--md-bottom-sheet-shadow);
}

/* Modal variant specifics */
.md-bottom-sheet--modal {
  box-shadow: var(--md-bottom-sheet-shadow);
}

/* Dragging state (no transition during active drag) */
.md-bottom-sheet--dragging {
  transition: none;
}

/* Dark mode overrides */
@media (prefers-color-scheme: dark) {
  .md-bottom-sheet__item:hover { background: rgba(208, 188, 255, 0.08); }
  .md-bottom-sheet__item:focus-visible { background: rgba(208, 188, 255, 0.1); }
  .md-bottom-sheet__item:active { background: rgba(208, 188, 255, 0.1); }
  .md-bottom-sheet__handle:focus-visible { outline-color: #D0BCFF; }
}
.dark .md-bottom-sheet__item:hover { background: rgba(208, 188, 255, 0.08); }
.dark .md-bottom-sheet__item:focus-visible { background: rgba(208, 188, 255, 0.1); }
.dark .md-bottom-sheet__item:active { background: rgba(208, 188, 255, 0.1); }
.dark .md-bottom-sheet__handle:focus-visible { outline-color: #D0BCFF; }
```

## States Reference

| State | Transform | Scrim Opacity | Handle | Content Scroll | Cursor |
|-------|-----------|---------------|--------|----------------|--------|
| Hidden | translateY(100%) | 0 | hidden | n/a | n/a |
| Peeking | translateY(calc(100% - 128px)) | 0.32 (modal) | visible | disabled | default |
| Half-expanded | translateY(50%) | 0.32 (modal) | visible | enabled if overflow | default |
| Fully expanded | translateY(0) | 0.32 (modal) | visible | enabled | default |
| Dragging | follows pointer | interpolated | visible | disabled | grabbing |
| Dismissing | translateY(100%) | fading to 0 | visible | disabled | default |

## Animation & Motion

```css
@keyframes md-sheet-open {
  from { transform: translateY(100%); }
  to   { transform: translateY(0); }
}
@keyframes md-sheet-close {
  from { transform: translateY(0); }
  to   { transform: translateY(100%); }
}
@keyframes md-sheet-peek {
  from { transform: translateY(100%); }
  to   { transform: translateY(calc(100% - 128px)); }
}
@keyframes md-scrim-fade-in {
  from { opacity: 0; }
  to   { opacity: 1; }
}
@keyframes md-scrim-fade-out {
  from { opacity: 1; }
  to   { opacity: 0; }
}

.md-bottom-sheet--opening {
  animation: md-sheet-open 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-bottom-sheet--closing {
  animation: md-sheet-close 250ms cubic-bezier(0.3, 0.0, 0.8, 0.15) forwards;
}
.md-bottom-sheet--peeking {
  animation: md-sheet-peek 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-bottom-sheet-scrim--opening {
  animation: md-scrim-fade-in 200ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-bottom-sheet-scrim--closing {
  animation: md-scrim-fade-out 200ms cubic-bezier(0.3, 0.0, 0.8, 0.15) forwards;
}

/* Snap to detent: when drag ends, snap with spring-like easing */
.md-bottom-sheet--snapping {
  transition: transform 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0);
}

/* Swipe-to-dismiss velocity threshold: if downward velocity > 500px/s, dismiss */

@media (prefers-reduced-motion: reduce) {
  .md-bottom-sheet,
  .md-bottom-sheet-scrim,
  .md-bottom-sheet--opening,
  .md-bottom-sheet--closing,
  .md-bottom-sheet--peeking,
  .md-bottom-sheet-scrim--opening,
  .md-bottom-sheet-scrim--closing {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA (modal)**: `role="dialog"`, `aria-modal="true"`, `aria-labelledby` pointing to title
- **ARIA (standard)**: `role="complementary"`, `aria-label` describing purpose
- **Drag handle**: `role="slider"`, `aria-orientation="vertical"`, `aria-valuemin="0"` (hidden), `aria-valuemax="2"` (full), `aria-valuenow` tracks detent, `aria-valuetext` human-readable ("Peeking", "Half expanded", "Fully expanded")
- **Keyboard**: **Escape** closes modal sheet; **Tab** cycles focus within modal (focus trap); **Arrow Up/Down** on handle changes detent
- **Focus**: move focus to first focusable element on open; return focus to trigger on close
- **Touch target**: drag handle hit area minimum 48x48px (use padding on handle region)
- **Screen reader**: announce sheet title on open; announce detent changes via `aria-valuetext`
- **Swipe-to-dismiss**: ensure alternative close mechanism (button or Escape) for users who cannot swipe

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| <600px | Full width, all detents available, primary sheet pattern |
| 600-1024px | Full width or centered with max-width 640px |
| >1024px | Consider side sheet instead; if bottom sheet used, center with max-width 640px |

## Do / Don't

| Do | Don't |
|----|-------|
| Use modal for focused selections (e.g., share, sort) | Use for complex multi-step forms (use full-screen dialog) |
| Provide a visible drag handle for discoverability | Remove drag handle from modal sheets |
| Dismiss modal on scrim tap or swipe down | Block dismissal without providing a close button |
| Start at peek detent to show preview of content | Open directly to full height without user intent |
| Use standard sheet for persistent supplementary content | Use standard sheet when content requires full attention |
| Include a close button for accessibility | Rely solely on swipe gesture to dismiss |
