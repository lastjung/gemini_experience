# Project Implementation Summary

이 문서는 이미지 프롬프트를 텍스트로 변환하고, 이를 바탕으로 구현한 프로젝트들의 상세 내용을 기록한 것입니다.

---

## 1. Gemini 3.0 Portfolio (Space Landing)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/gemini_portfolio/index.html`

### 📜 Converted Text (Prompt)
> "Tailwind CSS와 Three.js를 결합하여 개발자의 Gemini 3.0 포트폴리오 랜딩 사이트를 만들어줘. 배경에는 깊이감 있는 우주 공간에 네온 색상(Cyan, Purple)의 파티클이 부유하고, 태양과 토성 같은 행성, 멀리의 블랙홀과 은하수를 표현해줘. 서브 디렉토리들을 카드 UI로 표현하고, 클릭 시 해당 프로젝트가 실행되며 닫기 버튼으로 돌아올 수 있어야 해."

### 💻 Implementation Features
1.  **Three.js Deep Space**:
    *   **Atmospheric Scene**: Deep Blue Fog(`0x050510`)와 쉐이더로 구현된 태양, 고리를 가진 토성, 그리고 Canvas API로 생성된 **부드러운 원형 별(Soft Stars)**이 어우러진 고품질 우주 공간을 구현했습니다.
    *   **Galaxy Zoom Interaction**: 은하(Galaxy) 또는 텍스트를 클릭하면 카메라가 은하 중심부로 5초간 **시네마틱하게 여행(Travel)**하며 숨겨진 메시지("GEMINI SECTOR")가 드러납니다.
2.  **Cinematic Card Interactions**:
    *   **High Slide Reveal**: 카드에 마우스를 올리면 ID 번호가 페이드 아웃되고 제목이 상단으로 크게 이동(High Slide)하며, 긴 상세 설명이 드러나는 극적인 인터랙션을 구현했습니다.
    *   **Layout Density**: 그리드 간격(`gap-5`)과 섹션 여백을 정교하게 조정하여, 콘텐츠가 밀도 있고 몰입감 있게 꽉 찬(Dense) 프리미엄 레이아웃을 완성했습니다.
3.  **Project Navigation & Performance**:
    *   **Robust Iframe Modal**: Safari 등 로컬 환경의 보안 제약(Cross-Origin)을 우회하는 `requestAnimationFrame` 로딩 방식을 적용하여 모달 안정성을 확보했습니다.
    *   **Instant Loading**: `DOMContentLoaded` 이벤트를 사용하여 리소스 로딩 대기 없이 HTML 파싱 즉시 애니메이션이 시작되도록 최적화했습니다.
    *   **Gradient Typography**: "ANTI-GRAVITY"와 "EXPERIENCE" 타이틀에 네온 그라데이션을 적용하여 비주얼 임팩트를 강화했습니다.

---

## 2. Cyberpunk Globe (3D Interactive Wireframe)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/cyberpunk_globe/index.html`

### 📜 Converted Text (Prompt)
> "Three.js 라이브러리를 CDN으로 불러와서 우주를 배경으로 스스로 회전하는 사이버펑크 스타일의 3D 와이어프레임 지구본을 만들어주는데, 마우스로 드래그하여 자유롭게 회전과 줌인/아웃이 가능해야 하고, 지구 표면의 랜덤한 좌표에서 네온 블루 색상의 빛 기둥(Beacon)이 솟아오르며 주변으로 파동이 퍼져나가는 블룸(Bloom) 효과가 적용된 고퀄리티 인터랙티브 웹페이지를 단일 HTML 파일로 작성해줘.
>
> **Implementation Advice:** Use **Three.js** for 3D rendering. Use EffectComposer and UnrealBloomPass for the neon bloom effects. The globe can be created using WireframeGeometry. Beacons can be implemented as simple CylinderGeometry with shader materials for the pulse effect. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **3D Cyberpunk Globe**:
    *   `SphereGeometry`와 `WireframeGeometry`를 사용하여 검은색 구체 위에 파란색 와이어프레임 구현.
    *   `Points`를 활용한 3D 우주(Starfield) 배경.
2.  **Controls**:
    *   `OrbitControls`로 마우스 상호작용(회전, 줌).
    *   `autoRotate`로 자연스러운 자전 애니메이션.
3.  **Visual Effects**:
    *   **Beacons**: 랜덤 좌표에서 솟아오르는 네온 기둥 (Pulsating Animation).
    *   **Waves**: 기둥 바닥에서 퍼져나가는 `RingGeometry` 파동 효과.
    *   **Bloom**: `UnrealBloomPass`를 통한 강렬한 네온 글로우(Post-processing).

---

## 2. Fluid Particles (High-Performance Physics)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/fluid_particles/index.html`

