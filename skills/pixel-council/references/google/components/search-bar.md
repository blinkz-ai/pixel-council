---
name: search-bar
description: M3 docked and full-screen search bar with suggestions and history
metadata:
  tags: search, search bar, search field, query, find, lookup
---

# Search Bar -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Height | 56px |
| Corner radius | 28px (full pill) |
| Leading icon | 24px (search icon), 48px touch target |
| Trailing icon | 24px (avatar/clear), 48px touch target |
| Font | Roboto, 16px/24px, weight 400, spacing 0.5px |
| Padding | 0 16px (horizontal), centered vertically |
| Background (light) | #ECE6F0 (Surface Container High) |
| Background (dark) | #2B2930 |
| Suggestion item height | 48px |
| Primary color (light) | #6750A4 |
| Primary color (dark) | #D0BCFF |

## Design Tokens

```css
:root {
  --md-search-bg: #ECE6F0;
  --md-search-text: #1D1B20;
  --md-search-placeholder: #49454F;
  --md-search-icon: #49454F;
  --md-search-suggestion-bg: #F3EDF7;
  --md-search-suggestion-hover: rgba(29, 27, 32, 0.08);
  --md-search-divider: #CAC4D0;
  --md-search-primary: #6750A4;
  --md-search-radius: 28px;
  --md-search-shadow-1: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15);
  --md-search-shadow-2: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
  --md-search-transition: all 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-search-bg: #2B2930;
    --md-search-text: #E6E0E9;
    --md-search-placeholder: #CAC4D0;
    --md-search-icon: #CAC4D0;
    --md-search-suggestion-bg: #211F26;
    --md-search-suggestion-hover: rgba(230, 224, 233, 0.08);
    --md-search-divider: #49454F;
    --md-search-primary: #D0BCFF;
  }
}
.dark {
  --md-search-bg: #2B2930;
  --md-search-text: #E6E0E9;
  --md-search-placeholder: #CAC4D0;
  --md-search-icon: #CAC4D0;
  --md-search-suggestion-bg: #211F26;
  --md-search-suggestion-hover: rgba(230, 224, 233, 0.08);
  --md-search-divider: #49454F;
  --md-search-primary: #D0BCFF;
}
```

## Variants

| Variant | Background (L) | Background (D) | Shadow | Use Case |
|---------|----------------|----------------|--------|----------|
| Docked | #ECE6F0 | #2B2930 | none (resting), level 1 (expanded) | Always-visible search in app bars |
| Full-screen | #F3EDF7 | #211F26 | none (fills screen) | Mobile search experience |
| Search view | #F3EDF7 | #211F26 | level 2 (dropdown panel) | Expanded docked with results |

## HTML Structure

