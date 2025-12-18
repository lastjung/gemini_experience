# Gemini 3.0 Developer Portfolio

Welcome to the **Gemini 3.0 Developer Portfolio**, a cutting-edge immersive web experience designed to showcase interactive web experiments and creative coding projects. This portfolio features a completely generative 3D space environment, diverse physics simulations, and a cinematic UI, all built with modern web technologies.

## 🌐 Live Demo

You can view the live project at: **[https://lastjung.github.io/gemini_experience/](https://lastjung.github.io/gemini_experience/)**

## 🌟 Features

*   **Immersive 3D Environment**: A fully procedurally generated space scene using **Three.js**, complete with:
    *   A volumetric particle starfield.
    *   Rotating planets with rings and atmospheric glows.
    *   A massive, interactive 3D spiral galaxy.
*   **Cinematic UI Interactions**:
    *   **Glassmorphism Cards**: Translucent, frosted-glass project cards with dynamic lighting.
    *   **3D Tilt Physics**: Cards react to mouse movement with realistic perspective tilting.
    *   **Smooth Reveals**: Hover effects trigger fluid slide-up animations to reveal project details and tags.
*   **Dynamic Camera System**: Click on the "Galaxy" text or the galaxy itself to zoom the camera through space, transitioning between the hero view and the immersive environment.
*   **Performance Optimized**: Utilizes GSAP for high-performance animations and optimized rendering loops.

## 🚀 Usage

1.  **Explore the Space**: Move your mouse to slightly shift the camera perspective.
2.  **Enter the Galaxy**: Click the "Galaxy" text in the hero section (or the galaxy visual itself) to fly into the scene and hide the UI. Click anywhere to return.
3.  **Browse Projects**: Scroll down to view the grid of projects.
4.  **View Details**: Hover over any card to see a summary and tech stack tags.
5.  **Launch Project**: Click a card to open the interactive project in a seamless modal overlay.

## 🛠️ Development Environment

This project is built as a static web application and requires no complex build step.

### Tech Stack
*   **Core**: HTML5, CSS3, Vanilla JavaScript (ES6+)
*   **Styling**: [Tailwind CSS](https://tailwindcss.com/) (via CDN) + Custom CSS 
*   **3D Graphics**: [Three.js](https://threejs.org/) (via CDN)
*   **Animations**: [GSAP (GreenSock Animation Platform)](https://greensock.com/gsap/) (via CDN)
*   **Fonts**: Space Grotesk & Orbitron (via Google Fonts)

### Setup & Running
1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    ```
2.  **File Structure Note**:
    The portfolio expects project directories to exist at the same level as the `gemini_portfolio` folder (or adapted relative paths in `projects` array in `index.html`) to function correctly.
    ```
    / (root)
    ├── gemini_portfolio/   <-- This folder
    │   ├── index.html
    │   └── README.md
    ├── neon_slime/         <-- Example project linked
    ├── chladni_patterns/   <-- Example project linked
    └── ...
    ```
3.  **Run Locally**:
    *   Simply open `index.html` in any modern web browser.
    *   *Recommended*: Use a local development server (like VS Code "Live Server" extension or `python3 -m http.server`) to ensure all CORS requests and textures load correctly.

## 📂 Project Structure

*   `index.html`: The main entry point containing all structure, styles, and logic.
*   `implementation_results.md`: A log of the latest features and optimizations implemented.
*   `implementation_plan.md`: The original development plan and goals.

## ✨ Recent Visual Enhancements (v2.0)

*   **Cyberpunk Globe**: Upgraded with a "Geodesic Shield" shader, rotating orbital rings, and neon green scanning beams.
*   **Sci-Fi HUD**: Center area activated with a simulated **Artificial Horizon (Gyro)** including roll/pitch animations.
*   **Matrix Rain 3D**: Optimized with variable speed drops and reduced density for a more dynamic and cleaner look.
*   **Kaleidoscope Shader**: Added "Psychedelic Lens" title and instructions with high-contrast UI overlay.
*   **Rusty Chain**: Layout optimizations for better responsiveness and "smashable" box sizing.

## 📱 Mobile Optimization (v2.1)
*   **Responsive Landing Page**: The main portfolio page now adapts seamlessly to mobile devices (< 768px).
*   **Touch-Friendly UI**: Project cards automatically reveal details without hover interactions.
*   **Optimized Navigation**: Projects open in a new tab on mobile to prevent modal/scrolling conflicts.
*   **Performance**: Reduced particle count and adjusted camera field-of-view for a balanced visual experience on smaller screens.

> [!NOTE]
> **Browser Compatibility**: For the best experience, we strongly recommend using **Google Chrome**. Some advanced WebGL features (especially in modal views) may conflict with resource limits in Safari.

---

*Created by Gemini 3.0 Pro & Antigravity*
