### Flutter Concepts

- [Architecture](https://docs.flutter.dev/resources/architectural-overview)
    - layer model: 
        - platform-specific embedder: Using the embedder, Flutter code can be integrated into an existing application as a module, or the code might be the entire content of the application
            - underlying operating system
            - access to services
            - message event loop
        - Flutter engine: supports the primitives necessary to support all Flutter applications
            - graphics
            - text layout
            - file and network I/O
            - accessibility support
            - plugin architecture
            - Dart runtime and compile toolchain
            - The engine is exposed to the Flutter framework through dart:ui
        - Flutter framework: developers interact with Flutter through the Flutter framework
            - Basic foundational classes
                - animation
                - painting
                - gestures
            - rendering layer
                - abstraction for dealing with layout
            - widgets layer
                - composition abstraction
                - Each render object in the rendering layer has a corresponding class in the widgets layer
            - Material and Cupertino
                - comprehensive sets of controls that use the widget layer's composition primitives to implement the Material or iOS design languages

### Widgets

- [Composition](https://youtu.be/H7vgbmnI6mQ?si=XgLgvKv4sY_PJW68)
    - Flutter emphasizes widgets as a unit of composition
        - building blocks of a Flutter app's user interface
        - each widget is an immutable declaration of part of the user interface
        - Apps update their user interface in response to events (such as a user interaction) by telling the framework to replace a widget in the hierarchy with another widget. The framework then compares the new and old widgets, and efficiently updates the user interface.