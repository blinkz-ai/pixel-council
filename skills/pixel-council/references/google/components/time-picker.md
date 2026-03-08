---
name: time-picker
description: M3 dial and input time pickers with 12/24-hour support
metadata:
  tags: time picker, clock, time input, hour, minute, time selection
---

# Time Picker -- Google Material Design 3

## Quick Reference

| Property | Value |
|----------|-------|
| Dial diameter | 256px |
| Dial number font | Roboto, 16px/24px, weight 500 |
| Dial number circle | 40px diameter |
| Clock hand width | 2px |
| Center dot | 8px diameter |
| Input field height | 72px |
| Input field width | 96px (per HH/MM) |
| Input font | Roboto, 45px/52px, weight 400 (Display Large) |
| Colon separator | 24px font-size |
| AM/PM toggle height | 48px |
| AM/PM toggle width | 52px per segment |
| Container corner radius | 28px |
| Container width (dial) | 328px |
| Container width (input) | 288px |
| Container padding | 24px |
| Container background (light) | #F3EDF7 |
| Container background (dark) | #211F26 |
| Primary color (light) | #6750A4 |
| Primary color (dark) | #D0BCFF |

## Design Tokens

```css
:root {
  --md-time-picker-bg: #F3EDF7;
  --md-time-picker-dial-bg: #ECE6F0;
  --md-time-picker-dial-text: #1D1B20;
  --md-time-picker-selected-bg: #6750A4;
  --md-time-picker-selected-text: #FFFFFF;
  --md-time-picker-hand: #6750A4;
  --md-time-picker-center-dot: #6750A4;
  --md-time-picker-input-bg: #E8DEF8;
  --md-time-picker-input-text: #6750A4;
  --md-time-picker-input-active-bg: #E8DEF8;
  --md-time-picker-input-active-indicator: #6750A4;
  --md-time-picker-input-inactive-bg: #ECE6F0;
  --md-time-picker-input-inactive-text: #1D1B20;
  --md-time-picker-am-pm-border: #79747E;
  --md-time-picker-am-pm-selected-bg: #E8DEF8;
  --md-time-picker-am-pm-selected-text: #1D192B;
  --md-time-picker-am-pm-unselected-text: #49454F;
  --md-time-picker-label: #49454F;
  --md-time-picker-on-surface: #1D1B20;
  --md-time-picker-on-surface-variant: #49454F;
  --md-time-picker-outline: #79747E;
  --md-time-picker-primary: #6750A4;
  --md-time-picker-on-primary: #FFFFFF;
  --md-time-picker-disabled: rgba(29, 27, 32, 0.38);
  --md-time-picker-disabled-bg: rgba(29, 27, 32, 0.12);
  --md-time-picker-hover: rgba(29, 27, 32, 0.08);
  --md-time-picker-focus: rgba(29, 27, 32, 0.10);
  --md-time-picker-shadow-2: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
  --md-time-picker-radius: 28px;
  --md-time-picker-transition: all 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

@media (prefers-color-scheme: dark) {
  :root {
    --md-time-picker-bg: #211F26;
    --md-time-picker-dial-bg: #2B2930;
    --md-time-picker-dial-text: #E6E0E9;
    --md-time-picker-selected-bg: #D0BCFF;
    --md-time-picker-selected-text: #381E72;
    --md-time-picker-hand: #D0BCFF;
    --md-time-picker-center-dot: #D0BCFF;
    --md-time-picker-input-bg: #4A4458;
    --md-time-picker-input-text: #D0BCFF;
    --md-time-picker-input-active-bg: #4A4458;
    --md-time-picker-input-active-indicator: #D0BCFF;
    --md-time-picker-input-inactive-bg: #2B2930;
    --md-time-picker-input-inactive-text: #E6E0E9;
    --md-time-picker-am-pm-border: #938F99;
    --md-time-picker-am-pm-selected-bg: #4A4458;
    --md-time-picker-am-pm-selected-text: #E8DEF8;
    --md-time-picker-am-pm-unselected-text: #CAC4D0;
    --md-time-picker-label: #CAC4D0;
    --md-time-picker-on-surface: #E6E0E9;
    --md-time-picker-on-surface-variant: #CAC4D0;
    --md-time-picker-outline: #938F99;
    --md-time-picker-primary: #D0BCFF;
    --md-time-picker-on-primary: #381E72;
    --md-time-picker-disabled: rgba(230, 224, 233, 0.38);
    --md-time-picker-disabled-bg: rgba(230, 224, 233, 0.12);
    --md-time-picker-hover: rgba(230, 224, 233, 0.08);
    --md-time-picker-focus: rgba(230, 224, 233, 0.10);
  }
}
.dark {
  --md-time-picker-bg: #211F26;
  --md-time-picker-dial-bg: #2B2930;
  --md-time-picker-dial-text: #E6E0E9;
  --md-time-picker-selected-bg: #D0BCFF;
  --md-time-picker-selected-text: #381E72;
  --md-time-picker-hand: #D0BCFF;
  --md-time-picker-center-dot: #D0BCFF;
  --md-time-picker-input-bg: #4A4458;
  --md-time-picker-input-text: #D0BCFF;
  --md-time-picker-input-active-bg: #4A4458;
  --md-time-picker-input-active-indicator: #D0BCFF;
  --md-time-picker-input-inactive-bg: #2B2930;
  --md-time-picker-input-inactive-text: #E6E0E9;
  --md-time-picker-am-pm-border: #938F99;
  --md-time-picker-am-pm-selected-bg: #4A4458;
  --md-time-picker-am-pm-selected-text: #E8DEF8;
  --md-time-picker-am-pm-unselected-text: #CAC4D0;
  --md-time-picker-label: #CAC4D0;
  --md-time-picker-on-surface: #E6E0E9;
  --md-time-picker-on-surface-variant: #CAC4D0;
  --md-time-picker-outline: #938F99;
  --md-time-picker-primary: #D0BCFF;
  --md-time-picker-on-primary: #381E72;
  --md-time-picker-disabled: rgba(230, 224, 233, 0.38);
  --md-time-picker-disabled-bg: rgba(230, 224, 233, 0.12);
  --md-time-picker-hover: rgba(230, 224, 233, 0.08);
  --md-time-picker-focus: rgba(230, 224, 233, 0.10);
}
```

