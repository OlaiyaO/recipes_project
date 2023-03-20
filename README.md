# recipes_project

A Flutter recipe store project.

## Getting Started

A Flutter app that allows users to search for recipes, bookmark them for later reference, and add the required ingredients to their shopping list. The app has three tabs at the bottom of the screen, each representing a different view: Recipes, Bookmarks, and Groceries.

Using the shared_preferences plugin, I implemented a local database to store the bookmarked recipes and the required ingredients for each. The app also uses a web API to search for recipes based on user input.

When a user finds a recipe they like, they can bookmark it with a single tap. The app then automatically adds the recipe to the Bookmarks page and also adds all the required ingredients to the user's shopping list, which is accessible from the Groceries tab.

Overall, I am pleased with the app and believe it will be useful for anyone who wants to easily keep track of recipes they want to try and the ingredients they need to buy.


- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
