---
name: carousel
description: M3 multi-browse, uncontained, hero, and full-screen carousel layouts
metadata:
  tags: carousel, slider, gallery, image carousel, swipe, scroll
---

# Carousel -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Item gap | 8px |
| Indicator dot size | 8px diameter |
| Active indicator | 8px, #6750A4 (light), #D0BCFF (dark) |
| Inactive indicator | 8px, #CAC4D0 (light), #49454F (dark) |
| Corner radius (large items) | 12px |
| Corner radius (small items) | 8px |
| Navigation arrow size | 48x48px |
| Snap behavior | scroll-snap-type: x mandatory |
| Primary color (light) | #6750A4 |
| Primary color (dark) | #D0BCFF |

## Design Tokens

```css
:root {
  --md-carousel-indicator-active: #6750A4;
  --md-carousel-indicator-inactive: #CAC4D0;
  --md-carousel-arrow-bg: #FEF7FF;
  --md-carousel-arrow-icon: #49454F;
  --md-carousel-arrow-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
  --md-carousel-arrow-hover: rgba(29, 27, 32, 0.08);
  --md-carousel-arrow-focus: rgba(29, 27, 32, 0.10);
  --md-carousel-on-surface: #1D1B20;
  --md-carousel-on-surface-variant: #49454F;
  --md-carousel-surface: #FEF7FF;
  --md-carousel-item-radius-lg: 12px;
  --md-carousel-item-radius-sm: 8px;
  --md-carousel-gap: 8px;
  --md-carousel-transition: all 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-carousel-indicator-active: #D0BCFF;
    --md-carousel-indicator-inactive: #49454F;
    --md-carousel-arrow-bg: #141218;
    --md-carousel-arrow-icon: #CAC4D0;
    --md-carousel-arrow-hover: rgba(230, 224, 233, 0.08);
    --md-carousel-arrow-focus: rgba(230, 224, 233, 0.10);
    --md-carousel-on-surface: #E6E0E9;
    --md-carousel-on-surface-variant: #CAC4D0;
    --md-carousel-surface: #141218;
  }
}
.dark {
  --md-carousel-indicator-active: #D0BCFF;
  --md-carousel-indicator-inactive: #49454F;
  --md-carousel-arrow-bg: #141218;
  --md-carousel-arrow-icon: #CAC4D0;
  --md-carousel-arrow-hover: rgba(230, 224, 233, 0.08);
  --md-carousel-arrow-focus: rgba(230, 224, 233, 0.10);
  --md-carousel-on-surface: #E6E0E9;
  --md-carousel-on-surface-variant: #CAC4D0;
  --md-carousel-surface: #141218;
}
```

## Variants

| Variant | Items Visible | Item Sizing | Use Case |
|---------|---------------|-------------|----------|
| Multi-browse | 3-4+ equal items | Equal flex, all fully visible | Browsing product grids, article lists |
| Uncontained | 2-3 full + peek edges | Full items + partial peek items | Image galleries, media browsing |
| Hero | 1 large + small peek items | First item ~70% width, rest ~15% | Featured content, hero stories |
| Full-screen | 1 item fills width | 100% container width | Onboarding, full-bleed image slides |

## HTML Structure