### 📜 Converted Text (Prompt)
> "HTML5 Canvas API만을 사용하여 마우스 커서의 움직임에 따라 3,000개 이상의 형광색 입자들이 유기적으로 반응하며 흩어지는 고성능 유체 역학 시뮬레이션을 구현해줘. 입자들 간의 충돌 물리 엔진이 적용되어야 하고, 입자의 속도와 밀도에 따라 색상이 실시간으로 그라데이션되면서 마우스를 클릭하면 블랙홀처럼 빨려 들어가는 시각적으로 매혹적인 60프레임 애니메이션 코드를 작성해줘.
>
> **Implementation Advice:** Use **HTML5 Canvas API** for high-performance 2D rendering. For 3,000+ particles with collision detection, implement a **Quadtree** or Spatial Hash Grid to optimize checks. Use requestAnimationFrame for the loop. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Optimization**:
    *   **Spatial Hash Grid**: 3,500개 이상 입자의 충돌/회피 연산을 위한 공간 분할 최적화 (O(1) 조회).
    *   **Canvas API**: 고성능 2D 렌더링 및 `alpha: false` 컨텍스트 최적화.
2.  **Simulation Mechanics**:
    *   **Fluid Dynamics**: 마우스 커서를 피해 유기적으로 흩어지는 Repulsion Force.
    *   **Black Hole Mode**: 마우스 클릭 시 모든 입자가 중심으로 빨려 들어가는 Attraction Force.
3.  **Visual Style**:
    *   **Dynamic Color**: 입자의 속도에 따른 Blue(느림) → Cyan/Green(빠름) HSL 그라데이션.
    *   **Motion Trails**: 잔상 효과를 통한 속도감 표현.

---

## 3. Kaleidoscope Shader (Raw WebGL Art)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/kaleidoscope_shader/index.html`

### 📜 Converted Text (Prompt)
> "WebGL 쉐이더(GLSL)를 직접 작성하여 브라우저 화면 전체에 실시간으로 끊임없이 변화하고 회전하는 만델브로 집합 기반의 만화경(Kaleidoscope) 패턴을 렌더링해줘. 시간이 지남에 따라 사이키델릭한 색상 팔레트가 부드럽게 순환해야 하며, 마우스 위치에 따라 패턴의 대칭축과 줌 레벨이 왜곡되는 몽환적인 미디어 아트 웹 애플리케이션을 만들어줘.
>
> **Implementation Advice:** Use **Raw WebGL** or a simple wrapper like TWGL. The core logic should reside in the **Fragment Shader (GLSL)**. Pass time (u_time) and mouse coordinates (u_mouse) as uniforms to the shader for interactivity. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Raw WebGL**: 라이브러리 없이 순수 GLSL Fragment Shader로 전체 화면 렌더링.
2.  **Shader Logic**:
    *   **Kaleidoscope**: `fract()`와 `abs()`를 이용한 공간 접기(Folding) 및 반복.
    *   **Rotation**: `rotate2d` 행렬을 이용한 최면적인 회전 애니메이션.
    *   **Color Palette**: Cosine 기반의 부드러운 사이키델릭 색상 순환 (Inigo Quilez Palette).
3.  **Effects**:
    *   **Neon Glow**: 거리 함수(Distance Field) 역수를 활용한 발광 효과.
    *   **Interactivity**: 마우스 X/Y 좌표에 따라 패턴의 회전 속도, 줌, 대칭 축 실시간 왜곡.

---

## 4. Retro Synthwave Shooter (Canvas Game)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/synthwave_shooter/index.html`

### 📜 Converted Text (Prompt)
> "외부 이미지 에셋 없이 오직 자바스크립트 드로잉 함수만으로 80년대 레트로 신스웨이브(Synthwave) 스타일의 우주 비행 슈팅 게임을 만들어주는데, 배경에는 보라색 격자무늬 지평선이 무한히 스크롤되는 3D 원근감 효과를 넣고, 적을 파괴할 때 화면이 흔들리는 스크린 쉐이크(Screen Shake) 효과와 화려한 파티클 폭발 이펙트가 포함된 완성도 높은 게임을 단일 파일로 코딩해줘.
>
> **Implementation Advice:** Use **HTML5 Canvas API**. The rolling grid background can be simulated with simple 2D perspective math (no need for full 3D engine). Implement 'Screen Shake' by temporarily offsetting the canvas context (ctx.translate) during the render loop. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Pure 2D Canvas**: 외부 이미지 없이 `moveTo`, `lineTo`, `arc` 등 드로잉 함수만으로 레트로 그래픽 구현.
2.  **Visual Style**:
    *   **3D Perspective Grid**: 소실점을 향해 뻗어나가는 라인과 지수 함수(Exponential Scale)를 이용한 가상의 Z축 스크롤 효과.
    *   **Synthwave Aesthetic**: Neon Pink/Cyan/Purple 컬러 팔레트와 레트로 썬(Retro Sun) 줄무늬 디자인.
