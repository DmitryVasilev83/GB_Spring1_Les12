insert into account_user(username, password, firstname, lastname, account_non_expired, account_non_locked, credentials_non_expired, enabled)
values ('user', '$2a$10$o76vT7be2Wlf5COCxdpu.eOhS56trBcLCN.NqSDW00hGz9SSCzA6u', 'Иван', 'Петров', true, true, true,
        true),
       ('admin', '$2a$10$AbUwMreMZ1y7JDKKGhshve6DazhHb4DilCfif8cxNpHAn0u2D8aYO', 'Владимир', 'Иванов', true, true, true,
        true);

insert into authority (permission)
values ('product.create'),
       ('product.read'),
       ('product.update'),
       ('product.delete');

insert into account_role (name)
values ('ROLE_ADMIN'),
       ('ROLE_USER');

insert into role_authority (authority_id, role_id)
values (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (2, 2);

insert into user_role (user_id, role_id)
values (1, 2),
       (2, 1);


-- insert into MANUFACTURER (name) values ('Oxford Industries, Inc.');
-- insert into MANUFACTURER (name) values ('CHS Inc');
-- insert into MANUFACTURER (name) values ('FIRST REPUBLIC BANK');
-- insert into MANUFACTURER (name) values ('X-Links Silver Shares Covered Call ETN');
-- insert into MANUFACTURER (name) values ('Nicholas Financial, Inc.');
-- insert into MANUFACTURER (name) values ('Aberdeen Singapore Fund, Inc.');
-- insert into MANUFACTURER (name) values ('Liberty Interactive Corporation');
-- insert into MANUFACTURER (name) values ('Nivalis Therapeutics, Inc.');
-- insert into MANUFACTURER (name) values ('TransAct Technologies Incorporated');
-- insert into MANUFACTURER (name) values ('SAExploration Holdings, Inc.');
--
--
--
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cloves - Whole', 321.7, '5/2/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Apple - Northern Spy', 3483.35, '6/17/2021', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Bacardi Breezer - Strawberry', 383.81, '7/31/2021', 3);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Arizona - Plum Green Tea', 2334.05, '2/18/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Bar Special K', 671.45, '6/22/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Appetizer - Smoked Salmon / Dill', 3191.63, '5/18/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Magnotta - Bel Paese White', 698.89, '6/10/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Shrimp - 16/20, Iqf, Shell On', 778.2, '3/22/2021', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Hold Up Tool Storage Rack', 3637.77, '1/28/2021', 3);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Cotes Du Rhone Parallele', 1469.61, '4/2/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Shred Cheddar / Mozza', 1155.33, '4/6/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Oranges - Navel, 72', 2979.93, '3/2/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Gato Negro Cabernet', 1220.27, '3/3/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Feta', 1913.18, '5/6/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Oil - Olive', 3363.87, '5/10/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Chicken Giblets', 4848.1, '9/18/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Honey - Lavender', 484.47, '11/15/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Tea - Mint', 1492.7, '4/20/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Beef - Bones, Cut - Up', 3401.66, '2/3/2021', 3);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Chateau Timberlay', 3052.49, '11/2/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Longos - Burritos', 2740.6, '5/31/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Red, Harrow Estates, Cab', 4104.96, '12/2/2020', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Food Colouring - Orange', 558.04, '3/29/2021', 3);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('The Pop Shoppe - Grape', 2160.05, '3/22/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Chocolate - Mi - Amere Semi', 3865.96, '4/25/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Pork Ham Prager', 1033.33, '7/18/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Rum - Mount Gay Eclipes', 2733.37, '5/26/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Parasol Pick Stir Stick', 2789.57, '2/5/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Appetizer - Cheese Bites', 2794.64, '2/12/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Mikes Hard Lemonade', 3307.95, '7/5/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cake - Cake Sheet Macaroon', 4044.0, '12/27/2020', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Riesling Alsace Ac 2001', 3137.46, '8/30/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Juice - Orange, 341 Ml', 1750.1, '11/28/2020', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Coconut - Whole', 4699.15, '11/29/2020', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Lettuce - Curly Endive', 1033.53, '3/26/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Cottage Cheese', 3342.27, '2/5/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Sauce Bbq Smokey', 4120.84, '5/5/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Sherry - Dry', 4442.98, '7/26/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Pepper - Green Thai', 1274.74, '10/19/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Gouda', 4510.97, '1/15/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Pepper - Chillies, Crushed', 37.72, '6/21/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Smoked Paprika', 2356.56, '7/1/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Havarti, Salsa', 2729.55, '10/27/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Tandoori Curry Paste', 1855.71, '3/2/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Zonnebloem Pinotage', 4958.47, '8/4/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Chenin Blanc K.w.v.', 250.47, '5/24/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Rolled Oats', 4320.48, '11/21/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Roquefort Pappillon', 1941.85, '4/18/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cotton Wet Mop 16 Oz', 3332.02, '12/18/2020', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Salt - Rock, Course', 1024.9, '4/1/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Chick Peas - Dried', 3981.23, '12/3/2020', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Stock - Veal, Brown', 3388.57, '2/28/2021', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Coriander - Ground', 1030.47, '12/20/2020', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Pepsi - 600ml', 4858.68, '7/23/2021', 3);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Tart Shells - Savory, 3', 87.95, '12/18/2020', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Bagels Poppyseed', 3021.54, '7/24/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Dill Weed - Fresh', 1670.77, '5/4/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Jaboulet Cotes Du Rhone', 1852.13, '4/30/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Muffin Mix - Oatmeal', 4733.9, '8/11/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Potatoes - Yukon Gold, 80 Ct', 2635.93, '5/13/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Chutney Sauce', 3998.22, '7/21/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Ecolab Digiclean Mild Fm', 4564.81, '10/16/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Southern Comfort', 1140.86, '8/31/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Crab - Claws, Snow 16 - 24', 808.96, '11/8/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Sprouts - Brussel', 4023.41, '12/8/2020', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Butter - Pod', 3902.46, '3/8/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Foam Espresso Cup Plain White', 1189.92, '2/3/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Bocconcini', 4282.9, '10/3/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Noodles - Cellophane, Thin', 3470.29, '8/10/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Sugar - Brown', 483.25, '3/11/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Vodka - Hot, Lnferno', 1391.58, '9/15/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Apple - Royal Gala', 523.48, '6/17/2021', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Schnappes - Peach, Walkers', 4041.0, '6/26/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Jagermeister', 1005.55, '5/4/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Miso Paste White', 4010.37, '1/24/2021', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Chips - Assorted', 3524.57, '6/24/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Pepper - Red Bell', 156.65, '10/3/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Wyndham Estate Bin 777', 227.48, '2/2/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Sprouts - China Rose', 1286.63, '5/29/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cheese - Augre Des Champs', 4657.72, '1/10/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('C - Plus, Orange', 858.83, '11/18/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Wine - Redchard Merritt', 3781.1, '11/16/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Potatoes - Instant, Mashed', 3387.54, '4/15/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Beer - Corona', 3168.75, '3/24/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Steampan Lid', 934.94, '10/31/2021', 10);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Cardamon Seed / Pod', 4463.39, '2/24/2021', 2);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Extract - Raspberry', 2309.59, '5/23/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Savory', 4964.36, '6/6/2021', 7);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Fireball Whisky', 4986.94, '2/1/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Dates', 2766.19, '9/27/2021', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('French Pastries', 2343.03, '12/8/2020', 6);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Chocolate - Milk, Callets', 3201.35, '8/29/2021', 5);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Strawberries - California', 603.99, '10/16/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Bread - Multigrain Oval', 3221.73, '2/13/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Flavouring Vanilla Artificial', 3946.47, '8/29/2021', 1);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Water - Spring Water, 355 Ml', 700.4, '1/9/2021', 9);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Red Currants', 3170.31, '8/17/2021', 4);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Soup - Base Broth Chix', 3869.8, '8/14/2021', 8);
-- insert into PRODUCT (title, cost, MANUFACTURE_DATE, MANUFACTURER_ID) values ('Glass - Juice Clear 5oz 55005', 155.34, '10/31/2021', 10);
