# Prince William County Amateur Radio Servivce

This repository contains the source files and many additional resource files used by the [Prince William County (Virginia) Amateur Radio Emergency Service (ARES)][link-pwcares]. Many of these files represent years of development work and experience, but can never be kept completely up to date. If you wish to checkout and fix, modify, edit, use, or replace any of these files, please, do! Create a pull request for any changes you would like to see made and they will be reviewed. 

## Index

This is not meant to be a comprehensive index. Here are some of the files you will find.

* *.md* - These files are the source files for many of the new web pages. HTML is derived from these files using a number of tools.
* *.html* - These files are the actual web pages, and many of them may not associated markdown.
* *.css* - Cascading Style Sheets. The design elements of the web site.
* *.pdf* - PDF files, generally used by those that need a printed version of a particular work product, usually Quick Reference Guides. Depending on the age of the PDF, it may have originally been generated by *Microsoft Publisher*.
* *.sql* - Specifically, these are SQL queries and load statements for building a MariaDB or similar based database table and query. The syntax is currently MariaDB debugged but may work on other SQL compliant databases. 

Most of the files are organized by year, a hold over of the old version control model used. As they are moved into Git, they will be more logically laid out. 

## PWCARES Web Site Structure

* */html* - basic HTML files. The heart of the website
* */style* - CSS style sheets for the website layout
* */doc* - documents, mostly PDFs, but the occasional left over .doc/.docx and other proprietary formats
* */dwnld* - download for large documents or zip files
* */image* - pictures, gifs, etc 
* */blog* - files for the blog engine (WordPress)

## TO DO

* finish building out the MariaDB code to migrate the MS Access database to MariaDB
* Create forms to access and update the MariaDB for users. 

---

Any questions can be directed to the Emergency Coordinator, or the repository owner. 








[link-pwcares]: http://www.pwcares.org/