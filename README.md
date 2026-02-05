# flutter_krs_application

## Thinking Questions

1.  Why does each Flutter screen usually use Scaffold?
    Answer: Flutter screen usually use Scaffold because it provides automatically many widgets such as, AppBar, Drawer, SnackBar, BottomNavigationBar, and others. Scaffold will expand to fill the entire device screen to provide a framework for implementing the basic material design layout of the application.

2.  What happens if Navigator.pop(context) is called in HomeScreen?
    Answer: It will delete the stack of current page that is homescreen and shows an empty screen because there is no previous stack (HomeScreen is the first of the navigation of this application) or an error.

3.  Are these two MaterialPageRoute implementatios equivalent? Why?

4.  When should a screen use StatefulWidget instead of StatelessWidget?
    Answer: A screen should use StatefulWidget if there is a data or condition that can change like input of users or any kind of data that will affect the UI. And use StatelessWidget if the UI is static

## Design Decision Task

Why you chose those widgets

- I chose several widgets below:
  - Scaffold: the main structure of the page
  - AppBar: to write the page title
  - Container: to wrap the profile card neatly
  - Row: to manage the teks and icon horizontally
  - Text: to show the user identity
  - Icon: to show a simple person icon
  - ElevatedButton: to navigate into KrsPage

Why you arranged them that way

- First the user profile card arrangement is inspired from my civitas profile that shows in the dashboard, and for the navigation to KrsPage simplicity I just put the button navigation below the card.

How this screen could evolve in a real KRS system

- This screen could evolve as much as the data that must be shown in the screen from the real database, such as GPA, email, ID number, KRS history, etc. From there the arrangement of the UI will definitely evolve too, adapting the data that should be appeared.