3.  **Game Mechanics**:
    *   **Screen Shake**: 적 파괴 시 `ctx.translate(dx, dy)`를 이용한 타격감(Camera Shake) 구현.
    *   **Particles**: 폭발 시 다채로운 색상의 파티클 생성 및 물리 연산.
    *   **Dynamic Background**: 별들의 Parallax(시차) 이동 및 무한 스크롤 격자.

---

## 5. Neon Jelly Slime (Physics Soft Body)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/neon_slime/index.html`

### 📜 Converted Text (Prompt)
> "마우스로 잡아당기면 젤리처럼 늘어났다가 튕겨 나가는 탄성 물리 엔진(Spring-Mass System)이 적용된 거대한 네온 색상의 슬라임 덩어리를 화면 중앙에 구현하고, 슬라임 내부의 노드들이 서로 연결된 그물망 구조가 시각적으로 보이면서 벽에 부딪힐 때마다 찌그러지며 출렁거리는 질감이 느껴지는 인터랙티브 웹페이지를 작성해줘.
>
> **Implementation Advice:** Use **Matter.js** (Physics logic) specifically its "Soft Body" features (composites of constraints). Alternatively, implement a custom **Spring-Mass** system using Verlet Integration on Canvas if external libraries are restricted. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Matter.js Soft Body**:
    *   `Matter.Composites.softBody`를 활용하여 입자(Particle)와 제약 조건(Constraints)으로 이루어진 젤리 형태의 물리 객체 구현.
    *   내부의 그물망(Mesh) 구조인 Constraints를 시각화하여 탄성 구조를 직관적으로 표현.
2.  **Mouse Interaction**:
    *   `MouseConstraint`를 적용하여 마우스 드래그 시 슬라임이 엿가락처럼 늘어나고 놓으면 탄성에 의해 튕겨 나가는 효과 구현.
3.  **Neon Visuals**:
    *   Canvas `context`의 `shadowBlur`와 `globalCompositeOperation = 'lighter'`를 활용하여 강렬한 네온 그린 색상의 발광(Glow) 효과 적용.
    *   물리 엔진 렌더링 위에 커스텀 드로잉 루프를 덧입혀 시각적 완성도 향상.

---

## 6. Ink Fluid Sim (GPGPU Stable Fluids)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/ink_fluid_sim/index.html`