## Variants

| Variant | Container | Width | Display | Use Case |
|---------|-----------|-------|---------|----------|
| Dial (12h) | Modal dialog | 328px | Circular clock face, AM/PM toggle | Mobile-first, visual selection |
| Dial (24h) | Modal dialog | 328px | Circular clock face, inner/outer ring | International, military time |
| Input (12h) | Modal dialog | 288px | HH : MM text fields, AM/PM toggle | Keyboard-first, exact time known |
| Input (24h) | Modal dialog | 288px | HH : MM text fields, no AM/PM | International, keyboard-first |

## HTML Structure

```html
<!-- Dial Time Picker (12-hour) -->
<div class="md-time-picker-scrim" aria-hidden="true"></div>
<dialog class="md-time-picker md-time-picker--dial" role="dialog" aria-modal="true" aria-label="Select time">
  <div class="md-time-picker__header">
    <span class="md-time-picker__headline">Select time</span>
    <div class="md-time-picker__display">
      <button class="md-time-picker__time-segment md-time-picker__time-segment--active" type="button" aria-label="Select hours" aria-pressed="true">
        <span class="md-time-picker__time-label">Hour</span>
        <span class="md-time-picker__time-value">10</span>
      </button>
      <span class="md-time-picker__colon">:</span>
      <button class="md-time-picker__time-segment" type="button" aria-label="Select minutes" aria-pressed="false">
        <span class="md-time-picker__time-label">Minute</span>
        <span class="md-time-picker__time-value">30</span>
      </button>
      <div class="md-time-picker__am-pm" role="radiogroup" aria-label="AM or PM">
        <button class="md-time-picker__period md-time-picker__period--selected" type="button" role="radio" aria-checked="true">AM</button>
        <button class="md-time-picker__period" type="button" role="radio" aria-checked="false">PM</button>
      </div>
    </div>
  </div>

  <div class="md-time-picker__dial-container">
    <div class="md-time-picker__dial" role="radiogroup" aria-label="Select hour">
      <!-- Center dot -->
      <div class="md-time-picker__center-dot" aria-hidden="true"></div>
      <!-- Clock hand -->
      <div class="md-time-picker__hand" aria-hidden="true" style="transform: rotate(300deg)"></div>
      <!-- Hour numbers (12-hour) -->
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="1" data-value="1" style="--angle: 30deg">1</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="2" data-value="2" style="--angle: 60deg">2</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="3" data-value="3" style="--angle: 90deg">3</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="4" data-value="4" style="--angle: 120deg">4</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="5" data-value="5" style="--angle: 150deg">5</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="6" data-value="6" style="--angle: 180deg">6</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="7" data-value="7" style="--angle: 210deg">7</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="8" data-value="8" style="--angle: 240deg">8</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="9" data-value="9" style="--angle: 270deg">9</button>
      <button class="md-time-picker__number md-time-picker__number--selected" type="button" role="radio" aria-checked="true" aria-label="10" data-value="10" style="--angle: 300deg">10</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="11" data-value="11" style="--angle: 330deg">11</button>
      <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="12" data-value="12" style="--angle: 0deg">12</button>
    </div>
  </div>

  <div class="md-time-picker__actions">
    <button class="md-button md-button--text" type="button" aria-label="Switch to keyboard input">
      <!-- keyboard icon svg -->
    </button>
    <div class="md-time-picker__actions-end">
      <button class="md-button md-button--text" type="button">Cancel</button>
      <button class="md-button md-button--text" type="button">OK</button>
    </div>
  </div>
</dialog>

<!-- Dial Time Picker (24-hour) -->
<dialog class="md-time-picker md-time-picker--dial md-time-picker--24h" role="dialog" aria-modal="true" aria-label="Select time">
  <div class="md-time-picker__header">
    <span class="md-time-picker__headline">Select time</span>
    <div class="md-time-picker__display">
      <button class="md-time-picker__time-segment md-time-picker__time-segment--active" type="button" aria-label="Select hours" aria-pressed="true">
        <span class="md-time-picker__time-label">Hour</span>
        <span class="md-time-picker__time-value">14</span>
      </button>
      <span class="md-time-picker__colon">:</span>
      <button class="md-time-picker__time-segment" type="button" aria-label="Select minutes" aria-pressed="false">
        <span class="md-time-picker__time-label">Minute</span>
        <span class="md-time-picker__time-value">30</span>
      </button>
      <!-- No AM/PM toggle for 24-hour -->
    </div>
  </div>
  <div class="md-time-picker__dial-container">
    <div class="md-time-picker__dial md-time-picker__dial--24h" role="radiogroup" aria-label="Select hour">
      <div class="md-time-picker__center-dot" aria-hidden="true"></div>
      <div class="md-time-picker__hand" aria-hidden="true" style="transform: rotate(60deg)"></div>
      <!-- Outer ring: 1-12 -->
      <button class="md-time-picker__number md-time-picker__number--outer" type="button" role="radio" aria-checked="false" aria-label="1" data-value="1" style="--angle: 30deg">1</button>
      <!-- ... 2-12 ... -->
      <!-- Inner ring: 13-00 -->
      <button class="md-time-picker__number md-time-picker__number--inner md-time-picker__number--selected" type="button" role="radio" aria-checked="true" aria-label="14" data-value="14" style="--angle: 60deg">14</button>
      <!-- ... 13-00 ... -->
      <button class="md-time-picker__number md-time-picker__number--inner" type="button" role="radio" aria-checked="false" aria-label="0" data-value="0" style="--angle: 0deg">00</button>
    </div>
  </div>
  <div class="md-time-picker__actions"><!-- same as 12h --></div>
</dialog>

<!-- Input Time Picker (12-hour) -->
<dialog class="md-time-picker md-time-picker--input" role="dialog" aria-modal="true" aria-label="Enter time">
  <div class="md-time-picker__header">
    <span class="md-time-picker__headline">Enter time</span>
  </div>

  <div class="md-time-picker__input-container">
    <div class="md-time-picker__input-group">
      <div class="md-time-picker__input-field md-time-picker__input-field--active">
        <label class="md-time-picker__input-label">Hour</label>
        <input type="text" class="md-time-picker__input" value="10" maxlength="2" inputmode="numeric" aria-label="Hour" />
      </div>
      <span class="md-time-picker__input-colon">:</span>
      <div class="md-time-picker__input-field">
        <label class="md-time-picker__input-label">Minute</label>
        <input type="text" class="md-time-picker__input" value="30" maxlength="2" inputmode="numeric" aria-label="Minute" />
      </div>
    </div>
    <div class="md-time-picker__am-pm md-time-picker__am-pm--vertical" role="radiogroup" aria-label="AM or PM">
      <button class="md-time-picker__period md-time-picker__period--selected" type="button" role="radio" aria-checked="true">AM</button>
      <button class="md-time-picker__period" type="button" role="radio" aria-checked="false">PM</button>
    </div>
  </div>

  <div class="md-time-picker__actions">
    <button class="md-button md-button--text" type="button" aria-label="Switch to clock dial">
      <!-- schedule/clock icon svg -->
    </button>
    <div class="md-time-picker__actions-end">
      <button class="md-button md-button--text" type="button">Cancel</button>
      <button class="md-button md-button--text" type="button">OK</button>
    </div>
  </div>
</dialog>

<!-- Minute selection (dial switches to minutes after hour selected) -->
<div class="md-time-picker__dial" role="radiogroup" aria-label="Select minute">
  <div class="md-time-picker__center-dot" aria-hidden="true"></div>
  <div class="md-time-picker__hand" aria-hidden="true" style="transform: rotate(180deg)"></div>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="00" data-value="0" style="--angle: 0deg">00</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="05" data-value="5" style="--angle: 30deg">05</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="10" data-value="10" style="--angle: 60deg">10</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="15" data-value="15" style="--angle: 90deg">15</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="20" data-value="20" style="--angle: 120deg">20</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="25" data-value="25" style="--angle: 150deg">25</button>
  <button class="md-time-picker__number md-time-picker__number--selected" type="button" role="radio" aria-checked="true" aria-label="30" data-value="30" style="--angle: 180deg">30</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="35" data-value="35" style="--angle: 210deg">35</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="40" data-value="40" style="--angle: 240deg">40</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="45" data-value="45" style="--angle: 270deg">45</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="50" data-value="50" style="--angle: 300deg">50</button>
  <button class="md-time-picker__number" type="button" role="radio" aria-checked="false" aria-label="55" data-value="55" style="--angle: 330deg">55</button>
</div>
```

