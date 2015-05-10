# Secure sign-in

## Part 3a

We've gotten most of Photogram functional, but we haven't given users a way to favorite photos yet. Make the green heart button on the photos index page functional. It's up you how to implement this functionality based on what you know right now. 

## Part 3b

EVen though the favorite button is functional now, it's not very usable. Users should be able to just click on the button to favorite a photo. As is, the app doesn't know which user is clicking on the button. Let's fix this by letting users sign-in to our app.

1. Follow this [Devise guide][1] to include sign-in for this application. 
2. The `user_signed_in?` method returns true if a user is signed in. Use this method to change the links on the right side of the navbar depending on whether a user is signed in or not. Use the application layout file as a starting point. 
3. Create a form around the "favorite photo" button and change the link to a button element, keep all the classes the same. 
4. Set the `photo_id` in the form using a hidden field 
5. The `current_user` method returns the User object of the signed-in user. Use this method to automatically set the current user_id when a user tries to favorite a photo. (hint: use a hidden field input inside the form)

## Part 3c

Let's practice using hidden fields and the `current_user` method by improving the user experience for creating comments. 

1. Set the `user_id` in the comment creation form of the photos index page using a hidden field and the `current_user` method
2. Adjust the comment creation form so it looks like the form in the [mockup][2]

  [1]: https://gist.github.com/rbetina/9ef4a9ffa4604df74bb5
  [2]: http://htmlpreview.github.io/?https://github.com/boothappdev/bootstrap_exercises/blob/master/photogram/solution.html