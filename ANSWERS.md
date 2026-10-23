# Flutter Basics Laboratory — Review Questions

**1. What is the difference between a StatelessWidget and a StatefulWidget? Give one example of each from this lab.**

A StatelessWidget is a widget that does not manage changing data, while a StatefulWidget can update its display when its data changes. An example of a StatelessWidget is the Profile Card in Activity 1 because it only displays information. An example of a StatefulWidget is the Water Tracker in Activity 2 because the number of glasses changes when we press the buttons.

**2. Why is a StatefulWidget written as two classes? What does each class do?**

A StatefulWidget has two classes because they have different purposes. The first class creates the widget and connects it to its state, while the second class stores the changing data and updates the screen. In Activity 2, `WaterTrackerPage` creates the state, while `_WaterTrackerPageState` manages the number of glasses.

**3. In Activity 2, what happened when you changed `_glasses` outside `setState()`? Why?**

When I moved `_glasses++` outside `setState()`, the number did not immediately update on the screen when I pressed the plus button. This happened because Flutter was not told to rebuild the widget. The `setState()` function is important because it tells Flutter that something has changed and the screen needs to update.

**4. Looking at the Debug Console in Activity 2, when is `build()` called?**

The `build()` method is called when the widget first appears and whenever `setState()` updates its data. In the Water Tracker, I could see a new `build() called` message in the Debug Console whenever I added, removed, or reset the glasses.

**5. Explain the main axis and the cross axis of a Row and of a Column.**

The main axis is the direction where widgets are arranged, while the cross axis is the opposite direction. In a Row, the main axis is horizontal and the cross axis is vertical. In a Column, the main axis is vertical and the cross axis is horizontal.

**6. In Activity 3, what happened when you removed Expanded from a StatBox? What does Expanded do?**

When I removed Expanded from one StatBox, the boxes no longer shared the available space equally, and the layout looked uneven. Expanded helps widgets use the available space properly. It is useful when we want several widgets in a Row to have equal widths.

**7. Why do we use GridView.builder for the menu instead of a Column with many children?**

We use GridView.builder because it arranges the menu items in a grid and only builds the items that are needed on the screen. It also allows the user to scroll through the menu. A Column simply places widgets vertically and is not as convenient for displaying many menu items.

**8. How do Stack and Positioned create the Best seller badge in Activity 4?**

Stack allows widgets to be placed on top of one another, while Positioned controls where a widget appears inside the Stack. In Activity 4, Stack allows the Best seller badge to appear over the menu card, and Positioned places it in the upper-left corner.

**9. What is the difference between customizing with ThemeData and with a style on one widget? Give one example of each from Activity 5.**

ThemeData is used to customize the overall appearance of the application, while styling one widget only changes that specific widget. In Activity 5, ThemeData controls the app's colors and button styles. An example of styling one widget is using TextStyle to change the appearance of a particular text.

**10. When you flip the dark-mode switch in Activity 5, which widget holds the state, and how does the change reach MaterialApp?**

The dark-mode state is stored in `_ThemeDemoAppState`, which belongs to the StatefulWidget called `ThemeDemoApp`. When I flip the switch, the `_setDark()` function uses `setState()` to update `_isDark`. This causes MaterialApp to rebuild and change its `themeMode` between light and dark mode.