## Complete CSS

```css
/* -- Scrim -- */
.md-time-picker-scrim {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.32);
  z-index: 999;
  opacity: 0;
  pointer-events: none;
  transition: opacity 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}
.md-time-picker-scrim.active {
  opacity: 1;
  pointer-events: auto;
}

/* -- Container -- */
.md-time-picker {
  background: var(--md-time-picker-bg);
  border-radius: var(--md-time-picker-radius);
  overflow: hidden;
  font-family: Roboto, 'Noto Sans', sans-serif;
  color: var(--md-time-picker-on-surface);
  border: none;
  padding: 24px;
  box-shadow: var(--md-time-picker-shadow-2);
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 1000;
}
.md-time-picker--dial {
  width: 328px;
}
.md-time-picker--input {
  width: 288px;
}

/* -- Header -- */
.md-time-picker__header {
  margin-bottom: 20px;
}
.md-time-picker__headline {
  font-size: 12px;
  font-weight: 500;
  line-height: 16px;
  letter-spacing: 0.5px;
  color: var(--md-time-picker-on-surface-variant);
  text-transform: uppercase;
  display: block;
  margin-bottom: 20px;
}

/* -- Time Display (dial variant) -- */
.md-time-picker__display {
  display: flex;
  align-items: center;
  gap: 0;
}
.md-time-picker__time-segment {
  border: none;
  border-radius: 8px;
  background: var(--md-time-picker-input-inactive-bg);
  color: var(--md-time-picker-input-inactive-text);
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 45px;
  font-weight: 400;
  line-height: 52px;
  width: 96px;
  height: 72px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: var(--md-time-picker-transition);
}
.md-time-picker__time-segment--active {
  background: var(--md-time-picker-input-active-bg);
  color: var(--md-time-picker-input-text);
  outline: 2px solid var(--md-time-picker-input-active-indicator);
}
.md-time-picker__time-segment:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-time-picker-on-surface);
  opacity: 0.08;
}
.md-time-picker__time-segment:focus-visible {
  outline: 2px solid var(--md-time-picker-primary);
  outline-offset: 2px;
}
.md-time-picker__time-label {
  font-size: 12px;
  font-weight: 400;
  line-height: 16px;
  letter-spacing: 0.5px;
  position: absolute;
  top: 4px;
  color: inherit;
  display: none;
}
.md-time-picker__time-value {
  font-size: inherit;
  font-weight: inherit;
  line-height: inherit;
}
.md-time-picker__colon {
  font-size: 45px;
  font-weight: 400;
  line-height: 52px;
  color: var(--md-time-picker-on-surface);
  padding: 0 4px;
  user-select: none;
}

/* -- AM/PM Toggle -- */
.md-time-picker__am-pm {
  display: flex;
  flex-direction: column;
  margin-left: 12px;
  border: 1px solid var(--md-time-picker-am-pm-border);
  border-radius: 8px;
  overflow: hidden;
  height: 72px;
}
.md-time-picker__am-pm--vertical {
  height: 72px;
}
.md-time-picker__period {
  border: none;
  background: transparent;
  color: var(--md-time-picker-am-pm-unselected-text);
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  letter-spacing: 0.1px;
  width: 52px;
  flex: 1;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: var(--md-time-picker-transition);
}
.md-time-picker__period:first-child {
  border-bottom: 1px solid var(--md-time-picker-am-pm-border);
}
.md-time-picker__period--selected {
  background: var(--md-time-picker-am-pm-selected-bg);
  color: var(--md-time-picker-am-pm-selected-text);
  font-weight: 500;
}
.md-time-picker__period:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-time-picker-on-surface);
  opacity: 0.08;
}
.md-time-picker__period:focus-visible {
  outline: 2px solid var(--md-time-picker-primary);
  outline-offset: -2px;
}

/* -- Dial -- */
.md-time-picker__dial-container {
  display: flex;
  justify-content: center;
  padding: 8px 0;
}
.md-time-picker__dial {
  position: relative;
  width: 256px;
  height: 256px;
  border-radius: 50%;
  background: var(--md-time-picker-dial-bg);
}

/* -- Center Dot -- */
.md-time-picker__center-dot {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 8px;
  height: 8px;
  margin: -4px 0 0 -4px;
  border-radius: 50%;
  background: var(--md-time-picker-center-dot);
  z-index: 2;
}

/* -- Clock Hand -- */
.md-time-picker__hand {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 2px;
  height: calc(50% - 40px);
  margin-left: -1px;
  background: var(--md-time-picker-hand);
  transform-origin: bottom center;
  z-index: 1;
  transition: transform 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
  /* transform set inline: rotate(Xdeg), 0deg = 12 o'clock */
  /* Height adjusts: outer ring = calc(50% - 40px), inner ring = calc(50% - 68px) */
}

/* -- Numbers (positioned around dial) -- */
.md-time-picker__number {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 40px;
  height: 40px;
  margin: -20px 0 0 -20px;
  border: none;
  border-radius: 50%;
  background: transparent;
  color: var(--md-time-picker-dial-text);
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 16px;
  font-weight: 500;
  line-height: 24px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  position: absolute;
  overflow: hidden;
  z-index: 3;
  transition: var(--md-time-picker-transition);
  /* Position via CSS custom property --angle, outer radius = 100px from center */
  transform: rotate(var(--angle)) translateY(-100px) rotate(calc(-1 * var(--angle)));
}
.md-time-picker__number--inner {
  /* Inner ring for 24-hour: 13-00, radius = 68px from center */
  transform: rotate(var(--angle)) translateY(-68px) rotate(calc(-1 * var(--angle)));
  font-size: 14px;
}
.md-time-picker__number:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-time-picker-on-surface);
  opacity: 0.08;
}
.md-time-picker__number:focus-visible {
  outline: 2px solid var(--md-time-picker-primary);
  outline-offset: 2px;
}
.md-time-picker__number:focus-visible::after {
  content: '';
  position: absolute;
  inset: 0;
  border-radius: inherit;
  background: var(--md-time-picker-on-surface);
  opacity: 0.10;
}

/* -- Number: Selected -- */
.md-time-picker__number--selected {
  background: var(--md-time-picker-selected-bg);
  color: var(--md-time-picker-selected-text);
}
.md-time-picker__number--selected:hover::after {
  background: var(--md-time-picker-selected-text);
  opacity: 0.08;
}
.md-time-picker__number--selected:focus-visible::after {
  background: var(--md-time-picker-selected-text);
  opacity: 0.10;
}

/* -- Input Variant -- */
.md-time-picker__input-container {
  display: flex;
  align-items: flex-start;
  gap: 12px;
}
.md-time-picker__input-group {
  display: flex;
  align-items: center;
  gap: 0;
}
.md-time-picker__input-field {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.md-time-picker__input-label {
  font-size: 12px;
  font-weight: 400;
  line-height: 16px;
  letter-spacing: 0.5px;
  color: var(--md-time-picker-label);
  margin-bottom: 4px;
}
.md-time-picker__input {
  width: 96px;
  height: 72px;
  border: none;
  border-radius: 8px;
  background: var(--md-time-picker-input-inactive-bg);
  color: var(--md-time-picker-input-inactive-text);
  font-family: Roboto, 'Noto Sans', sans-serif;
  font-size: 45px;
  font-weight: 400;
  line-height: 52px;
  text-align: center;
  caret-color: var(--md-time-picker-primary);
  transition: var(--md-time-picker-transition);
}
.md-time-picker__input:focus {
  outline: none;
  background: var(--md-time-picker-input-active-bg);
  color: var(--md-time-picker-input-text);
  box-shadow: inset 0 -2px 0 0 var(--md-time-picker-input-active-indicator);
}
.md-time-picker__input-field--active .md-time-picker__input {
  background: var(--md-time-picker-input-active-bg);
  color: var(--md-time-picker-input-text);
  box-shadow: inset 0 -2px 0 0 var(--md-time-picker-input-active-indicator);
}
.md-time-picker__input-colon {
  font-size: 45px;
  font-weight: 400;
  line-height: 52px;
  color: var(--md-time-picker-on-surface);
  padding: 0 4px;
  align-self: flex-end;
  margin-bottom: 10px;
  user-select: none;
}

/* -- Focus ring (all interactive) -- */
.md-time-picker__period:focus-visible,
.md-time-picker__time-segment:focus-visible {
  outline: 2px solid var(--md-time-picker-primary);
  outline-offset: 2px;
}

/* -- Actions -- */
.md-time-picker__actions {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
}
.md-time-picker__actions-end {
  display: flex;
  gap: 8px;
}

/* -- Dark mode overrides -- */
@media (prefers-color-scheme: dark) {
  .md-time-picker__input:focus {
    background: var(--md-time-picker-input-active-bg);
    color: var(--md-time-picker-input-text);
  }
}
.dark .md-time-picker__input:focus {
  background: var(--md-time-picker-input-active-bg);
  color: var(--md-time-picker-input-text);
}
```

