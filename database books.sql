-- database books
create database BooksDB;
create table BooksDB.Books(
Books_id int primary key auto_increment,
Books_Title varchar(50),
Books_Author varchar(50),
Books_genre varchar(100),
publication_year int ,
Book_price int
);
create table BooksDB.Author(
SI_NO int primary key auto_increment,
Author_name varchar(50),
Book_Title varchar(50),
foreign key(SI_NO) References Books(Books_id)
);
select * from BooksDB.Books;
select * from BooksDB.Author;
insert into BooksDB.Books values
(1,"A man","walter","Fiction",1300,1330),
(2,"universe","poot","Comdey",1913,1550),
(3,"filter","geroge","History",1781,1251),
(4,"River","Flower","Poetry",1689,7991),
(5,"Flow of Water","faler","Non Friction",1990,1500);
insert into BooksDB.Author values
(1,"secret","goldren"),
(2,"shelter","foak"),
(3,"pager","narrator"),
(4,"Seven stages","William Shakespeare"),
(5,"fake world","sensor");
select distinct Books_Title from BooksDB.Books;
select distinct Book_Title from BooksDB.Author;
update BooksDB.Books set Books_Title="Bhavathgeethai" where Books_id=5;
update BooksDB.Books set Books_Author="vyasa" where Books_id=5;
delete from BooksDB.Author where SI_NO=5;
use BooksDB;
select
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
inner join Author
on Books.Books_id=Author.SI_NO;
select * from BooksDB.Books;
select * from BooksDB.Author;
use BooksDB;
select
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
left join Author
on Books.Books_id=Author.SI_NO;
use BooksDB;
select
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
right join Author
on Books.Books_id=Author.SI_NO;