```html
<!-- Docked search bar -->
<form class="md-search" role="search" aria-label="Site search">
  <div class="md-search__bar">
    <span class="md-search__icon md-search__icon--leading" aria-hidden="true">
      <!-- search svg -->
    </span>
    <input class="md-search__input" type="search" role="searchbox"
      placeholder="Search" aria-label="Search"
      aria-expanded="false" aria-controls="search-suggestions"
      aria-autocomplete="list" aria-activedescendant="" />
    <button class="md-search__icon md-search__icon--trailing md-search__clear"
      type="button" aria-label="Clear search" hidden>
      <!-- close svg -->
    </button>
    <button class="md-search__icon md-search__icon--trailing md-search__avatar"
      type="button" aria-label="Account">
      <!-- avatar img or icon -->
    </button>
  </div>
  <div class="md-search__suggestions" id="search-suggestions"
    role="listbox" aria-label="Search suggestions" hidden>
    <div class="md-search__divider"></div>
    <div class="md-search__suggestion" role="option" id="suggestion-1" aria-selected="false">
      <span class="md-search__suggestion-icon" aria-hidden="true"><!-- history/trending svg --></span>
      <span class="md-search__suggestion-text">Recent search</span>
    </div>
    <div class="md-search__suggestion" role="option" id="suggestion-2" aria-selected="false">
      <span class="md-search__suggestion-icon" aria-hidden="true"><!-- history/trending svg --></span>
      <span class="md-search__suggestion-text">Another search</span>
    </div>
  </div>
</form>

<!-- Full-screen search (mobile) -->
<div class="md-search md-search--fullscreen" role="dialog" aria-label="Search" aria-modal="true">
  <div class="md-search__bar">
    <button class="md-search__icon md-search__icon--leading" type="button" aria-label="Go back">
      <!-- arrow_back svg -->
    </button>
    <input class="md-search__input" type="search" role="searchbox"
      placeholder="Search" aria-label="Search"
      aria-expanded="true" aria-controls="fs-suggestions"
      aria-autocomplete="list" aria-activedescendant="" autofocus />
    <button class="md-search__icon md-search__icon--trailing md-search__clear"
      type="button" aria-label="Clear search" hidden>
      <!-- close svg -->
    </button>
  </div>
  <div class="md-search__divider"></div>
  <div class="md-search__suggestions" id="fs-suggestions"
    role="listbox" aria-label="Search suggestions">
    <div class="md-search__suggestion" role="option" id="fs-suggestion-1" aria-selected="false">
      <span class="md-search__suggestion-icon" aria-hidden="true"><!-- svg --></span>
      <span class="md-search__suggestion-text">Suggestion</span>
    </div>
  </div>
</div>

<!-- With loading state -->
<form class="md-search md-search--loading" role="search" aria-label="Site search">
  <div class="md-search__bar">
    <span class="md-search__icon md-search__icon--leading" aria-hidden="true">
      <!-- search svg -->
    </span>
    <input class="md-search__input" type="search" role="searchbox"
      placeholder="Search" aria-label="Search" aria-busy="true" />
    <span class="md-search__spinner" role="progressbar" aria-label="Searching"></span>
  </div>
</form>
```

## Complete CSS