### 📜 Converted Text (Prompt)
> "WebGL을 활용하여 마우스의 움직임에 따라 다채로운 색상의 잉크가 물속에서 퍼지는 듯한 고밀도 유체 역학(Fluid Dynamics) 시뮬레이션을 구현하되, 수만 개의 입자가 끊김 없이 연산되어 소용돌이치고 확산되는 과정을 몽환적인 오로라 컬러 팔레트로 표현해줘.
>
> **Implementation Advice:** Recommend **Three.js** with **Custom ShaderMaterial** or raw **WebGL** implementing "Stable Fluids" (Jos Stam's algorithm). Computation should happen on the GPU (Fragment Shaders) for performance with thousands of particles. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **GPGPU Physics**:
    *   **Raw WebGL**을 사용하여 Jos Stam의 **Stable Fluids** 알고리즘을 GPU 상에서 구현.
    *   `Advection` -> `Divergence` -> `Pressure(Jacobi)` -> `Gradient Subtract`의 4단계 물리 연산 파이프라인 구축.
2.  **Aurora Aesthetics**:
    *   마우스 인터랙션 시 Green, Purple, Cyan 계열의 **오로라 컬러 팔레트**가 랜덤하게 섞이도록 구현.
    *   밀도(Density) 텍스처의 고해상도(1024x1024) 처리로 잉크가 번지는 듯한 디테일 표현.
3.  **High Performance**:
    *   `OES_texture_float` 확장을 사용하여 부동소수점 텍스처로 정밀한 물리 연산 수행.
    *   Pressure Solving 단계에서 Jacobi Iteration을 20회 반복하여 비압축성 유체(Incompressible Fluid)의 리얼한 움직임 구현.

---

## 7. 3D Matrix Rain (Digital Typography)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/matrix_rain_3d/index.html`

### 📜 Converted Text (Prompt)
> "영화 매트릭스의 디지털 비 효과를 3차원 공간으로 재해석하여, 빛나는 녹색 코드 문자열들이 화면 깊숙한 곳에서부터 쏟아져 내리며 마우스 스크롤에 따라 카메라가 코드 사이를 뚫고 지나가는 듯한 깊이감(Depth of Field)과 속도감이 느껴지는 몰입형 3D 타이포그래피 아트를 구현해줘.
>
> **Implementation Advice:** Use **Three.js**. Create text columns using TextGeometry or sprites. For performance with many characters, a texture atlas approach with InstancedBufferGeometry is best. Use **Post-processing** for the glow/bloom effect. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **3D Texture Atlas**:
    *   HTML5 Canvas를 이용해 Katakana와 알파벳이 포함된 Matrix 문자셋 텍스처를 런타임에 생성(Texture Atlas)하여 외부 리소스 의존성을 제거했습니다.
    *   각 문자의 UV 좌표를 GLSL Shader에서 조작하여 문자열이 떨어지는 애니메이션을 효율적으로 구현했습니다.
2.  **InstancedMesh Optimization**:
    *   `InstancedMesh`를 사용하여 수백 개의 Rain Column(비 기둥)을 단 하나의 Draw Call로 렌더링함으로써 입체적인 3D 숲을 고성능으로 표현했습니다.
    *   각 인스턴스마다 속도(Speed), 위치 오프셋(Offset), 밝기(Brightness)를 다르게 부여하여 자연스러운 랜덤성을 확보했습니다.
3.  **Visual Immersion**:
    *   **UnrealBloomPass**: 포스트 프로세싱을 적용하여 문자들이 네온 그린 색상으로 영롱하게 빛나는 글로우 효과를 구현했습니다.
    *   **Interactive Camera**: 마우스 호버로 시점을 둘러보고(LookAround), 스크롤을 통해 디지털 비 사이를 뚫고 지나가는(Zoom/Travel) 몰입감 있는 인터랙션을 제공합니다.

---

## 8. Retrowave Flight Sim (Infinite Terrain)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/retrowave_terrain/index.html`

### 📜 Converted Text (Prompt)
> "Three.js와 Perlin Noise 알고리즘을 활용해 80년대 레트로웨이브 스타일의 보라색 네온 그리드 지형이 카메라를 향해 끝없이 다가오는 비행 시뮬레이션을 구현하되, 지형의 높낮이가 실시간으로 춤추듯 역동적으로 변하고 배경에는 거대한 레트로 태양이 서서히 지며 붉은빛을 내뿜는 몽환적인 장면을 만들어줘.
>
> **Implementation Advice:** Use **Three.js** and a **Perlin Noise** library (like simplex-noise). Displace the vertices of a PlaneGeometry based on the noise value. Move the plane or the camera to simulate flight, looping the position to create an infinite terrain. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Infinite Terrain**:
    *   `PlaneGeometry`와 `simplex-noise` 라이브러리를 사용하여 실시간으로 지형을 생성(Procedural Generation).
    *   Y축(깊이) 노이즈 좌표를 시간에 따라 이동시켜, 카메라가 무한히 앞으로 비행하는 듯한 시각적 착각(Infinite Scroll) 구현.
2.  **Retrowave Aesthetics**:
    *   **Neon Grid**: Magenta(자홍색) 와이어프레임과 주변부로 갈수록 어두워지는 Fog 효과를 결합해 80s 사이버펑크 분위기 연출.
    *   **Retro Sun**: ShaderMaterial로 직접 구현한 거대한 태양. 그라데이션과 스캔라인(Stripes) 애니메이션 포함.
3.  **Dynamic Animation**:
    *   단순한 지형 이동뿐만 아니라, `sin`, `cos` 함수를 섞어 지형이 음악에 맞춰 춤추는 듯한(Dancing Terrain) 웨이브 효과 추가.
    *   `UnrealBloomPass`를 통해 네온 그리드와 태양 빛이 번지는 몽환적인 글로우(Glow) 효과 적용.

---

## 9. Sci-Fi HUD Interface (Iron Man Style)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/sci_fi_hud/index.html`

### 📜 Converted Text (Prompt)
> "아이언맨의 자비스나 SF 영화에 나오는 해킹 화면처럼, 복잡한 원형 그래프가 회전하고 알 수 없는 데이터 스트림이 빠르게 흘러가며, 'ACCESS GRANTED', 'SYSTEM BREACH' 같은 경고창이 무작위로 팝업되는 매우 복잡하고 긴박감 넘치는 사이버네틱 헤드업 디스플레이(HUD) 화면을 HTML/CSS 애니메이션만으로 구현해줘.
>
> **Implementation Advice:** Use **Pure CSS Animations (Keyframes)** and **SVG** for the cleanest circles and lines. Use transform: rotate(...) and opacity for the HUD elements. Javascript can be minimal, just to trigger classes or randomize text content. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Pure CSS Animations**:
    *   복잡한 회전(Spin), 역회전, 깜빡임(Blink), 크기 변화(Breathe) 등 모든 시각적 움직임을 `@keyframes`로 구현하여 가볍고 부드러운 60fps 애니메이션 제공.
    *   `perspective`와 `rotateY`를 사용해 평면 HUD가 아닌 3D 공간에 떠 있는 듯한 입체적인 홀로그램 UI 연출.
2.  **SVG Graphics**:
    *   고해상도에서도 깨지지 않는 선명한 원호(Arc)와 눈금, 점선 데코레이션을 SVG `stroke-dasharray`를 활용해 드로잉.
    *   중앙의 'Arc Reactor' 스타일 링이 서로 다른 속도로 회전하며 복잡한 기계적 느낌 전달.
3.  **Cybernetic Interactions**:
    *   **Data Stream**: 해킹 로그가 폭포수처럼 쏟아지는 터미널 효과 구현.
    *   **Random Alerts**: JavaScript로 제어되는 무작위 경고 팝업('SYSTEM BREACH', 'ACCESS DENIED')이 긴박감을 고조시킴.
    *   **Glitch Effect**: 무작위 픽셀 이동(Shake)으로 시스템 불안정을 시각적으로 표현.

---

## 10. Velvet Cloth Sim (Tearable Physics)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/velvet_simulation/index.html`

### 📜 Converted Text (Prompt)
> "HTML5 Canvas와 Verlet Integration 알고리즘을 사용하여 마우스나 트랙패드로 잡아서 당기면 물리적으로 늘어나고 세게 당기면 찢어지는 붉은색(색상선태 가능) 벨벳 질감의 천(Cloth) 시뮬레이션을 구현하되, 바람의 영향으로 천이 자연스럽게 펄럭이는 효과와 중력 모델을 정교하게 적용해줘.
>
> **Implementation Advice:** Use **HTML5 Canvas**. Implement **Verlet Integration** for the physics (points and constraints). To "tear" the cloth, check if the distance between two points in a constraint exceeds a threshold, then remove that constraint. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Verlet Integration Physics**:
    *   **Points & Constraints**: 질점(Mass Points)과 스프링 제약(Constraints) 기반의 물리 엔진을 직접 구현하여 유연한 천의 움직임을 모사했습니다.
    *   **Stability**: 제약 조건을 여러 번(5회) 반복 계산(Relaxation)하여 천이 과도하게 늘어나거나 불안정해지는 것을 방지했습니다.
2.  **Interactive Tearing (찢어짐 효과)**:
    *   **Drag & Tear**: 마우스/터치로 천을 잡고 강하게 당기면, 천이 물리적 한계를 견디지 못하고 **실제로 찢어집니다(Tear)**.
    *   **Scissors Mode**: 마우스 우클릭 드래그 시, 해당 경로에 있는 연결선을 즉시 절단하여 가위로 자르는 듯한 상호작용을 제공합니다.
3.  **UI & Customization**:
    *   **Hue Slider**: 직관적인 슬라이더를 통해 벨벳 천의 색상을 실시간으로 변경할 수 있습니다.
    *   **Reset**: 시뮬레이션을 언제든지 초기화할 수 있는 리셋 기능을 제공합니다.
    *   **Velvet Aesthetics**: 짙은 와이어프레임 렌더링과 낮은 채도의 배경으로 고급스러운 벨벳 질감을 표현했습니다.

---

## 11. Falling Sand (Elemental Alchemy)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/falling_sand_game/index.html`

### 📜 Converted Text (Prompt)
> " 'Falling Sand' 게임처럼 픽셀 단위로 물리 법칙이 적용되는 캔버스를 만들고 모래, 물, 불, 산성 용액(Acid) 등 4가지 원소를 마우스로 뿌릴 수 있게 하되, 물과 불이 만나면 수증기가 되어 날아가고 산성 용액이 닿으면 지형이 녹아내리는 화학 반응까지 시뮬레이션해줘.
>
> **Implementation Advice:** Use **HTML5 Canvas**. Implement a **Cellular Automata** grid system. Iterate through the grid (bottom-up for falling elements) each frame to update states. Access pixel data directly (ImageData) for rendering speed if the grid is large. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Cellular Automata Engine**:
    *   200x200 그리드 기반의 셀룰러 오토마타 엔진을 구현하여 각 픽셀(Cell)이 물리 법칙에 따라 매 프레임 상호작용하도록 했습니다.
    *   `ImageData`를 직접 조작하여 40,000개의 셀을 60fps로 실시간 렌더링합니다.
2.  **Elemental Physics**:
    *   **Sand**: 중력에 의해 떨어지며, 바닥에 쌓이면 경사면을 따라 미끄러져 피라미드 형태를 이룹니다.
    *   **Water**: 액체처럼 아래로 흐르다 막히면 좌우로 퍼져나가는 유체 역학을 구현했습니다.
    *   **Fire**: 위로 솟구치며 무작위로 움직이고, 일정 시간이 지나면 소멸합니다.
    *   **Acid**: 물처럼 흐르지만, 돌(Stone)이나 모래(Sand)에 닿으면 이를 녹여버리는 부식성을 가집니다.
    *   **Steam/Smoke**: 기체 물리 법칙을 적용하여 위로 날아가며 흩어집니다.
3.  **Chemical Reactions**:
    *   `Water + Fire = Steam`: 물과 불이 만나면 즉시 증발하여 수증기가 됩니다.
    *   `Acid + Terrain = Dissolve`: 산성 용액이 지형에 닿으면 자신과 지형을 모두 소멸시킵니다.

---

## 12. Ant Colony Optimization (Swarm Intelligence)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/ant_colony/index.html`

### 📜 Converted Text (Prompt)
> "수백 마리의 개미들이 집에서 나와 무작위로 먹이를 찾으러 다니는데, 먹이를 찾은 개미가 집에 돌아갈 때 페로몬(Pheromone)을 남기고, 다른 개미들이 그 페로몬 흔적을 따라 이동하면서 점차 가장 효율적이고 짧은 경로(Shortest Path)가 형성되는 군집 지능 알고리즘을 시각화해줘.
>
> **Implementation Advice:** Use **HTML5 Canvas**. Keep a grid (2D array) for pheromone levels. Ants are independent agents. Update the grid (pheromone evaporation/deposit) and render it as a heatmap or semi-transparent layer. 모든 의존관계의 코드를 하나의 HTML에 담는 형태로 코드 작성."

### 💻 Implementation Features
1.  **Swarm Intelligence**:
    *   **Independent Agents**: 1,200마리의 개미가 독립적으로 판단하고 자연스러운 곡선(Wiggle)을 그리며 이동합니다.
    *   **State Machine**: `Searching`(탐색)과 `Returning`(귀환) 상태를 전환하며 최적 경로를 찾아냅니다.
2.  **Pheromone Grid**:
    *   **High Visibility**: 붉은색 고속도로처럼 선명하게 페로몬 경로가 시각화됩니다. 감지 임계값을 낮춰 희미한 흔적도 추적합니다.
    *   **Evaporation**: 시간이 지나면 페로몬이 증발하여, 사용되지 않는 경로는 자연스럽게 사라집니다.
3.  **Interactive Elements**:
    *   **Multiple Food Sources**: 먹이의 개수(1~3개)를 설정할 수 있으며, 각 먹이는 **노랑, 초록, 보라색**으로 구분되어 시각적으로 다채롭게 표현됩니다.
    *   **Continuous Simulation**: 먹이가 소진되면 즉시 새로운 위치에 랜덤하게 생성되어 시뮬레이션이 끊임없이 이어집니다.
    *   **Dynamic Controls**: 화면 중앙의 집(Home)을 중심으로 개미가 퍼져나가며, 여러 개의 먹이 중 원하는 것을 드래그하여 실시간으로 경로를 바꿀 수 있습니다.
    *   **Reset & Respawn**: `Reset Current` 버튼으로 현재 설정을 유지한 채 즉시 초기화할 수 있습니다.
4.  **Optimization**:
    *   `Float32Array`와 `ImageData` 직접 조작을 통해 수십만 픽셀의 페로몬 그리드를 실시간으로 연산합니다.

---

## 13. Rusty Chain Simulation (Matter.js Physics)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/rusty_chain/index.html`

### 📜 Converted Text (Prompt)
> "화면 상단에 고정된 녹슨 쇠사슬을 마우스로 잡아당기거나 흔들 수 있는 시뮬레이션을 만들되, 각 사슬 고리(Link) 간의 물리적 제약(Constraints)과 마찰력을 정교하게 계산하여 묵직한 무게감이 느껴지도록 하고, 사슬로 화면에 있는 나무상자들을 쳐서 무너뜨릴 수 있는 인터랙티브 환경을 구현해줘.
>
> **Implementation Advice:** Use **Matter.js**. It creates excellent chain simulations using `Constraints` between bodies. Use rectangular bodies for links and adjust density/friction to simulate the heavy 'rusty' feel."

### 💻 Implementation Features
1.  **Physics Engine (Matter.js)**:
    *   **Constraints**: `Matter.Constraint`와 `Composites.chain`을 사용하여 사슬의 연결 부위를 정교하게 시뮬레이션했습니다.
    *   **Heavy Feel**: 사슬 링크(Link)의 `density`(밀도)를 높게 설정(0.1)하여 묵직한 관성과 무게감을 구현했습니다. 끝부분에는 더 무거운 철구(Heavy Ball)를 달아 파괴력을 더했습니다.
2.  **Interactive Elements**:
    *   **Mouse Drag**: `MouseConstraint`를 추가하여 마우스로 사슬을 잡아당기거나 흔들어 물리적 상호작용을 할 수 있습니다.
    *   **Destructible Environment**: 가벼운 나무 상자(`d = 0.005`) 더미를 배치하여 사슬로 타격 시 와르르 무너지는 쾌감을 제공합니다.
3.  **Visuals**:
    *   **Rusty Aesthetic**: 녹슨 쇠 느낌의 브라운 컬러 팔레트와 둥근 모서리(Chamfer) 처리를 적용했습니다.

---

## 14. Creative Agency "AETHER" (Immersive 3D)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/creative_agency/index.html`

### 📜 Converted Text (Prompt)
> "미래지향적인 크리에이티브 에이전시 'AETHER'의 브랜드 웹사이트를 만들어줘. Three.js를 사용하여 배경에는 검은색 액체 질감의 파티클(Liquid Particles)이 마우스에 반응하여 물결치고, 스크롤에 따라 'WE SHAPE THE FUTURE'라는 거대한 타이포그래피가 나타났다가 사라지는 몰입형 원페이지 사이트를 구현해줘. 마우스 커서는 자석처럼 버튼에 달라붙는 마그네틱 효과(Magnetic Cursor)를 적용해줘.
>
> **Implementation Advice:** Use **Three.js** with custom shaders for the liquid particle background. Use **GSAP ScrollTrigger** for the smooth reveal of text and elements. Implement a custom cursor that interpolates position (`lerp`) and snaps to interactive elements."

### 💻 Implementation Features
1.  **WebGL Fluid Background**:
    *   **Custom Shaders**: `Three.js`와 `GLSL` 쉐이더를 사용하여 마우스 움직임에 반응하여 출렁거리는 액체 질감의 와이어프레임과 파티클 배경을 구현했습니다.
    *   **Interaction**: 마우스 위치(`uMouse`)를 유니폼으로 전달하여 커서 주변에 파동이 퍼져나가는 인터랙티브 효과를 적용했습니다.
2.  **Immersive Animations**:
    *   **GSAP ScrollTrigger**: 스크롤에 맞춰 거대한 타이틀 텍스트가 순차적으로 등장하고(`Stagger`), 배경 색상이 서서히 변하는(Cyan → Magenta) 시네마틱한 연출을 구현했습니다.
    *   **Magnetic Cursor**: 기본 커서를 숨기고, 마우스를 따라 부드럽게 움직이는 원형 커서를 제작했습니다. 버튼 위에 올리면 커서가 버튼에 자석처럼 달라붙는 물리 효과를 추가했습니다.
3.  **Modern UI/UX**:
    *   **Typography**: 'Syncopate'와 'Space Grotesk' 폰트를 사용하여 미래지향적이고 세련된 타이포그래피 레이아웃을 구성했습니다.

---

## 15. Immersive Resume (Glassmorphism & Particles)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/immersive_resume/index.html`

### 📜 Converted Text (Prompt)
> "Tailwind CSS와 Three.js를 결합하여 개발자의 포트폴리오 사이트를 만들어줘. 배경에는 깊이감 있는 우주 공간에 네온 색상(Cyan, Purple)의 파티클이 부유하고, 그 위에 'Glassmorphism(유리 질감)' 스타일의 카드 UI가 떠 있는 듯한 디자인을 원해. 스크롤하면 프로필, 프로젝트, 스킬 섹션이 부드럽게 떠오르며 등장하는 인터랙티브 웹 포트폴리오를 작성해줘.
>
> **Implementation Advice:** Use **Tailwind CSS** for layout and glassmorphism styling (`backdrop-blur`). Use **Three.js** for the ambient particle background. Use **GSAP** for scroll-triggered entrance animations of the cards."

### 💻 Implementation Features
1.  **3D Ambient Background**:
    *   `Three.js`로 수천 개의 파티클이 부유하는 3D 공간을 만들고, 마우스 움직임에 따라 파티클들이 은은하게 회전하며 깊이감(Depth)을 전달합니다.
    *   Cyan과 Purple 컬러의 이중 레이어로 구성하여 사이버펑크 감성을 더했습니다.
2.  **Glassmorphism UI**:
    *   **Tailwind CSS**의 `backdrop-blur`와 반투명 배경색을 활용하여, 배경의 파티클이 은은하게 비치는 고급스러운 유리기판 질감의 카드 UI를 구현했습니다.
3.  **Scroll Interactions**:
    *   **Reveal Animations**: 스크롤 시 각 섹션과 프로젝트 카드가 아래에서 위로 부드럽게 떠오르는 등장 애니메이션을 GSAP로 정교하게 구현했습니다.
    *   **Skill Bars**: 스킬 섹션에 도달하면 프로그레스 바가 차오르는 동적인 애니메이션을 추가했습니다.

---

## 16. Model Context Protocol Landing (Educational Info)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/mcp_landing/index.html`

### 📜 Converted Text (Prompt)
> "Anthropic이 제안한 개방형 표준인 'Model Context Protocol (MCP)'를 소개하는 교육용 랜딩 페이지를 만들어줘. 어두운 테마(Dark Mode)에 은은한 빗살무늬 글로우 효과가 배경에 깔리고, 스크롤를 내리면 MCP의 작동 원리(앱-프로토콜-서버)를 설명하는 다이어그램 애니메이션과 핵심 구성 요소(Resources, Prompts, Tools)가 페이드인 되며 나타나는 깔끔하고 모던한 디자인의 웹페이지를 코딩해줘.
>
> **Implementation Advice:** Use **CSS Variables** for theming. Implement a diagram connection animation using CSS `@keyframes`. Use `IntersectionObserver` to trigger fade-in animations when elements scroll into view."

### 💻 Implementation Features
1.  **Educational Visualization**:
    *   **Animated Diagram**: Host App, Protocol, Server 간의 연결 흐름을 보여주는 도식에 점선이 이동하는 CSS 애니메이션을 추가하여 데이터의 흐름을 직관적으로 시각화했습니다.
    *   **Feature Cards**: Resources, Prompts, Tools 등 MCP의 핵심 개념을 아이콘과 함께 깔끔한 카드 형태로 정리했습니다.
2.  **Modern Aesthetics**:
    *   **Glow Effects**: 어두운 배경(`Primary Dark`) 위에 Blue/Purple 계열의 그라디언트 글로우(`bg-glow`)를 배치하여 현대적이고 기술적인 분위기를 연출했습니다.
    *   **Glass Cards**: 텍스트 박스와 카드에 반투명 유리 효과를 적용하여 세련된 레이아웃을 구성했습니다.
3.  **Scroll Animations**:
    *   **IntersectionObserver**: 외부 라이브러리 없이 바닐라 JS의 `IntersectionObserver`를 사용하여, 스크롤 시 섹션들이 부드럽게 나타나는(`Fade Up`) 성능 최적화된 애니메이션을 구현했습니다.

---

## 17. Chladni Patterns (Cymatics Simulation)
**File Path:** `/Users/eric/PG/anti_gravity/gemini_experience/chladni_patterns/index.html`

### 📜 Converted Text (Prompt)
> "HTML5 Canvas와 파동 방정식을 사용하여 금속 판 위에 모래를 뿌리고 특정 주파수로 진동시켰을 때 모래가 진동이 없는 마디(Node)로 모여 기하학적인 무늬를 만드는 '클라드니 도형(Chladni Patterns)' 실험을 시뮬레이션하되, 주파수 슬라이더를 움직임에 따라 무늬가 실시간으로 변형되는 과정을 보여줘.
>
> **Implementation Advice:** Use **HTML5 Canvas**. The pattern is generated by the superposition of wave functions. Calculate the vibration value for each pixel/particle position based on the Chladni formula and move particles towards the nodes (areas close to 0 vibration)."

### 💻 Implementation Features
1.  **Wave Physics**:
    *   **Dual Geometry**: 사각형 판에는 고전적인 Chladni 공식을, 원형 판에는 극좌표계(Polar Coordinates) 기반의 파동 공식($\sin(n\theta)\cos(m\pi r)$)을 적용하여 기하학적 형태에 따른 서로 다른 공명 패턴을 시뮬레이션했습니다.
    *   **Stochastic Movement**: 입자가 진동 에너지($Amplitude^2$)에 비례하여 튕겨 나가도록 물리 엔진을 튜닝하여, 실제 모래처럼 마디(Node)에 선명하게 모이는 질감을 구현했습니다.
2.  **Particle System**:
    *   **18,000 Particles**: 최적화된 Canvas 렌더링으로 18,000개의 모래 입자를 60fps로 부드럽게 처리하며, 입자가 형상 경계 밖으로 나가지 않도록 경계 조건을 적용했습니다.
3.  **Interactive Control & UI**:
    *   **Shape Switching**: 버튼 하나로 사각형과 원형 판을 즉시 전환할 수 있으며, 형상 변경 시 입자들이 자동으로 재배치됩니다.
    *   **Enhanced Visibility**: 어두운 배경에서도 조작이 용이하도록 슬라이더와 컨트롤에 Cyan Glow 효과를 적용하고, UI 위치를 좌측 상단으로 배치하여 시각적 간섭을 최소화했습니다.