## States Reference

| State | Element | Appearance | Overlay | Cursor |
|-------|---------|------------|---------|--------|
| Default number | Dial number | Dial text on transparent | 0% | pointer |
| Hover number | Dial number | Dial text on transparent | 8% On-Surface | pointer |
| Focus number | Dial number | Dial text on transparent | 10% On-Surface | pointer |
| Selected number | Dial number | On-Primary on Primary circle | 0% | pointer |
| Selected + Hover | Dial number | On-Primary on Primary circle | 8% On-Primary | pointer |
| Inactive segment | Time display | Inactive text on Inactive bg | 0% | pointer |
| Active segment | Time display | Input text on Active bg, 2px indicator | 0% | pointer |
| AM/PM default | Period button | Unselected text, transparent | 0% | pointer |
| AM/PM selected | Period button | Selected text, Selected bg | 0% | pointer |
| AM/PM hover | Period button | unchanged | 8% On-Surface | pointer |
| Input default | Text input | Inactive text on Inactive bg | 0% | text |
| Input focused | Text input | Input text on Active bg, 2px bottom indicator | 0% | text |

## Animation & Motion

```css
/* -- Hand rotation -- */
.md-time-picker__hand {
  transition: transform 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

/* -- Dial crossfade (hours to minutes) -- */
@keyframes md-time-dial-fade-in {
  from { opacity: 0; transform: scale(0.95); }
  to { opacity: 1; transform: scale(1); }
}
@keyframes md-time-dial-fade-out {
  from { opacity: 1; transform: scale(1); }
  to { opacity: 0; transform: scale(0.95); }
}
.md-time-picker__dial--entering {
  animation: md-time-dial-fade-in 200ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}
.md-time-picker__dial--exiting {
  animation: md-time-dial-fade-out 150ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}

/* -- Number selection pulse -- */
@keyframes md-time-number-select {
  from { transform: rotate(var(--angle)) translateY(-100px) rotate(calc(-1 * var(--angle))) scale(0.95); }
  to { transform: rotate(var(--angle)) translateY(-100px) rotate(calc(-1 * var(--angle))) scale(1); }
}
.md-time-picker__number--selected {
  animation: md-time-number-select 100ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}

/* -- Modal open/close -- */
@keyframes md-time-modal-open {
  from { transform: translate(-50%, -50%) scale(0.9); opacity: 0; }
  to { transform: translate(-50%, -50%) scale(1); opacity: 1; }
}
@keyframes md-time-modal-close {
  from { transform: translate(-50%, -50%) scale(1); opacity: 1; }
  to { transform: translate(-50%, -50%) scale(0.9); opacity: 0; }
}
.md-time-picker[open] {
  animation: md-time-modal-open 200ms cubic-bezier(0.05, 0.7, 0.1, 1.0) forwards;
}
.md-time-picker.closing {
  animation: md-time-modal-close 150ms cubic-bezier(0.3, 0.0, 0.8, 0.15) forwards;
}

/* -- Input mode switch -- */
@keyframes md-time-input-scale {
  from { transform: translate(-50%, -50%) scale(0.97); opacity: 0.8; }
  to { transform: translate(-50%, -50%) scale(1); opacity: 1; }
}
.md-time-picker--input[open] {
  animation: md-time-input-scale 100ms cubic-bezier(0.2, 0.0, 0, 1.0) forwards;
}

/* -- AM/PM toggle -- */
.md-time-picker__period--selected {
  transition: background 200ms cubic-bezier(0.2, 0.0, 0, 1.0),
              color 200ms cubic-bezier(0.2, 0.0, 0, 1.0);
}

/* -- Reduced motion -- */
@media (prefers-reduced-motion: reduce) {
  .md-time-picker,
  .md-time-picker__hand,
  .md-time-picker__dial,
  .md-time-picker__number,
  .md-time-picker__period,
  .md-time-picker__time-segment,
  .md-time-picker__input {
    animation: none;
    transition: none;
  }
}
```

