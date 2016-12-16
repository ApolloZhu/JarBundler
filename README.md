# JarBundler
Simple encapsulation of a .jar to make it an .app for macOS

## How to use?

### Option 1: Injection
- Download release: [JarBundler.app.zip](https://github.com/ApolloZhu/JarBundler/releases/download/1.0.0/JarBundler.app.zip)
- Unzip
- Right click on `JarBundler.app`, select `Show Package Contents`
- Goto `/Contents/Resources`
- Drop your `.jar` file here
- Rename it to `src.jar`

### Option 2: From Scratch

> You can set `let DEBUG = true` to see output and error log from java

- Open the project
- Select target `JarBundler` in the project
- Select Build Phases
- In `Copy Bundle Resources`, click `+`, and add your `.jar` file
- Rename `.jar` file to `src.jar`
- Compile
