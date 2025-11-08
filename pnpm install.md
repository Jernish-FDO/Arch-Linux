# This guide will walk you through the entire setup from scratch.

### Prerequisites:

1.  **Node.js and pnpm installed:** Ensure you have Node.js (LTS version recommended) and pnpm installed on your Arch Linux system. If not, follow these steps:
    *   **Install Node.js (if not already):**
        ```bash
        sudo pacman -S nodejs npm
        ```
    *   **Install pnpm (if not already):**
        ```bash
        sudo pacman -S pnpm
        ```
    *   **If you faced `ERR_PNPM_NO_GLOBAL_BIN_DIR` before, ensure you ran `pnpm setup` and restarted your terminal.**

### Step-by-Step Guide:

#### **1. Create Your React Project with Vite**

We'll use `pnpm create vite` to scaffold a new React project.

1.  **Open your terminal.**

2.  **Create the project:**
    ```bash
    pnpm create vite my-react-app --template react
    ```
    *   Replace `my-react-app` with your desired project name.
    *   Use `--template react-ts` instead if you prefer TypeScript.

3.  **Navigate into your new project directory:**
    ```bash
    cd my-react-app
    ```

4.  **Install the initial project dependencies:**
    ```bash
    pnpm install
    ```
    This will install `react`, `react-dom`, `vite`, and `@vitejs/plugin-react` (or their TypeScript equivalents).

5.  **(Optional) Verify the initial setup:**
    ```bash
    pnpm dev
    ```
    Open the URL (e.g., `http://localhost:5173/`) in your browser to see the default Vite + React welcome page. Press `Ctrl+C` to stop the development server.

#### **2. Install Tailwind CSS and its Dependencies**

Now, we'll add Tailwind CSS, PostCSS, and Autoprefixer to your project.

1.  **Install the necessary packages as development dependencies:**
    ```bash
    pnpm add -D tailwindcss postcss autoprefixer
    ```

2.  **Generate Tailwind CSS and PostCSS configuration files:**
    ```bash
    npx tailwindcss init -p
    ```
    This command creates two files in your project root: `tailwind.config.js` and `postcss.config.js`.

#### **3. Configure Tailwind CSS**

You need to tell Tailwind CSS which files to scan for class names so it can generate the correct CSS.

1.  **Open `tailwind.config.js`** in your project root and modify the `content` array:

    ```javascript
    /** @type {import('tailwindcss').Config} */
    export default {
      content: [
        "./index.html",
        "./src/**/*.{js,ts,jsx,tsx}", // This line is crucial for Tailwind to scan your React components
      ],
      theme: {
        extend: {},
      },
      plugins: [],
    }
    ```

#### **4. Include Tailwind CSS Directives in Your Project's CSS**

Tailwind uses directives (`@tailwind base`, `@tailwind components`, `@tailwind utilities`) to inject its styles.

1.  **Open `src/index.css`** (or `src/main.css` depending on your Vite template) and **replace its entire content** with these three lines:

    ```css
    @tailwind base;
    @tailwind components;
    @tailwind utilities;
    ```
    You can optionally remove `src/App.css` and its import from `src/App.jsx` if you plan to rely solely on Tailwind for styling.

#### **5. Test Your Tailwind CSS Setup**

Let's modify `App.jsx` (or `App.tsx`) to use some Tailwind classes and verify everything is working.

1.  **Open `src/App.jsx`** (or `src/App.tsx`) and replace its content with a simple example:

    ```jsx
    import React from 'react';
    // Remove this import if you deleted App.css
    // import './App.css'; 

    function App() {
      return (
        <div className="min-h-screen flex flex-col items-center justify-center bg-gradient-to-r from-blue-500 to-purple-600 text-white p-4">
          <h1 className="text-6xl font-extrabold mb-4 animate-bounce">
            Hello, <span className="text-yellow-300">React</span> with Tailwind!
          </h1>
          <p className="text-xl text-center max-w-lg mb-8">
            This project is set up using <code className="bg-white text-blue-800 px-2 py-1 rounded-md">Vite</code>, <code className="bg-white text-purple-800 px-2 py-1 rounded-md">React</code>, and <code className="bg-white text-green-800 px-2 py-1 rounded-md">Tailwind CSS</code> on Arch Linux.
          </p>
          <button className="bg-white text-purple-700 font-semibold py-3 px-8 rounded-full shadow-lg hover:bg-gray-200 transform hover:scale-105 transition duration-300 ease-in-out">
            Get Started
          </button>
        </div>
      );
    }

    export default App;
    ```

2.  **Start the development server:**
    ```bash
    pnpm dev
    ```
