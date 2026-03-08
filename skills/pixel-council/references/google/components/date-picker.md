---
name: date-picker
description: M3 modal, docked, and input date pickers with calendar grid and range selection
metadata:
  tags: date picker, calendar, date input, date range, schedule, date selection
---

# Date Picker -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Calendar day cell | 40x40px |
| Calendar grid | 7 columns (Sun-Sat) |
| Grid cell size | 48x48px (touch target wrapping 40px circle) |
| Header height | 64px |
| Month/year title font | Roboto, 14px/20px, weight 500, spacing 0.1px |
| Day number font | Roboto, 14px/20px, weight 400 |
| Weekday header font | Roboto, 12px/16px, weight 500 |
| Selected day | 40x40px circle, Primary bg |
| Today indicator | 40x40px circle, 1px border Primary, no fill |
| Container width (single) | 328px |
| Container width (range) | ~640px (dual month side-by-side) |
| Container corner radius | 28px |
| Container padding | 0 0 8px 0 |
| Header padding | 16px 12px 12px 24px |
| Navigation icon button | 48x48px touch target |
| Container background (light) | #F3EDF7 |
| Container background (dark) | #211F26 |
| Primary color (light) | #6750A4 |
| Primary color (dark) | #D0BCFF |

## Design Tokens

```css
:root {
  --md-date-picker-bg: #F3EDF7;
  --md-date-picker-header-bg: #ECE6F0;
  --md-date-picker-text: #1D1B20;
  --md-date-picker-day: #1D1B20;
  --md-date-picker-selected-bg: #6750A4;
  --md-date-picker-selected-text: #FFFFFF;
  --md-date-picker-today-border: #6750A4;
  --md-date-picker-range-bg: #E8DEF8;
  --md-date-picker-range-on: #1D192B;
  --md-date-picker-disabled: rgba(29, 27, 32, 0.38);
  --md-date-picker-disabled-bg: rgba(29, 27, 32, 0.12);
  --md-date-picker-hover: rgba(29, 27, 32, 0.08);
  --md-date-picker-focus: rgba(29, 27, 32, 0.10);
  --md-date-picker-weekday: #49454F;
  --md-date-picker-out-of-month: rgba(29, 27, 32, 0.38);
  --md-date-picker-primary: #6750A4;
  --md-date-picker-on-primary: #FFFFFF;
  --md-date-picker-surface-variant: #E7E0EC;
  --md-date-picker-outline: #79747E;
  --md-date-picker-on-surface: #1D1B20;
  --md-date-picker-on-surface-variant: #49454F;
  --md-date-picker-shadow-1: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15);
  --md-date-picker-shadow-2: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
  --md-date-picker-radius: 28px;
  --md-date-picker-day-radius: 9999px;
  --md-date-picker-transition: all 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-date-picker-bg: #211F26;
    --md-date-picker-header-bg: #2B2930;
    --md-date-picker-text: #E6E0E9;
    --md-date-picker-day: #E6E0E9;
    --md-date-picker-selected-bg: #D0BCFF;
    --md-date-picker-selected-text: #381E72;
    --md-date-picker-today-border: #D0BCFF;
    --md-date-picker-range-bg: #4A4458;
    --md-date-picker-range-on: #E8DEF8;
    --md-date-picker-disabled: rgba(230, 224, 233, 0.38);
    --md-date-picker-disabled-bg: rgba(230, 224, 233, 0.12);
    --md-date-picker-hover: rgba(230, 224, 233, 0.08);
    --md-date-picker-focus: rgba(230, 224, 233, 0.10);
    --md-date-picker-weekday: #CAC4D0;
    --md-date-picker-out-of-month: rgba(230, 224, 233, 0.38);
    --md-date-picker-primary: #D0BCFF;
    --md-date-picker-on-primary: #381E72;
    --md-date-picker-surface-variant: #49454F;
    --md-date-picker-outline: #938F99;
    --md-date-picker-on-surface: #E6E0E9;
    --md-date-picker-on-surface-variant: #CAC4D0;
  }
}
.dark {
  --md-date-picker-bg: #211F26;
  --md-date-picker-header-bg: #2B2930;
  --md-date-picker-text: #E6E0E9;
  --md-date-picker-day: #E6E0E9;
  --md-date-picker-selected-bg: #D0BCFF;
  --md-date-picker-selected-text: #381E72;
  --md-date-picker-today-border: #D0BCFF;
  --md-date-picker-range-bg: #4A4458;
  --md-date-picker-range-on: #E8DEF8;
  --md-date-picker-disabled: rgba(230, 224, 233, 0.38);
  --md-date-picker-disabled-bg: rgba(230, 224, 233, 0.12);
  --md-date-picker-hover: rgba(230, 224, 233, 0.08);
  --md-date-picker-focus: rgba(230, 224, 233, 0.10);
  --md-date-picker-weekday: #CAC4D0;
  --md-date-picker-out-of-month: rgba(230, 224, 233, 0.38);
  --md-date-picker-primary: #D0BCFF;
  --md-date-picker-on-primary: #381E72;
  --md-date-picker-surface-variant: #49454F;
  --md-date-picker-outline: #938F99;
  --md-date-picker-on-surface: #E6E0E9;
  --md-date-picker-on-surface-variant: #CAC4D0;
}
```