```css
/* -- Base bar -- */
.md-search {
  position: relative;
  display: flex;
  flex-direction: column;
  width: 100%;
  max-width: 720px;
  font-family: Roboto, 'Noto Sans', sans-serif;
}
.md-search__bar {
  position: relative;
  display: flex;
  align-items: center;
  height: 56px;
  padding: 0 16px;
  background: var(--md-search-bg);
  border-radius: var(--md-search-radius);
  transition: var(--md-search-transition);
  -webkit-tap-highlight-color: transparent;
}

/* -- Input -- */
.md-search__input {
  flex: 1;
  width: 100%;
  border: none;
  outline: none;
  background: transparent;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 16px;
  font-weight: 400;
  line-height: 24px;
  letter-spacing: 0.5px;
  color: var(--md-search-text);
  padding: 0 8px;
  caret-color: var(--md-search-primary);
}
.md-search__input::placeholder {
  color: var(--md-search-placeholder);
}
.md-search__input::-webkit-search-cancel-button {
  -webkit-appearance: none;
  display: none;
}

/* -- Icons -- */
.md-search__icon {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 24px;
  height: 24px;
  min-width: 48px;
  min-height: 48px;
  color: var(--md-search-icon);
  background: transparent;
  border: none;
  border-radius: 50%;
  cursor: pointer;
  flex-shrink: 0;
  padding: 0;
  transition: var(--md-search-transition);
}
.md-search__icon:hover {
  background: var(--md-search-suggestion-hover);
}
.md-search__icon--leading {
  margin-right: 4px;
  cursor: default;
}
.md-search__icon--trailing {
  margin-left: 4px;
}
.md-search__avatar {
  border-radius: 50%;
  overflow: hidden;
}

/* -- Clear button visibility -- */
.md-search__clear[hidden] { display: none; }

/* -- Suggestions panel -- */
.md-search__suggestions {
  background: var(--md-search-suggestion-bg);
  border-radius: 0 0 var(--md-search-radius) var(--md-search-radius);
  overflow: hidden;
  max-height: 0;
  opacity: 0;
  transition: max-height 200ms cubic-bezier(0.2, 0, 0, 1),
              opacity 150ms cubic-bezier(0.2, 0, 0, 1);
}
.md-search__suggestions[hidden] { display: none; }

/* -- Expanded state (suggestions visible) -- */
.md-search[aria-expanded="true"] .md-search__bar,
.md-search.md-search--expanded .md-search__bar {
  border-radius: var(--md-search-radius) var(--md-search-radius) 0 0;
  box-shadow: var(--md-search-shadow-1);
}
.md-search[aria-expanded="true"] .md-search__suggestions,
.md-search.md-search--expanded .md-search__suggestions {
  max-height: 400px;
  opacity: 1;
  box-shadow: var(--md-search-shadow-2);
}

/* -- Divider -- */
.md-search__divider {
  height: 1px;
  background: var(--md-search-divider);
  margin: 0 16px;
}

/* -- Suggestion items -- */
.md-search__suggestion {
  display: flex;
  align-items: center;
  height: 48px;
  padding: 0 16px;
  cursor: pointer;
  transition: background 150ms cubic-bezier(0.2, 0, 0, 1);
}
.md-search__suggestion:hover {
  background: var(--md-search-suggestion-hover);
}
.md-search__suggestion[aria-selected="true"] {
  background: var(--md-search-suggestion-hover);
}
.md-search__suggestion-icon {
  width: 24px;
  height: 24px;
  color: var(--md-search-icon);
  margin-right: 16px;
  flex-shrink: 0;
}
.md-search__suggestion-text {
  font-size: 16px;
  font-weight: 400;
  line-height: 24px;
  color: var(--md-search-text);
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

/* -- Full-screen variant -- */
.md-search--fullscreen {
  position: fixed;
  inset: 0;
  max-width: none;
  z-index: 1000;
  background: var(--md-search-suggestion-bg);
}
.md-search--fullscreen .md-search__bar {
  border-radius: 0;
  background: var(--md-search-suggestion-bg);
}
.md-search--fullscreen .md-search__suggestions {
  max-height: none;
  opacity: 1;
  border-radius: 0;
  overflow-y: auto;
  flex: 1;
}

/* -- Focus ring -- */
.md-search__input:focus-visible {
  outline: none;
}
.md-search__bar:focus-within {
  outline: 2px solid var(--md-search-primary);
  outline-offset: 2px;
}
.md-search[aria-expanded="true"] .md-search__bar:focus-within,
.md-search.md-search--expanded .md-search__bar:focus-within {
  outline: none;
}

/* -- Hover on bar -- */
.md-search__bar:hover {
  box-shadow: var(--md-search-shadow-1);
}

/* -- Disabled -- */
.md-search--disabled .md-search__bar {
  background: rgba(29, 27, 32, 0.12);
  pointer-events: none;
}
.md-search--disabled .md-search__input,
.md-search--disabled .md-search__icon {
  opacity: 0.38;
}

/* -- Loading -- */
.md-search--loading .md-search__icon--trailing { display: none; }
.md-search__spinner {
  width: 24px;
  height: 24px;
  border: 2.5px solid var(--md-search-primary);
  border-right-color: transparent;
  border-radius: 50%;
  animation: md-search-spin 600ms linear infinite;
  flex-shrink: 0;
  margin-left: 4px;
}

/* -- Dark mode -- */
@media (prefers-color-scheme: dark) {
  .md-search--disabled .md-search__bar {
    background: rgba(230, 224, 233, 0.12);
  }
}
.dark .md-search--disabled .md-search__bar {
  background: rgba(230, 224, 233, 0.12);
}
```

## States Reference

