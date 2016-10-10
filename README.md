## Happy // Sad
____________  

A web application built with Sinatra that takes an input as a sentence, and determines whether a sentence has more happy or sad words in it. Built with Sinatra.

Sad words: disappointed, miserable, sad, sorrow, unhappy

Happy words: delight, delighted, delightful, happy, glad, joy, joyful, merry, pleasant

#### Instructions for use
<br>
Run `bundle install` to install dependencies

To run tests, run `rspec`

To run the application, run `rackup`

Visit `http://localhost:9292`

Or:

Visit the page hosted on Heroku:

`https://happy-sad.herokuapp.com/`

<br>


Challenge: Happy // Sad
Write a back-end service that classifies text as happy, sad or unknown

Text is happy if it includes at least 50% more happy words than sad words

It’s sad if it contains at least 50% more sad words than happy words

Otherwise the classification is unknown

These are the happy words your program should look for: delight, delighted, delightful, happy, glad, joy, joyful, merry, pleasant

These are the sad words: disappointed, miserable, sad, sorrow, unhappy

Even if any of the words are repeated, count each mention separately. For example, this text would be classified as happy: “I was glad to go to the beach. Very glad. Even though was a miserable day.”

Include a simple web page for users to enter text and run the service

Any language and/or framework can be used (e.g. Node.js, Rails etc)

When you finish, please send your code to me in a file named happysad.zip

Include in your code a README.md file with instructions on how to run the service and unit tests (don't forget to include unit tests!), and a short explanation of the design choices you’ve made