## Variants

| Variant | Container | Width | Trigger | Use Case |
|---------|-----------|-------|---------|----------|
| Modal | Dialog overlay with scrim | 328px | Button/icon opens dialog | Mobile-first, primary action |
| Docked | Inline in page flow | 328px | Always visible | Desktop sidebar, form embedded |
| Input | Text field + popup calendar | 328px popup | Focus/icon on text field | Compact forms, typed entry |
| Range | Dual-month dialog | ~640px | Button/icon opens dialog | Start-end date selection |

## HTML Structure

```html
<!-- Modal Date Picker -->
<div class="md-date-picker-scrim" aria-hidden="true"></div>
<dialog class="md-date-picker md-date-picker--modal" role="dialog" aria-modal="true" aria-label="Select date">
  <div class="md-date-picker__header">
    <span class="md-date-picker__headline">Select date</span>
    <span class="md-date-picker__selected-date">Fri, Oct 13</span>
    <button class="md-date-picker__mode-toggle" type="button" aria-label="Switch to keyboard input">
      <!-- edit/keyboard icon svg -->
    </button>
  </div>

  <div class="md-date-picker__calendar">
    <div class="md-date-picker__nav">
      <button class="md-date-picker__nav-btn" type="button" aria-label="Previous month">
        <!-- chevron_left svg -->
      </button>
      <button class="md-date-picker__month-year" type="button" aria-label="October 2024, open year selector">
        <span>October 2024</span>
        <!-- arrow_drop_down svg -->
      </button>
      <button class="md-date-picker__nav-btn" type="button" aria-label="Next month">
        <!-- chevron_right svg -->
      </button>
    </div>

    <table class="md-date-picker__grid" role="grid" aria-label="October 2024">
      <thead>
        <tr class="md-date-picker__weekdays">
          <th class="md-date-picker__weekday" scope="col" abbr="Sunday">S</th>
          <th class="md-date-picker__weekday" scope="col" abbr="Monday">M</th>
          <th class="md-date-picker__weekday" scope="col" abbr="Tuesday">T</th>
          <th class="md-date-picker__weekday" scope="col" abbr="Wednesday">W</th>
          <th class="md-date-picker__weekday" scope="col" abbr="Thursday">T</th>
          <th class="md-date-picker__weekday" scope="col" abbr="Friday">F</th>
          <th class="md-date-picker__weekday" scope="col" abbr="Saturday">S</th>
        </tr>
      </thead>
      <tbody>
        <tr class="md-date-picker__week">
          <td class="md-date-picker__cell md-date-picker__cell--outside" role="gridcell">
            <button class="md-date-picker__day" type="button" tabindex="-1" aria-disabled="true">30</button>
          </td>
          <td class="md-date-picker__cell" role="gridcell">
            <button class="md-date-picker__day" type="button" tabindex="-1">1</button>
          </td>
          <!-- ... more days ... -->
          <td class="md-date-picker__cell md-date-picker__cell--today" role="gridcell">
            <button class="md-date-picker__day md-date-picker__day--today" type="button" tabindex="0" aria-current="date">13</button>
          </td>
          <td class="md-date-picker__cell md-date-picker__cell--selected" role="gridcell">
            <button class="md-date-picker__day md-date-picker__day--selected" type="button" tabindex="0" aria-selected="true">14</button>
          </td>
          <!-- ... more days ... -->
        </tr>
        <!-- ... more weeks ... -->
      </tbody>
    </table>
  </div>

  <div class="md-date-picker__actions">
    <button class="md-button md-button--text" type="button">Cancel</button>
    <button class="md-button md-button--text" type="button">OK</button>
  </div>
</dialog>

<!-- Docked Date Picker (inline) -->
<div class="md-date-picker md-date-picker--docked" role="group" aria-label="Select date">
  <!-- Same calendar internals, no dialog wrapper or actions -->
  <div class="md-date-picker__nav"><!-- ... --></div>
  <table class="md-date-picker__grid" role="grid" aria-label="October 2024">
    <!-- ... same grid structure ... -->
  </table>
</div>

<!-- Input Date Picker -->
<div class="md-date-picker md-date-picker--input">
  <div class="md-text-field md-text-field--outlined">
    <input type="text" class="md-text-field__input" placeholder="MM/DD/YYYY" aria-label="Date" inputmode="numeric" />
    <button class="md-text-field__trailing-icon" type="button" aria-label="Open calendar">
      <!-- calendar_today svg -->
    </button>
  </div>
  <dialog class="md-date-picker__popup" role="dialog" aria-modal="true" aria-label="Select date">
    <!-- Same calendar internals -->
  </dialog>
</div>

<!-- Range Date Picker -->
<dialog class="md-date-picker md-date-picker--range" role="dialog" aria-modal="true" aria-label="Select date range">
  <div class="md-date-picker__header">
    <span class="md-date-picker__headline">Select date range</span>
    <div class="md-date-picker__range-inputs">
      <input type="text" class="md-date-picker__range-start" placeholder="Start date" aria-label="Start date" />
      <span class="md-date-picker__range-separator">-</span>
      <input type="text" class="md-date-picker__range-end" placeholder="End date" aria-label="End date" />
    </div>
  </div>
  <div class="md-date-picker__range-calendars">
    <div class="md-date-picker__calendar md-date-picker__calendar--start">
      <!-- Month 1 grid -->
    </div>
    <div class="md-date-picker__calendar md-date-picker__calendar--end">
      <!-- Month 2 grid -->
    </div>
  </div>
  <div class="md-date-picker__actions">
    <button class="md-button md-button--text" type="button">Cancel</button>
    <button class="md-button md-button--text" type="button">Save</button>
  </div>
</dialog>

<!-- Year Selector (overlay within date picker) -->
<div class="md-date-picker__year-selector" role="listbox" aria-label="Select year">
  <button class="md-date-picker__year" role="option" tabindex="-1">2020</button>
  <button class="md-date-picker__year" role="option" tabindex="-1">2021</button>
  <button class="md-date-picker__year" role="option" tabindex="-1">2022</button>
  <button class="md-date-picker__year" role="option" tabindex="-1">2023</button>
  <button class="md-date-picker__year md-date-picker__year--selected" role="option" aria-selected="true" tabindex="0">2024</button>
  <button class="md-date-picker__year" role="option" tabindex="-1">2025</button>
  <!-- ... more years ... -->
</div>

<!-- Disabled date -->
<td class="md-date-picker__cell md-date-picker__cell--disabled" role="gridcell">
  <button class="md-date-picker__day" type="button" disabled aria-disabled="true" tabindex="-1">25</button>
</td>
```

