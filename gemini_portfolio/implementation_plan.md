# Implementation Plan - Cinematic Card Interaction

## Goal
Enhance the static project cards with a "Cinematic Slide-Up" reveal and a subtle "3D Tilt" effect to increase immersion and interactivity.

## Selected Design
**Hybrid Option:** Option 1 (Slide-Up) + Option 2 (3D Tilt)
- **Default State**:
    - Card Title & Tags visible.
    - Description & "Open" button hidden (translated down or opacity 0).
    - Card is flat.
- **Hover State**:
    - **Slide-Up**: Description slides up into view. Title moves up slightly to make room.
    - **3D Tilt**: Card tilts slightly based on mouse position (perspective transform).
    - **Glow**: Background glow intensifies.

## Implementation Details

### 1. HTML/CSS Modifications (`index.html`)
- **Card Structure**:
    - Ensure container has `perspective` style.
    - Card element will need `transform-style: preserve-3d`.
    - "Content" (Text) wrapper needed to mask/clip the sliding content if necessary, or just simple translation.
- **Tailwind Classes**:
    - Use `group` and `group-hover` for the slide-up mechanism.
    - `translate-y` transitions for the text elements.

### 2. JavaScript Logic
- **3D Tilt**:
    - Attach `mousemove` event to each `.glass-card`.
    - Calculate `rotateX` and `rotateY` based on cursor position relative to card center.
    - Reset rotation on `mouseleave`.
- **Performance**:
    - Use `requestAnimationFrame` if calculations are heavy, but simple CSS transform updates are usually fine.

## Verification
- Test hover effect stability (no flickering).
- Ensure "Open" click still works during/after animation.
- Check performance on Safari (since we just fixed it).
