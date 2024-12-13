
# 🎉 Flutter Utils 🚀

Welcome to **Flutter Utils**, your new best friend for Flutter development! 🎨

This utility package brings **convenience**, **efficiency**, and **simplicity** to your Flutter apps. With a wide variety of extensions, validators, and utilities, we’ve made it easier to build beautiful, responsive, and maintainable Flutter apps with **less boilerplate code**! 🧑‍💻✨

## Features 🌟

### 🛠️ **Extensions for `BuildContext`**  
Say goodbye to repetitive code! Our extensions on `BuildContext` give you instant access to useful properties like:
- 📱 **MediaQuery** – Screen size, orientation, and device pixel ratio.
- 🎨 **ThemeData** – Colors, typography, and more.
- 💻 **Breakpoints** – Responsive layout detection (`isMobile`, `isTablet`, `isDesktop`).
- 🚀 **Navigation** – Push and pop routes easily.

### 🧩 **Widget Padding Extensions**  
Add **padding** to any widget effortlessly:
- Uniform padding with `pad()`.
- Symmetric padding with `paddingSymmetric()`.
- Custom padding for top, bottom, left, right with `customPadding()`.

### 📝 **Validators**  
No more manual validation! 🔥 Validate:
- 📧 **Emails** – Check for valid email addresses.
- 🔑 **Passwords** – Ensure passwords are strong enough.
- 📱 **Phone Numbers** – Validate phone number formats.
- 🏆 And many more! Quickly add these checks to your forms.

### 🌱 **Additional Utilities**  
- **Adaptive Padding**: Adjust padding based on the screen width 📐.
- **Dynamic Font Scaling**: Make text responsive to screen size! 🔤.
- **Safe Area Helpers**: Easy access to safe area padding & view insets 📱.

## 🚀 How It Helps Developers

### 💪 **Less Boilerplate**  
Stop repeating yourself! Flutter Utils simplifies common tasks with clean and easy-to-use extensions, saving you time and effort. 🕒

### 📱 **Responsive Design Made Easy**  
Detect screen sizes and orientations with ease. Whether you’re building for **mobile**, **tablet**, or **desktop**, Flutter Utils has you covered. 🖥️📱

### 🔒 **Validate User Input Like a Pro**  
Forget writing manual validation logic. With just a call, you can validate email, phone numbers, and passwords. Let Flutter Utils handle the validation while you focus on building cool features. 🔐

### 🎨 **Theming and Styling at Your Fingertips**  
Quickly access theme properties, text styles, and colors without digging into `Theme.of(context)`. Just use the simple extensions to make your UI consistent and stylish! 💅

## 📦 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_utils: latest_version
```

Run `flutter pub get` to install 🚀.

## 🏁 Usage

### 🛠️ **Context Extensions**
Access media queries, themes, and breakpoints with ease:

```dart
import 'package:flutter_utils/flutter_utils.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.primaryColor, // 🎨 Access theme colors!
      width: context.width * 0.8,  // 📏 Use 80% of screen width
      height: context.height * 0.5,
      child: Text(
        'Hello, Flutter!',
        style: context.textTheme.headlineMedium, // 🖋️ Apply text styles
      ),
    );
  }
}
```

### 🧩 **Widget Padding Extensions**
Add padding in a breeze:

```dart
import 'package:flutter_utils/flutter_utils.dart';

Text('Padded Text').uniformPadding(16); // 💪 Add uniform padding of 16
Text('Custom Padding').customPadding(left: 10, top: 5); // 🎯 Add custom padding
```

### 📝 **Validators**
Validate common input fields:

```dart
import 'package:flutter_utils/flutter_utils.dart';

String email = 'test@example.com';
if (!email.isValidEmail()) {
  print('Invalid email address! 📧');
}

String password = 'P@ssw0rd';
if (!password.isStrongPassword()) {
  print('Weak password! 🔑');
}
```

### 🌱 **Breakpoints**
Create responsive layouts based on screen size:

```dart
import 'package:flutter_utils/flutter_utils.dart';

if (context.isMobile) {
  print('Mobile layout detected! 📱');
} else if (context.isTablet) {
  print('Tablet layout detected! 💻');
}
```

## 📚 Documentation

Check out the API docs for a complete list of available extensions and methods. With Flutter Utils, you have everything you need to streamline your development process and create beautiful, responsive apps faster than ever! 🚀

## 🤝 Contributing

We welcome contributions! Feel free to fork the repo, create a pull request, or report any issues you find. Let’s make this package even better, together! 🌍

## 🧑‍💻 License

This package is distributed under the MIT License. See [LICENSE](./LICENSE) for details. ✨

---

Let me know if you'd like to add any other specific sections or features, and I can enhance the `README` further!