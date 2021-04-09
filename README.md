# Orphanage-Management-System

## Referenece Documents ##
- [Proposal v1.0 Google Sheet](https://docs.google.com/document/d/1UBgLidxYHbMAREGaT6bw5DwEbr5z2TPmIazLHP02caU/edit?usp=sharing)
- [Proposal v2.0 Google Doc](https://docs.google.com/spreadsheets/d/18JVKwBmgeip-snMrx8ibywvMhi16xl9iDykSCJgKaUg/edit?usp=sharing)
- [Minutes of the meet](https://docs.google.com/document/d/1bbDwkVHarRbjCDs9FBHjfNeNKcQ3NCck20EXykDjUpI/edit?usp=sharing_eip&ts=6068abe1)

## Referenece Links ##
- [Setting up MySQL and MySQL Workbench in Ubuntu](https://www.youtube.com/watch?v=IWXQeXHDerg)
- [Dumping and reloading MySQL database](https://www.youtube.com/watch?v=BsKXzm6qbcM)

## Important Notes ##
1. Update requirements file before pushing to remote
2. Create user in mysql with name: dbms, password: password

## Procedure for adding new functionality##
Add functionalities which are independent of Employee data
1. pull from github
2. delete previous orphanage_management_system mysql database and create new emply database
3. delete migrations folder
4. create new class model for your functionality in models.py
5. Follow this order for creating tables: makemigrations child_app, migrate child_app, makemigrations, migrate
6. Add and edit html template files by copying template from room functionality or YouTube video repo
7. Add new item to sidebar_template.html
8. update urls.py
9. update AdminDBvIews.py with required functions and raw sql queries
10. Use objects.raw() for reading
11. Use cursor() for updating, inserting, deleting

Use mysql in new console or Workbench for checking updates to database