```html
<!-- Multi-browse carousel -->
<div class="md-carousel md-carousel--multi-browse"
  role="region" aria-label="Featured articles"
  aria-roledescription="carousel">
  <div class="md-carousel__track">
    <div class="md-carousel__item" role="group"
      aria-roledescription="slide" aria-label="1 of 5">
      <img class="md-carousel__image" src="image1.jpg" alt="Description" />
      <div class="md-carousel__overlay">
        <span class="md-carousel__caption">Caption text</span>
      </div>
    </div>
    <div class="md-carousel__item" role="group"
      aria-roledescription="slide" aria-label="2 of 5">
      <img class="md-carousel__image" src="image2.jpg" alt="Description" />
      <div class="md-carousel__overlay">
        <span class="md-carousel__caption">Caption text</span>
      </div>
    </div>
    <!-- ...more items -->
  </div>
  <button class="md-carousel__arrow md-carousel__arrow--prev"
    type="button" aria-label="Previous slide">
    <!-- chevron_left svg -->
  </button>
  <button class="md-carousel__arrow md-carousel__arrow--next"
    type="button" aria-label="Next slide">
    <!-- chevron_right svg -->
  </button>
  <div class="md-carousel__indicators" role="tablist" aria-label="Slide indicators">
    <button class="md-carousel__dot md-carousel__dot--active"
      role="tab" aria-selected="true" aria-label="Slide 1" tabindex="0"></button>
    <button class="md-carousel__dot"
      role="tab" aria-selected="false" aria-label="Slide 2" tabindex="-1"></button>
    <button class="md-carousel__dot"
      role="tab" aria-selected="false" aria-label="Slide 3" tabindex="-1"></button>
  </div>
</div>

<!-- Hero carousel -->
<div class="md-carousel md-carousel--hero"
  role="region" aria-label="Featured stories"
  aria-roledescription="carousel">
  <div class="md-carousel__track">
    <div class="md-carousel__item md-carousel__item--hero" role="group"
      aria-roledescription="slide" aria-label="1 of 4">
      <img class="md-carousel__image" src="hero1.jpg" alt="Description" />
      <div class="md-carousel__overlay">
        <span class="md-carousel__caption">Hero caption</span>
      </div>
    </div>
    <div class="md-carousel__item md-carousel__item--peek" role="group"
      aria-roledescription="slide" aria-label="2 of 4">
      <img class="md-carousel__image" src="hero2.jpg" alt="Description" />
    </div>
    <!-- ...more items -->
  </div>
  <button class="md-carousel__arrow md-carousel__arrow--prev"
    type="button" aria-label="Previous slide" disabled aria-disabled="true">
    <!-- chevron_left svg -->
  </button>
  <button class="md-carousel__arrow md-carousel__arrow--next"
    type="button" aria-label="Next slide">
    <!-- chevron_right svg -->
  </button>
</div>

<!-- Full-screen carousel -->
<div class="md-carousel md-carousel--fullscreen"
  role="region" aria-label="Onboarding"
  aria-roledescription="carousel">
  <div class="md-carousel__track">
    <div class="md-carousel__item" role="group"
      aria-roledescription="slide" aria-label="Step 1 of 3">
      <img class="md-carousel__image" src="step1.jpg" alt="Description" />
    </div>
    <div class="md-carousel__item" role="group"
      aria-roledescription="slide" aria-label="Step 2 of 3">
      <img class="md-carousel__image" src="step2.jpg" alt="Description" />
    </div>
  </div>
  <div class="md-carousel__indicators" role="tablist" aria-label="Slide indicators">
    <button class="md-carousel__dot md-carousel__dot--active"
      role="tab" aria-selected="true" aria-label="Step 1" tabindex="0"></button>
    <button class="md-carousel__dot"
      role="tab" aria-selected="false" aria-label="Step 2" tabindex="-1"></button>
    <button class="md-carousel__dot"
      role="tab" aria-selected="false" aria-label="Step 3" tabindex="-1"></button>
  </div>
</div>

<!-- With auto-play and pause button -->
<div class="md-carousel md-carousel--multi-browse md-carousel--autoplay"
  role="region" aria-label="Promotions"
  aria-roledescription="carousel" aria-live="off">
  <div class="md-carousel__track">
    <!-- items -->
  </div>
  <button class="md-carousel__autoplay-toggle"
    type="button" aria-label="Pause auto-play">
    <!-- pause svg -->
  </button>
  <div class="md-carousel__indicators" role="tablist" aria-label="Slide indicators">
    <!-- dots -->
  </div>
</div>
```

## Complete CSS