## Complete CSS

```css
/* -- Scrim -- */
.md-date-picker-scrim {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.32);
  z-index: 999;
  opacity: 0;
  pointer-events: none;
  transition: opacity 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}
.md-date-picker-scrim.active {
  opacity: 1;
  pointer-events: auto;
}

/* -- Container -- */
.md-date-picker {
  background: var(--md-date-picker-bg);
  border-radius: var(--md-date-picker-radius);
  overflow: hidden;
  font-family: Roboto, 'Noto Sans', sans-serif;
  color: var(--md-date-picker-text);
  border: none;
  padding: 0;
  box-shadow: var(--md-date-picker-shadow-2);
}
.md-date-picker--modal {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 1000;
  width: 328px;
  max-height: 568px;
}
.md-date-picker--docked {
  position: relative;
  width: 328px;
  box-shadow: none;
  border: 1px solid var(--md-date-picker-outline);
}
.md-date-picker--range {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 1000;
  width: 640px;
  max-height: 568px;
}

/* -- Header -- */
.md-date-picker__header {
  background: var(--md-date-picker-header-bg);
  padding: 16px 12px 12px 24px;
  min-height: 64px;
  display: flex;
  flex-direction: column;
  gap: 4px;
}
.md-date-picker__headline {
  font-size: 12px;
  font-weight: 500;
  line-height: 16px;
  letter-spacing: 0.5px;
  color: var(--md-date-picker-on-surface-variant);
  text-transform: uppercase;
}
.md-date-picker__selected-date {
  font-size: 32px;
  font-weight: 400;
  line-height: 40px;
  color: var(--md-date-picker-on-surface);
}
.md-date-picker__mode-toggle {
  position: absolute;
  top: 16px;
  right: 12px;
  width: 48px;
  height: 48px;
  border: none;
  border-radius: 9999px;
  background: transparent;
  color: var(--md-date-picker-on-surface-variant);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
}
.md-date-picker__mode-toggle:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface-variant);
  opacity: 0.08;
}

/* -- Navigation -- */
.md-date-picker__nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 4px 4px 0 4px;
  height: 48px;
}
.md-date-picker__nav-btn {
  width: 48px;
  height: 48px;
  border: none;
  border-radius: 9999px;
  background: transparent;
  color: var(--md-date-picker-on-surface-variant);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  overflow: hidden;
  transition: var(--md-date-picker-transition);
}
.md-date-picker__nav-btn:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface-variant);
  opacity: 0.08;
}
.md-date-picker__nav-btn:focus-visible {
  outline: 2px solid var(--md-date-picker-primary);
  outline-offset: 2px;
}
.md-date-picker__month-year {
  border: none;
  background: transparent;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  letter-spacing: 0.1px;
  color: var(--md-date-picker-on-surface-variant);
  cursor: pointer;
  display: inline-flex;
  align-items: center;
  gap: 4px;
  padding: 8px 12px;
  border-radius: 9999px;
  position: relative;
}
.md-date-picker__month-year:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface-variant);
  opacity: 0.08;
}

/* -- Calendar Grid -- */
.md-date-picker__grid {
  width: 100%;
  border-collapse: collapse;
  table-layout: fixed;
  padding: 0 12px 8px;
}
.md-date-picker__weekdays {
  height: 48px;
}
.md-date-picker__weekday {
  font-size: 12px;
  font-weight: 500;
  line-height: 16px;
  letter-spacing: 0.5px;
  color: var(--md-date-picker-weekday);
  text-align: center;
  padding: 0;
  width: calc(328px / 7);
}

/* -- Day Cells -- */
.md-date-picker__cell {
  text-align: center;
  padding: 2px;
  height: 48px;
  vertical-align: middle;
}
.md-date-picker__day {
  width: 40px;
  height: 40px;
  border: none;
  border-radius: var(--md-date-picker-day-radius);
  background: transparent;
  color: var(--md-date-picker-day);
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 400;
  line-height: 20px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: var(--md-date-picker-transition);
  display: inline-flex;
  align-items: center;
  justify-content: center;
}

/* -- Day: Hover -- */
.md-date-picker__day:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface);
  opacity: 0.08;
}

/* -- Day: Focus -- */
.md-date-picker__day:focus-visible {
  outline: 2px solid var(--md-date-picker-primary);
  outline-offset: 2px;
}
.md-date-picker__day:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface);
  opacity: 0.10;
}

/* -- Day: Active -- */
.md-date-picker__day:active::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface);
  opacity: 0.10;
}

/* -- Day: Today -- */
.md-date-picker__day--today {
  border: 1px solid var(--md-date-picker-today-border);
  color: var(--md-date-picker-primary);
  font-weight: 500;
}

/* -- Day: Selected -- */
.md-date-picker__day--selected {
  background: var(--md-date-picker-selected-bg);
  color: var(--md-date-picker-selected-text);
  font-weight: 500;
}
.md-date-picker__day--selected:hover::after {
  background: var(--md-date-picker-selected-text);
  opacity: 0.08;
}
.md-date-picker__day--selected:focus-visible::after {
  background: var(--md-date-picker-selected-text);
  opacity: 0.10;
}
.md-date-picker__day--selected:active::after {
  background: var(--md-date-picker-selected-text);
  opacity: 0.10;
}

/* -- Day: In-Range -- */
.md-date-picker__cell--in-range {
  background: var(--md-date-picker-range-bg);
}
.md-date-picker__cell--in-range .md-date-picker__day {
  color: var(--md-date-picker-range-on);
}
.md-date-picker__cell--range-start {
  border-radius: 9999px 0 0 9999px;
  background: var(--md-date-picker-range-bg);
}
.md-date-picker__cell--range-end {
  border-radius: 0 9999px 9999px 0;
  background: var(--md-date-picker-range-bg);
}
.md-date-picker__cell--range-start .md-date-picker__day,
.md-date-picker__cell--range-end .md-date-picker__day {
  background: var(--md-date-picker-selected-bg);
  color: var(--md-date-picker-selected-text);
  font-weight: 500;
}

/* -- Day: Outside Month -- */
.md-date-picker__cell--outside .md-date-picker__day {
  color: var(--md-date-picker-out-of-month);
}

/* -- Day: Disabled -- */
.md-date-picker__day:disabled,
.md-date-picker__day[aria-disabled="true"] {
  color: var(--md-date-picker-disabled);
  cursor: not-allowed;
  pointer-events: none;
}

/* -- Focus ring (all interactive) -- */
.md-date-picker__nav-btn:focus-visible,
.md-date-picker__month-year:focus-visible,
.md-date-picker__mode-toggle:focus-visible {
  outline: 2px solid var(--md-date-picker-primary);
  outline-offset: 2px;
}

/* -- Year Selector -- */
.md-date-picker__year-selector {
  position: absolute;
  inset: 64px 0 52px 0;
  background: var(--md-date-picker-bg);
  overflow-y: auto;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 4px;
  padding: 8px 24px;
  z-index: 1;
}
.md-date-picker__year {
  border: none;
  border-radius: 9999px;
  background: transparent;
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 400;
  line-height: 20px;
  color: var(--md-date-picker-on-surface);
  height: 36px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: var(--md-date-picker-transition);
}
.md-date-picker__year:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-date-picker-on-surface);
  opacity: 0.08;
}
.md-date-picker__year--selected {
  background: var(--md-date-picker-selected-bg);
  color: var(--md-date-picker-selected-text);
  font-weight: 500;
}
.md-date-picker__year--selected:hover::after {
  background: var(--md-date-picker-selected-text);
  opacity: 0.08;
}

/* -- Range Inputs -- */
.md-date-picker__range-inputs {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-top: 4px;
}
.md-date-picker__range-start,
.md-date-picker__range-end {
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 24px;
  font-weight: 400;
  line-height: 32px;
  color: var(--md-date-picker-on-surface);
  background: transparent;
  border: none;
  border-bottom: 1px solid var(--md-date-picker-outline);
  padding: 4px 0;
  width: 120px;
}
.md-date-picker__range-start:focus,
.md-date-picker__range-end:focus {
  outline: none;
  border-bottom-color: var(--md-date-picker-primary);
  border-bottom-width: 2px;
}
.md-date-picker__range-separator {
  font-size: 24px;
  color: var(--md-date-picker-on-surface-variant);
}

/* -- Range Dual Calendars -- */
.md-date-picker__range-calendars {
  display: flex;
  gap: 0;
}
.md-date-picker__range-calendars .md-date-picker__calendar {
  flex: 1;
}

/* -- Actions -- */
.md-date-picker__actions {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
  padding: 8px 12px;
}

/* -- Input Variant -- */
.md-date-picker--input {
  position: relative;
  box-shadow: none;
  background: transparent;
  border-radius: 0;
}
.md-date-picker__popup {
  position: absolute;
  top: 100%;
  left: 0;
  margin-top: 4px;
  width: 328px;
  background: var(--md-date-picker-bg);
  border-radius: var(--md-date-picker-radius);
  box-shadow: var(--md-date-picker-shadow-2);
  z-index: 1000;
  border: none;
  padding: 0;
  overflow: hidden;
}

/* -- Disabled state -- */
.md-date-picker__cell--disabled .md-date-picker__day {
  color: var(--md-date-picker-disabled);
  background: var(--md-date-picker-disabled-bg);
  cursor: not-allowed;
  pointer-events: none;
}

/* -- Dark mode overrides -- */
@media (prefers-color-scheme: dark) {
  .md-date-picker__day:disabled,
  .md-date-picker__day[aria-disabled="true"] {
    color: rgba(230, 224, 233, 0.38);
  }
  .md-date-picker__cell--disabled .md-date-picker__day {
    color: rgba(230, 224, 233, 0.38);
    background: rgba(230, 224, 233, 0.12);
  }
}
.dark .md-date-picker__day:disabled {
  color: rgba(230, 224, 233, 0.38);
}
.dark .md-date-picker__cell--disabled .md-date-picker__day {
  color: rgba(230, 224, 233, 0.38);
  background: rgba(230, 224, 233, 0.12);
}
```