| State | Background | Shadow | Clear Icon | Cursor |
|-------|-----------|--------|------------|--------|
| Resting | #ECE6F0 | none | hidden | text |
| Hover | #ECE6F0 | level 1 | hidden | text |
| Focused | #ECE6F0 | none | hidden | text |
| Expanded (suggestions) | #ECE6F0 (bar) / #F3EDF7 (panel) | level 1 (bar) / level 2 (panel) | visible (if text) | text |
| With text | #ECE6F0 | varies | visible | text |
| Loading | #ECE6F0 | varies | hidden (spinner shown) | wait |
| Disabled | 12% #1D1B20 | none | hidden | not-allowed |

## Animation & Motion

```css
@keyframes md-search-spin {
  to { transform: rotate(360deg); }
}

/* Suggestions panel expand */
@keyframes md-search-expand {
  from { max-height: 0; opacity: 0; }
  to { max-height: 400px; opacity: 1; }
}

/* Full-screen morph: bar grows to fill screen */
@keyframes md-search-fullscreen-enter {
  from {
    position: fixed;
    top: var(--md-search-bar-top, 16px);
    left: var(--md-search-bar-left, 16px);
    right: var(--md-search-bar-right, 16px);
    bottom: auto;
    height: 56px;
    border-radius: var(--md-search-radius);
    opacity: 0.8;
  }
  to {
    position: fixed;
    top: 0; left: 0; right: 0; bottom: 0;
    height: 100%;
    border-radius: 0;
    opacity: 1;
  }
}
.md-search--fullscreen {
  animation: md-search-fullscreen-enter 300ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}

/* Clear icon fade-in */
.md-search__clear {
  animation: md-search-fade-in 150ms cubic-bezier(0.2, 0, 0, 1) forwards;
}
@keyframes md-search-fade-in {
  from { opacity: 0; transform: scale(0.8); }
  to { opacity: 1; transform: scale(1); }
}

@media (prefers-reduced-motion: reduce) {
  .md-search__bar,
  .md-search__suggestions,
  .md-search__suggestion,
  .md-search__spinner,
  .md-search__clear,
  .md-search--fullscreen {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA**: `role="search"` on `<form>`, `role="searchbox"` on `<input>` (or `type="search"`), `aria-expanded` on input when suggestions visible, `aria-activedescendant` for highlighted suggestion, `role="listbox"` on suggestions container, `role="option"` on each suggestion, `aria-selected="true"` on active suggestion
- **Keyboard**: Tab to focus bar, type to search, Arrow Down/Up to navigate suggestions, Enter to select suggestion, Escape to close suggestions / exit full-screen
- **Focus ring**: 2px solid primary, 2px offset on bar (hidden when expanded since panel provides visual context)
- **Touch target**: icons min 48x48px (meets WCAG 2.5.8), suggestion items 48px height
- **Screen reader**: loading state announced via `aria-busy`, suggestion count conveyed via `aria-label` on listbox (e.g., "5 suggestions available"), `role="dialog"` with `aria-modal="true"` on full-screen variant

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Full-screen on focus: bar morphs to fill viewport, suggestions scroll vertically, back arrow replaces search icon |
| 600-1024px | Docked with dropdown suggestions panel, max-width 100% of container |
| > 1024px | Docked, max-width ~720px, centered or aligned to layout grid, suggestions dropdown |

## Do / Don't

| Do | Don't |
|----|-------|
| Use a pill shape with Surface Container High background | Add a visible border to the resting bar |
| Show a clear (X) icon once the user types | Keep the avatar/trailing icon when clear should appear |
| Morph to full-screen on small viewports | Show a dropdown overlay on phones (it clips) |
| Pre-populate suggestions from search history | Show an empty suggestions panel |
| Use `type="search"` or `role="searchbox"` on the input | Use a generic `type="text"` without search semantics |
| Provide Escape to close suggestions and full-screen | Trap focus inside suggestions with no escape route |