```css
/* -- Base carousel -- */
.md-carousel {
  position: relative;
  width: 100%;
  font-family: Roboto, 'Noto Sans', sans-serif;
  -webkit-tap-highlight-color: transparent;
  user-select: none;
}

/* -- Track (scrollable container) -- */
.md-carousel__track {
  display: flex;
  gap: var(--md-carousel-gap);
  overflow-x: auto;
  scroll-snap-type: x mandatory;
  scroll-behavior: smooth;
  -webkit-overflow-scrolling: touch;
  scrollbar-width: none;
  padding: 0;
}
.md-carousel__track::-webkit-scrollbar { display: none; }

/* -- Item base -- */
.md-carousel__item {
  position: relative;
  flex-shrink: 0;
  overflow: hidden;
  border-radius: var(--md-carousel-item-radius-lg);
  scroll-snap-align: start;
  transition: var(--md-carousel-transition);
}

/* -- Image -- */
.md-carousel__image {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* -- Caption overlay -- */
.md-carousel__overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 16px;
  background: linear-gradient(transparent, rgba(0, 0, 0, 0.6));
  border-radius: 0 0 var(--md-carousel-item-radius-lg) var(--md-carousel-item-radius-lg);
}
.md-carousel__caption {
  font-size: 16px;
  font-weight: 500;
  line-height: 24px;
  color: #FFFFFF;
}

/* -- Multi-browse variant -- */
.md-carousel--multi-browse .md-carousel__item {
  flex: 1 0 calc((100% - var(--md-carousel-gap) * 2) / 3);
  min-width: calc((100% - var(--md-carousel-gap) * 2) / 3);
  aspect-ratio: 3 / 4;
}

/* -- Uncontained variant -- */
.md-carousel--uncontained {
  overflow: visible;
}
.md-carousel--uncontained .md-carousel__track {
  overflow: visible;
  clip-path: inset(0 -16px 0 0);
}
.md-carousel--uncontained .md-carousel__item {
  flex: 0 0 calc((100% - var(--md-carousel-gap)) / 2.2);
  min-width: calc((100% - var(--md-carousel-gap)) / 2.2);
  aspect-ratio: 3 / 4;
}

/* -- Hero variant -- */
.md-carousel--hero .md-carousel__item--hero {
  flex: 0 0 70%;
  min-width: 70%;
  aspect-ratio: 16 / 9;
}
.md-carousel--hero .md-carousel__item--peek {
  flex: 0 0 15%;
  min-width: 15%;
  aspect-ratio: 9 / 16;
  border-radius: var(--md-carousel-item-radius-sm);
}

/* -- Full-screen variant -- */
.md-carousel--fullscreen .md-carousel__item {
  flex: 0 0 100%;
  min-width: 100%;
  aspect-ratio: 16 / 9;
  border-radius: 0;
  scroll-snap-align: center;
}

/* -- Navigation arrows -- */
.md-carousel__arrow {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 48px;
  height: 48px;
  border: none;
  border-radius: 50%;
  background: var(--md-carousel-arrow-bg);
  color: var(--md-carousel-arrow-icon);
  box-shadow: var(--md-carousel-arrow-shadow);
  cursor: pointer;
  z-index: 2;
  transition: var(--md-carousel-transition);
  -webkit-tap-highlight-color: transparent;
}
.md-carousel__arrow--prev { left: 8px; }
.md-carousel__arrow--next { right: 8px; }
.md-carousel__arrow:hover {
  background: var(--md-carousel-arrow-bg);
}
.md-carousel__arrow:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-carousel-arrow-hover);
}
.md-carousel__arrow:focus-visible {
  outline: 2px solid var(--md-carousel-indicator-active);
  outline-offset: 2px;
}
.md-carousel__arrow:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-carousel-arrow-focus);
}
.md-carousel__arrow:active::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-carousel-arrow-focus);
}
.md-carousel__arrow:disabled,
.md-carousel__arrow[aria-disabled="true"] {
  opacity: 0.38;
  box-shadow: none;
  cursor: not-allowed;
  pointer-events: none;
}
.md-carousel__arrow svg,
.md-carousel__arrow img {
  width: 24px;
  height: 24px;
}

/* -- Indicator dots -- */
.md-carousel__indicators {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
  padding: 16px 0;
}
.md-carousel__dot {
  width: 8px;
  height: 8px;
  border: none;
  border-radius: 50%;
  background: var(--md-carousel-indicator-inactive);
  cursor: pointer;
  padding: 0;
  transition: var(--md-carousel-transition);
  min-width: 48px;
  min-height: 48px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  background-clip: content-box;
  /* Visual dot is 8px, touch target is 48px via min-width/height */
}
.md-carousel__dot::before {
  content: '';
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: var(--md-carousel-indicator-inactive);
  transition: var(--md-carousel-transition);
}
.md-carousel__dot {
  background: transparent;
}
.md-carousel__dot--active::before {
  background: var(--md-carousel-indicator-active);
  transform: scale(1.25);
}
.md-carousel__dot:focus-visible {
  outline: 2px solid var(--md-carousel-indicator-active);
  outline-offset: 2px;
  border-radius: 50%;
}

/* -- Auto-play toggle -- */
.md-carousel__autoplay-toggle {
  position: absolute;
  bottom: 16px;
  right: 16px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 48px;
  height: 48px;
  border: none;
  border-radius: 50%;
  background: var(--md-carousel-arrow-bg);
  color: var(--md-carousel-arrow-icon);
  box-shadow: var(--md-carousel-arrow-shadow);
  cursor: pointer;
  z-index: 2;
  transition: var(--md-carousel-transition);
}
.md-carousel__autoplay-toggle:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-carousel-arrow-hover);
}

/* -- Dark mode disabled arrows -- */
@media (prefers-color-scheme: dark) {
  .md-carousel__arrow:disabled,
  .md-carousel__arrow[aria-disabled="true"] {
    opacity: 0.38;
  }
}
.dark .md-carousel__arrow:disabled {
  opacity: 0.38;
}
```

