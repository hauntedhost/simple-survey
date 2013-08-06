Simple Survey System
====================

Summary
-------
Develop a simple survey system to capture feedback from users and store it in a database in such a way that we can report on it later.  

Technical Information
---------------------
The Survey System should capture a user's email address so that we can identify who they are and get back to them. Also, we have a list of survey questions we would like the user to answer for us. When the user saves the survey we want to store their response for each question. 

We're not sure what questions we'll want to ask in the future so it's important that we can add new questions just by making entries in the database. 

Finally, we should be able to pull a report that shows a list of questions and responses grouped by user. It's not important that this report be developed now but the database should be structured so that we can build it later.

The system should make sure the user enters an email address but we don't need to worry about validating users' responses to survey questions right now. All responses can also be assumed to be free form text. Don't worry about error conditions either, like if the database is down for example. 

