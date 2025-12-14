
# Gemini 3.0 Experience - Anti-Gravity

**"Created using Gemini 3.0 Pro and Antigravity, inspired by [this video](https://www.youtube.com/watch?v=NWxJzrA_JdE)."**

Welcome to **Gemini Experience**, a curated collection of high-performance web experiments, interactive 3D simulations, and creative coding projects. This repository demonstrates the power of modern web technologies (WebGL, Canvas API, Physics Engines) combined with AI-assisted development.

The project features a central **3D Space Portfolio** (`gemini_portfolio`) that acts as an immersive hub to explore all the other experiments.

## 🚀 Quick Start

To experience the full suite of projects:

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/lastjung/gemini_experience.git
    cd gemini_experience
    ```

2.  **Run a local server**:
    Because many projects use advanced browser features (ES modules, textures, Web Workers), they require a local server to avoid CORS issues.
    *   **VS Code**: Right-click `gemini_portfolio/index.html` and select "Open with Live Server".
    *   **Python**:
        ```bash
        # Run inside the root directory
        python3 -m http.server 8000
        ```

3.  **Explore**:
    Open `http://localhost:8000/index.html` (Recommended) or `http://localhost:8000/gemini_portfolio/index.html` in your browser. Both will work identicaly.
    *   Navigate the 3D space.
    *   Click on the galaxy to zoom in.
    *   Click any project card to launch the experiment.

---

## 📂 Project Catalog

This repository contains **18+ unique web experiments**. Below is a summary of each:

### 🌟 Main Hub
*   **[Gemini Portfolio](./gemini_portfolio/index.html)**: A fully immersive 3D space environment with procedural stars, planets, and a galaxy. Features cinematic camera transitions and glassmorphism UI cards to navigate this repository.

### 🎨 Visual Arts & Shaders
*   **[Kaleidoscope Shader](./kaleidoscope_shader/index.html)**: Raw WebGL fragment shader rendering infinite, psychedelic fractal patterns.
*   **[3D Matrix Rain](./matrix_rain_3d/index.html)**: A 3D reinterpretation of the Matrix digital rain using texture atlases and post-processing glow.
*   **[Cyberpunk Globe](./cyberpunk_globe/index.html)**: Interactive wireframe globe with neon beacons and bloom effects.
*   **[Creative Agency "AETHER"](./creative_agency/index.html)**: Liquid particle background with magnetic cursor interactions.

### 💧 Physics & Simulations
*   **[Fluid Particles](./fluid_particles/index.html)**: High-performance 2D fluid dynamics with 3,500+ particles using a Spatial Hash Grid.
*   **[Ink Fluid Sim](./ink_fluid_sim/index.html)**: GPU-accelerated (GPGPU) Stable Fluids simulation illustrating ink diffusion.
*   **[Neon Slime](./neon_slime/index.html)**: Soft-body physics simulation using Matter.js; a giant interactive jelly structure.
*   **[Velvet Cloth](./velvet_simulation/index.html)**: Tearable cloth physics using Verlet Integration.
*   **[Rusty Chain](./rusty_chain/index.html)**: Heavy physical chain simulation with destructible crates.
*   **[Chladni Patterns](./chladni_patterns/index.html)**: Visualizing acoustic resonance patterns on vibrating plates.

### 🕹️ Games & Interactivity
*   **[Retro Shooter](./synthwave_shooter/index.html)**: 80s Synthwave-style infinite flight shooter built purely with Canvas API.
*   **[Falling Sand](./falling_sand_game/index.html)**: "Powder Game" style elemental alchemy (Sand, Water, Fire, Acid) using Cellular Automata.
*   **[Retrowave Flight](./retrowave_terrain/index.html)**: Infinite procedural terrain generation using Perlin Noise.
*   **[Sci-Fi HUD](./sci_fi_hud/index.html)**: Complex Iron Man-style interface built entirely with CSS animations and SVG.

### 🧠 AI & Algorithms
*   **[Ant Colony](./ant_colony/index.html)**: Swarm intelligence simulation where 1,200 agents find shortest paths via pheromone trails.
*   **[MCP Landing](./mcp_landing/index.html)**: Educational page for the Model Context Protocol with interactive diagrams.

## 🛠️ Technology Stack

This project relies on standard web technologies without heavy build steps (No Bundlers required for most projects). **Most experiments are implemented as self-contained single-file HTML documents** (embedding CSS/JS) for simplicity and portability.

*   **Core**: HTML5, CSS3, JavaScript (ES6+)
*   **3D / WebGL**: [Three.js](https://threejs.org/)
*   **Physics**: [Matter.js](https://brm.io/matter-js/) (2D), Custom Verlet Integration (Cloth/Particles)
*   **Animations**: [GSAP](https://greensock.com/gsap/)
*   **Styling**: [Tailwind CSS](https://tailwindcss.com/) (CDN usage)
*   **Shaders**: GLSL (Fragment/Vertex Shaders)

## 💻 Development & Syncing

For GitHub Pages compatibility, the root `index.html` is a physical copy of `gemini_portfolio/index.html` (Symlinks are not supported on GitHub Pages). You can run either file, they are identical.

**If you modify the portfolio code:**
1.  Edit **`gemini_portfolio/index.html`** (Source of Truth).
2.  Run the sync script to update the root file:
    ```bash
    ./sync_index.sh
    ```
3.  Commit both files.

## 📝 License

This project is open source and available under the [MIT License](LICENSE).