## States Reference

| State | Day Appearance | Background | Border | Overlay | Cursor |
|-------|---------------|------------|--------|---------|--------|
| Default | 14px regular, On-Surface | transparent | none | 0% | pointer |
| Hover | unchanged | transparent | none | 8% On-Surface | pointer |
| Focus | unchanged | transparent | none | 10% On-Surface | pointer |
| Active | unchanged | transparent | none | 10% On-Surface | pointer |
| Today | 14px medium, Primary | transparent | 1px Primary | 0% | pointer |
| Selected | 14px medium, On-Primary | Primary | none | 0% | pointer |
| Selected + Hover | unchanged | Primary | none | 8% On-Primary | pointer |
| In-Range | Secondary Container on cell | range-bg on cell | none | 0% | pointer |
| Range Start/End | On-Primary | Primary circle, range-bg on cell | none | 0% | pointer |
| Outside Month | 38% opacity | transparent | none | 0% | pointer |
| Disabled | 38% opacity | 12% surface | none | -- | not-allowed |

## Animation & Motion

```css
/* -- Month slide transition -- */
@keyframes md-date-slide-left {
  from { transform: translateX(100%); opacity: 0; }
  to { transform: translateX(0); opacity: 1; }
}
@keyframes md-date-slide-right {
  from { transform: translateX(-100%); opacity: 0; }
  to { transform: translateX(0); opacity: 1; }
}
.md-date-picker__grid--slide-left {
  animation: md-date-slide-left 200ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}
.md-date-picker__grid--slide-right {
  animation: md-date-slide-right 200ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}

/* -- Day selection -- */
@keyframes md-date-select {
  from { transform: scale(0.95); opacity: 0.8; }
  to { transform: scale(1); opacity: 1; }
}
.md-date-picker__day--selected {
  animation: md-date-select 100ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}

/* -- Modal open/close -- */
@keyframes md-date-modal-open {
  from { transform: translate(-50%, -50%) scale(0.9); opacity: 0; }
  to { transform: translate(-50%, -50%) scale(1); opacity: 1; }
}
@keyframes md-date-modal-close {
  from { transform: translate(-50%, -50%) scale(1); opacity: 1; }
  to { transform: translate(-50%, -50%) scale(0.9); opacity: 0; }
}
.md-date-picker--modal[open] {
  animation: md-date-modal-open 200ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-date-picker--modal.closing {
  animation: md-date-modal-close 150ms cubic-bezier(0.3, 0.0, 0.8, 0.15) forwards;
}

/* -- Year selector fade -- */
@keyframes md-date-year-fade {
  from { opacity: 0; }
  to { opacity: 1; }
}
.md-date-picker__year-selector {
  animation: md-date-year-fade 200ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}

/* -- Ripple on day tap -- */
@keyframes md-date-ripple {
  from { transform: scale(0); opacity: 0.12; }
  to { transform: scale(2); opacity: 0; }
}
.md-date-picker__day:active::before {
  content: '';
  position: absolute;
  width: 100%;
  padding-top: 100%;
  border-radius: 50%;
  background: currentColor;
  transform: scale(0);
  opacity: 0;
  animation: md-date-ripple 300ms cubic-bezier(0.2, 0, 0, 1) forwards;
}

/* -- Reduced motion -- */
@media (prefers-reduced-motion: reduce) {
  .md-date-picker,
  .md-date-picker__grid,
  .md-date-picker__day,
  .md-date-picker__year-selector,
  .md-date-picker__day:active::before,
  .md-date-picker-scrim {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA**: `role="dialog"` with `aria-modal="true"` on modal variant; `role="grid"` on calendar table with `aria-label` for month/year
- **Grid cells**: `role="gridcell"` on `<td>`, day buttons inside; `aria-selected="true"` on chosen date; `aria-current="date"` on today
- **Disabled dates**: `aria-disabled="true"` and `disabled` attribute; excluded from tab order via `tabindex="-1"`
- **Keyboard**: Arrow keys navigate grid (Up/Down/Left/Right move by day/week), Home/End go to first/last day of week, Page Up/Down switch months, Enter/Space selects date, Escape closes modal
- **Focus management**: On open, focus moves to selected date or today; on close, focus returns to trigger element
- **Focus ring**: 2px solid Primary, 2px offset, follows circle shape on day cells
- **Touch target**: Day cells are 40px visible in 48px grid cells (meets WCAG 2.5.8)
- **Screen reader**: Month changes announced via `aria-live="polite"` region; selected date announced on change
- **Year selector**: `role="listbox"` with `role="option"` on each year, `aria-selected` on current

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Modal becomes full-screen (100vw x 100vh, border-radius: 0); range picker stacks months vertically; input mode preferred for compact forms |
| 600-1024px | Centered modal dialog at 328px; range picker at 640px; docked variant inline |
| > 1024px | Docked inline in forms; modal centered; range picker side-by-side months |

## Do / Don't

| Do | Don't |
|----|-------|
| Use modal for focused date selection tasks | Use docked picker in cramped layouts where it overlaps other content |
| Use input variant when users may type dates from memory | Force calendar-only selection when exact dates are known (e.g., birthdays) |
| Show today indicator so users have temporal context | Remove the today indicator from the calendar |
| Disable dates outside valid ranges (e.g., past dates for booking) | Hide dates entirely; show them disabled instead |
| Use range picker for start-end pairs (trips, bookings) | Use two separate date pickers for a date range |
| Return focus to trigger on close | Leave focus stranded inside closed dialog |
| Announce month changes to screen readers | Rely only on visual month label changes |