insert into users values('dan', '$2a$10$5Sebr.mNHjAe3Lly97ZnqeXm5t/4wrfDbJKJCei6LXimyZ3SWwXnm', true); 
insert into users values('howard', '$2a$10$iCyW/yDkb6URKSeVwKrQt.FoIf5TJs87OkZfShVWuMQJWSHG83nGe', true); 

insert into authorities values('dan', 'ROLE_USER');
insert into authorities values('howard', 'ROLE_USER');
insert into authorities values('dan', 'ROLE_ADMIN');

insert into master (master_id, name, password) values('1', 'dan', 'root'); 
insert into master (master_id, name, password) values('2', 'howard', 'root');

insert into website (website_id, urlname, master_id) values (1, 'http://soup.io', 1);
insert into website (website_id, urlname, master_id) values (2, 'http://yellowbook.com', 2);
insert into website (website_id, urlname, master_id) values (3, 'https://purevolume.com', 2);
insert into website (website_id, urlname, master_id) values (4, 'http://nationalgeographic.com', 2);
insert into website (website_id, urlname, master_id) values (5, 'https://lulu.com', 2);
insert into website (website_id, urlname, master_id) values (6, 'http://gmpg.org', 2);
insert into website (website_id, urlname, master_id) values (7, 'https://wsj.com', 2);
insert into website (website_id, urlname, master_id) values (8, 'http://google.com.br', 2);
insert into website (website_id, urlname, master_id) values (9, 'http://timesonline.co.uk', 2);
insert into website (website_id, urlname, master_id) values (10, 'http://cbc.ca', 1);

insert into accounts (account_id, accnames, accpassword, website_Id) values (1, 'Kerby', 'LYc5a5gaNCE', 1);
insert into accounts (account_id, accnames, accpassword, website_Id) values (2, 'Glenden', '1X1GWJEm7', 2);
insert into accounts (account_id, accnames, accpassword, website_Id) values (3, 'Jorgan', 'X87tVOrVz', 3);
insert into accounts (account_id, accnames, accpassword, website_Id) values (4, 'Buckie', 'Rrohpgv4o4C', 4);
insert into accounts (account_id, accnames, accpassword, website_Id) values (5, 'Lauri', 'DZpFh9', 5);
insert into accounts (account_id, accnames, accpassword, website_Id) values (6, 'Udall', 'wtlDLg7hhWxc', 6);
insert into accounts (account_id, accnames, accpassword, website_Id) values (7, 'Beale', 'qcx08j62M', 7);
insert into accounts (account_id, accnames, accpassword, website_Id) values (8, 'Elaina', '9WRzZXq', 8);
insert into accounts (account_id, accnames, accpassword, website_Id) values (9, 'Mayor', 'DpZ8eoi', 9);
insert into accounts (account_id, accnames, accpassword, website_Id) values (10, 'Rubetta', 'v9BnEQ', 10);
insert into accounts (account_id, accnames, accpassword, website_Id) values (11, 'Daisy', 'LLearq', 1);
insert into accounts (account_id, accnames, accpassword, website_Id) values (12, 'Oran', '2IwEIFLQrX', 2);
insert into accounts (account_id, accnames, accpassword, website_Id) values (13, 'Joanne', 'lpVsWGa1h', 3);
insert into accounts (account_id, accnames, accpassword, website_Id) values (14, 'Willabella', 'RFbHSqpZ6hvK', 4);
insert into accounts (account_id, accnames, accpassword, website_Id) values (15, 'Markus', 'iSZWn8ET', 5);
insert into accounts (account_id, accnames, accpassword, website_Id) values (16, 'Filip', 'YsivQq7', 6);
insert into accounts (account_id, accnames, accpassword, website_Id) values (17, 'Cori', 'ugSKcS2gix2', 7);
insert into accounts (account_id, accnames, accpassword, website_Id) values (18, 'Emiline', 'IctfZjIMzO', 8);
insert into accounts (account_id, accnames, accpassword, website_Id) values (19, 'Cullen', 'uo4t9C80o', 9);
insert into accounts (account_id, accnames, accpassword, website_Id) values (20, 'Salaidh', 'zkedBULCV2n', 10);