## Accessibility

- **ARIA**: `role="dialog"` with `aria-modal="true"` on container; `aria-label="Select time"` (dial) or `"Enter time"` (input)
- **Dial**: `role="radiogroup"` with `aria-label="Select hour"` or `"Select minute"`; each number is `role="radio"` with `aria-checked`
- **AM/PM**: `role="radiogroup"` with `aria-label="AM or PM"`; each period is `role="radio"` with `aria-checked`
- **Keyboard (dial)**: Arrow keys rotate selection clockwise/counterclockwise; Up/Right = next number, Down/Left = previous number; Enter/Space confirms selection; Tab moves between hours, minutes, AM/PM, and action buttons
- **Keyboard (input)**: Standard text input; Tab between hours, minutes, AM/PM; Up/Down arrows increment/decrement values; Enter confirms
- **Focus management**: On open, focus moves to active time segment (hours); after hour selection, focus auto-advances to minutes; on close, focus returns to trigger element
- **Focus ring**: 2px solid Primary, 2px offset on all interactive elements
- **Touch target**: Dial numbers are 40px visible circles in accessible positions; AM/PM buttons meet 48px minimum
- **Screen reader**: Time changes announced via `aria-live="polite"` region; mode switch (dial/input) announced; hour/minute context provided via `aria-label`

## Responsive

| Breakpoint | Behavior |
|-----------|----------|
| < 600px | Input mode preferred (larger tap targets, easier on mobile); dial still available but input is default; dialog may go near-full-width with 16px margins |
| 600-1024px | Dial mode default; centered modal dialog |
| > 1024px | Dial mode; centered modal; can be triggered from text field icon |

## Do / Don't

| Do | Don't |
|----|-------|
| Use dial mode for casual/approximate time selection | Use dial for precise-to-the-minute time entry (use input instead) |
| Use input mode when users know the exact time | Force dial-only when keyboard input would be faster |
| Auto-advance from hours to minutes after hour selection | Require manual tab/click to switch from hours to minutes |
| Show AM/PM toggle for 12-hour format | Show AM/PM toggle in 24-hour mode |
| Use 24-hour format for international/enterprise apps | Mix 12/24 formats within the same app |
| Validate input and show error for invalid times (e.g., 13 in 12h mode) | Silently accept invalid time values |
| Return focus to trigger on close | Leave focus stranded inside closed dialog |
| Provide both dial and input modes with a toggle | Lock users into only one input method |