## States Reference

| State | Arrow Background | Arrow Shadow | Indicator | Cursor |
|-------|-----------------|--------------|-----------|--------|
| Resting | #FEF7FF | level 2 | active: #6750A4, inactive: #CAC4D0 | pointer |
| Hover (arrow) | 8% #1D1B20 overlay | level 2 | -- | pointer |
| Focus (arrow) | 10% #1D1B20 overlay | level 2 | -- | pointer |
| Active (arrow) | 10% #1D1B20 overlay | level 2 | -- | pointer |
| Disabled (arrow) | #FEF7FF | none | -- | not-allowed |
| Scrolling | -- | -- | transitioning between dots | grab/grabbing |

## Animation & Motion

```css
/* Smooth scroll on track */
.md-carousel__track {
  scroll-behavior: smooth;
}

/* Indicator dot transition */
@keyframes md-carousel-dot-pulse {
  0% { transform: scale(1); }
  50% { transform: scale(1.4); }
  100% { transform: scale(1.25); }
}
.md-carousel__dot--active::before {
  animation: md-carousel-dot-pulse 200ms cubic-bezier(0.2, 0, 0, 1) forwards;
}

/* Item entrance (optional for JS-controlled carousels) */
@keyframes md-carousel-item-enter {
  from { opacity: 0; transform: scale(0.95); }
  to { opacity: 1; transform: scale(1); }
}

/* Arrow hover ripple */
@keyframes md-carousel-ripple {
  from { transform: scale(0); opacity: 0.12; }
  to { transform: scale(2); opacity: 0; }
}

/* Auto-play progress (optional ring around indicator) */
@keyframes md-carousel-autoplay-progress {
  from { stroke-dashoffset: 100; }
  to { stroke-dashoffset: 0; }
}

@media (prefers-reduced-motion: reduce) {
  .md-carousel__track {
    scroll-behavior: auto;
  }
  .md-carousel__dot::before,
  .md-carousel__dot--active::before,
  .md-carousel__arrow,
  .md-carousel__item {
    animation: none;
    transition: none;
  }
  /* Pause auto-play when reduced motion is preferred */
  .md-carousel--autoplay {
    --md-carousel-autoplay-paused: true;
  }
}
```

## Accessibility

- **ARIA**: `role="region"` with `aria-label` and `aria-roledescription="carousel"` on container, `role="group"` with `aria-roledescription="slide"` and `aria-label="X of Y"` on each item, `role="tablist"` on indicator container, `role="tab"` with `aria-selected` on each dot
- **Keyboard**: Left/Right arrows to navigate between slides, Tab to reach arrows and indicators, Enter/Space to activate arrow or indicator dot, Home/End to jump to first/last slide
- **Focus ring**: 2px solid primary, 2px offset on arrows and indicator dots
- **Touch target**: arrows 48x48px, indicator dots 48x48px touch target (8px visual), items swipeable with touch
- **Screen reader**: slide position announced via `aria-label` (e.g., "3 of 5"), live region optional for auto-play (`aria-live="polite"` when auto-advancing, `"off"` otherwise)
- **Auto-play**: must include a visible pause button, `aria-label="Pause auto-play"` / `"Resume auto-play"`, auto-play pauses on hover, focus, and when `prefers-reduced-motion: reduce` is active

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Full-screen or hero layout, swipe is primary interaction, arrows hidden (touch-first), indicators visible below |
| 600-1024px | Multi-browse with 2-3 visible items, arrows appear on hover, indicators visible |
| > 1024px | Multi-browse with 3-4 visible items, arrows always visible on hover, indicators visible, max-width constrained by layout grid |

## Do / Don't

| Do | Don't |
|----|-------|
| Use scroll-snap for native snapping behavior | Rely solely on JS-based scroll positioning |
| Provide both swipe and arrow navigation | Use only arrows without swipe support on touch |
| Include a pause button for auto-playing carousels | Auto-play without a way to stop it |
| Use `aria-roledescription="carousel"` and `"slide"` | Use generic `role="list"` for carousels |
| Show 8px dot indicators for slide position | Use numbers or text for slide indicators |
| Keep item aspect ratios consistent within a variant | Mix landscape and portrait items in one carousel |
| Lazy-load off-screen images | Load all carousel images eagerly on page load |
