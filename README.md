# flutter_krs_application

## C.1 Thinking Questions

1. Why can’t StatelessWidget use setState()?
   Answer: StatelessWidget doesn't support interal state that can change, meaning that this widget is made for a ui that doesn't need an update dynamically. For StatelessWidget does not keep the state, so it does not know what data should be updated, therefore setState() cannot be used in there.

2. What happens if setState() is removed from the button?
   Answer: if setState() is removed, flutter cannot get to know if there is a data, so that the ui remains as before.

3. Why is KrsDetailScreen better as StatelessWidget?
   Answer: Because KrsDetailsScreen just show a static data, and doesn't change any data or interaction that update the ui. If the screen only accept the data and show them, StatelessWidget is lighter, clean, and efficent.

4. What kind of data should NOT be stored as state?
   Answer: Data that should not be stored as state are such as constants, data from the parent widget that is static, style or decoration, and data that doesn't affect any UI.

## C.2 Debugging Challenge

```
setState(() {
    selectedCredits = selectedCredits + "3";
});

```

The error occurs because selectedCredits is an int, but "3" is a String, and Dart does not allow adding an integer and a string together, so the types must match (use 3 instead of "3")

## C.3 Design Decision Task

- Validation is needed because for selectedCredits cannot go decreasing under zero, if there is no validation the value can be a negatif and make the data no sense in the UI. In

- State proctects UI consistency because any change in value should going through the setState() and Flutter will rebuild and ensure the UI always mathces the actual data.

## Reflection

1.  What confused me this week
    The things that confused me was to understand how the StatefulWidget worked, especially why should be a createState() and why build() was not put in the main class directly.

2.  How state changed UI behavior
    State can change the UI, when some data changes is wrapped inside the setState(), flutter automatically update the UI. Without state, even though some data changes, the UI will remains the same.

3.  Errors I faced and solutions
    Error I faced, sometimes I forgot to use setState(), and incorrect StatefulWidget structure. The solution was to ensure wrapping the changes with setState(), and properly separate StatefulWidget from the State class

4.  Differences between Stateful and Stateless
    Stateless is used for immutable UI, while Stateful is used when data can change and the UI needs to change accordingly. Stateful can use setState(), while Stateless cannot.
