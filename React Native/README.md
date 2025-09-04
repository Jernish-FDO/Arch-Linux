# ⚛️ Arch Linux React Native Development Setup Guide

Welcome to the ultimate guide for setting up your Arch Linux system for React Native application development! This guide will walk you through every step of the process, from installing the necessary tools to creating your first app and connecting it to a backend service.

---

## 📜 Table of Contents

* [✅ Prerequisites](#-prerequisites)
* [🚶 Step-by-Step Installation Guide](#-step-by-step-installation-guide)
    * [Step 1: Install Core Dependencies](#step-1-install-core-dependencies)
    * [Step 2: Install Android Studio](#step-2-install-android-studio)
    * [Step 3: Set up the Android Emulator](#step-3-set-up-the-android-emulator)
    * [Step 4: Install React Native CLI and Expo CLI](#step-4-install-react-native-cli-and-expo-cli)
    * [Step 5: Configure Your Editor](#step-5-configure-your-editor)
* [🚀 Creating Your First React Native App](#-creating-your-first-react-native-app)
* [☁️ Backend with Firebase](#️-backend-with-firebase)
* [🤔 Troubleshooting](#-troubleshooting)
* [💡 What's Next?](#-whats-next)
* [🎉 Conclusion](#-conclusion)

---

## ✅ Prerequisites

Before we begin, please ensure you have the following:

*   A running Arch Linux system.
*   `sudo` privileges.
*   `yay` installed. If not, please refer to the guide in the parent directory.

---

## 🚶 Step-by-Step Installation Guide

### Step 1: Install Core Dependencies

First, let's install some essential tools for React Native development.

*   **Node.js and npm:** The core of React Native development. Node.js is a JavaScript runtime, and npm is its package manager.
*   **Watchman:** A tool by Facebook for watching changes in the filesystem. It's used by React Native to automatically reload your app when you make changes to the code.
*   **JDK (Java Development Kit):** Required for building Android apps.

```bash
sudo pacman -S --needed nodejs npm watchman jdk-openjdk
```

### Step 2: Install Android Studio

Android Studio is the official IDE for Android development, and it comes with the Android SDK and other essential tools.

```bash
yay -S android-studio
```

Once installed, launch Android Studio. You will be greeted with a setup wizard. Follow the on-screen instructions, and make sure to install the following components:

*   **Android SDK:** The software development kit for Android.
*   **Android SDK Platform:** The specific version of the Android platform to build your app against.
*   **Android Virtual Device:** For running the Android emulator.

### Step 3: Set up the Android Emulator

1.  **Open Android Studio.**
2.  In the welcome screen, click on **More Actions > AVD Manager**.
3.  Click on **Create Virtual Device**.
4.  Choose a device definition (e.g., Pixel 4) and click **Next**.
5.  Select a system image. It is recommended to use the latest stable version of Android.
6.  Click **Finish**.

Now you can launch the emulator by clicking the green play button in the AVD Manager.

### Step 4: Install React Native CLI and Expo CLI

*   **React Native CLI:** The command-line interface for React Native. It gives you more control over your project, but it also requires more configuration.
*   **Expo CLI:** A framework and a platform for universal React applications. It's easier to get started with, but it has some limitations.

```bash
sudo npm install -g react-native-cli expo-cli
```

### Step 5: Configure Your Editor

We will use Visual Studio Code for this guide.

1.  **Install VS Code:**
    ```bash
    yay -S visual-studio-code-bin
    ```
2.  **Install the React Native Tools extension:**
    *   Open VS Code.
    *   Go to the **Extensions** view (Ctrl+Shift+X).
    *   Search for `React Native Tools` and install the official extension by Microsoft.

---

## 🚀 Creating Your First React Native App

### With React Native CLI

1.  **Create a new React Native project:**
    ```bash
    npx react-native init MyAwesomeApp
    ```
2.  **Navigate to your new project:**
    ```bash
    cd MyAwesomeApp
    ```
3.  **Start the Metro bundler:**
    ```bash
    npx react-native start
    ```
4.  **Run the app:** Open a new terminal and run:
    ```bash
    npx react-native run-android
    ```

### With Expo

1.  **Create a new Expo project:**
    ```bash
    expo init MyAwesomeExpoApp
    ```
2.  **Navigate to your new project:**
    ```bash
    cd MyAwesomeExpoApp
    ```
3.  **Run the app:**
    ```bash
    npm start
    ```

---

## ☁️ Backend with Firebase

Firebase is a popular backend-as-a-service platform from Google.

1.  **Install the Firebase CLI:**
    ```bash
    sudo npm install -g firebase-tools
    ```
2.  **Create a Firebase project:**
    *   Go to the [Firebase Console](https://console.firebase.google.com/).
    *   Click on **Add project** and follow the instructions.

3.  **Connect your React Native app to Firebase:**
    *   Follow the official [React Native Firebase documentation](https://rnfirebase.io/) to connect your app to Firebase.

---

## 🤔 Troubleshooting

### `react-native` or `expo` command not found

*   **Symptom:** You get a `bash: react-native: command not found` or `bash: expo: command not found` error.
*   **Cause:** The npm global packages are not in your `PATH`.
*   **Solution:** Add `export PATH="$PATH:$(npm get prefix)/bin"` to your `~/.bashrc` or `~/.zshrc` file and source it.

### Android Emulator Issues

*   **Emulator not starting or running slowly:**
    *   **Symptom:** The emulator fails to start or is very laggy.
    *   **Cause:** KVM may not be set up correctly.
    *   **Solution:** Follow the [Arch Wiki guide for KVM](https://wiki.archlinux.org/title/KVM) to ensure it's properly installed and configured.

### Build and Run Issues

*   **"SDK location not found" error:**
    *   **Symptom:** The build fails with an error about the SDK location.
    *   **Cause:** The `ANDROID_SDK_ROOT` environment variable is not set.
    *   **Solution:** Add `export ANDROID_SDK_ROOT="$HOME/Android/Sdk"` to your `~/.bashrc` or `~/.zshrc` file and source it.

*   **Gradle issues:**
    *   **Symptom:** The build fails with a Gradle-related error.
    *   **Cause:** This can be due to a variety of reasons, such as a corrupted Gradle cache or a network issue.
    *   **Solution:** Try cleaning the project by running `./gradlew clean` in the `android` directory of your project. You can also try deleting the `~/.gradle` directory to clear the cache.

*   **"Could not connect to development server" error:**
    *   **Symptom:** The app opens on the emulator but shows a red screen with this error.
    *   **Cause:** The emulator is not able to connect to the Metro bundler.
    *   **Solution:** Run `adb reverse tcp:8081 tcp:8081` in your terminal.

---

## 💡 What's Next?

*   **Learn React Native:** Dive deeper into the [React Native documentation](https://reactnative.dev/docs/getting-started).
*   **Explore Expo:** Learn more about the [Expo platform](https://docs.expo.dev/).
*   **Build a simple app:** Try building a simple app to solidify your knowledge.

---

## 🎉 Conclusion

You now have a complete React Native development environment on your Arch Linux system. Happy coding!

Happy hacking! 🚀