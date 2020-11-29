CREATE TABLE IF NOT EXISTS USER(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    firstName CHAR(15),
    lastName CHAR(15)
);

CREATE TABLE IF NOT EXISTS TypeOfWorkout(
    Name CHAR(12) PRIMARY KEY,
    Description CHAR(25)
);
CREATE TABLE IF NOT EXISTS WORKOUT(
    DateTime DATETIME,
    Type CHAR(12),
    Intensity INT,
    Duration INT,
    ID INT,
    PRIMARY KEY (DateTime, Type, ID),
    FOREIGN KEY (Type) REFERENCES TypeOfWorkout(Name),
    FOREIGN KEY (ID) REFERENCES USER(ID)
);

CREATE TABLE IF NOT EXISTS WEIGHT(
    Date DATE,
    Pounds INT,
    ID INT,
    PRIMARY KEY (Date, Pounds),
    FOREIGN KEY (ID) REFERENCES USER(ID)
);

CREATE TABLE IF NOT EXISTS FOODS(
    Name CHAR(10),
    foodCategory CHAR(10),    
    dailyValue INT,
    ssPounds INT,
    ssTablespoon INT,
    ssGrams INT,
    ssOunces INT,
    ssCups INT,
    macProteins INT,
    macFats INT,
    macCarbohydrates INT,
    vitaminA INT,
    vitaminE INT,
    vitaminC INT,
    vitaminD INT,
    Calcium INT,
    Chloride INT,
    Magnesium INT,
    Phosphorus INT,
    Potassium INT,
    Sodium INT,
    Sulfur INT,
    PRIMARY KEY (Name, foodCategory)
);

CREATE TABLE IF NOT EXISTS MEAL(
    DateTime DATETIME,
    ID INT,
    Meat CHAR(12),
    Vegetable CHAR(15),
    Fruit CHAR(12),
    Beverage CHAR(12),
    PRIMARY KEY (DateTime, Meat, Vegetable, Fruit, Beverage),
    FOREIGN KEY (ID) REFERENCES USER(ID),
    FOREIGN KEY (Meat) REFERENCES FOODS(Name),
    FOREIGN KEY (Vegetable) REFERENCES FOODS(Name),
    FOREIGN KEY (Fruit) REFERENCES FOODS(Name),
    FOREIGN KEY (Beverage) REFERENCES FOODS(Name)
);

INSERT INTO USER(ID, firstName, lastName) VALUES (1, "Bob", "Joe");
INSERT INTO USER(firstName, lastName) VALUES ("Rick", "James");
INSERT INTO USER(firstName, lastName) VALUES ("Drew", "Peacocks");

INSERT INTO TypeOfWorkout(Name, Description) VALUES ("Cardio", "Workout");
INSERT INTO TypeOfWorkout(Name, Description) VALUES ("Strength", "Workout");

INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-01 10:30:00", "Cardio", 1, 15, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-06 11:30:00", "Cardio", 2, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-07 12:30:00", "Strength", 3, 45, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-15 13:30:00", "Strength", 4, 60, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-13 14:30:00", "Cardio", 5, 15, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Cardio", 6, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-02 16:30:00", "Strength", 7, 45, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-03 17:30:00", "Strength", 8, 60, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-04 18:30:00", "Cardio", 9, 15, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-05 19:30:00", "Cardio", 10, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-08 20:30:00", "Strength", 1, 45, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-09 21:30:00", "Strength", 2, 60, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-10 01:30:00", "Cardio", 3, 15, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-11 02:30:00", "Cardio", 4, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-12 03:30:00", "Strength", 5, 45, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-13 04:30:00", "Strength", 6, 60, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-14 05:30:00", "Cardio", 7, 15, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-15 06:30:00", "Cardio", 8, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-16 07:30:00", "Strength", 9, 45, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-17 08:30:00", "Strength", 10, 60, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-20 09:30:00", "Cardio", 1, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-21 10:30:00", "Cardio", 2, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-22 11:30:00", "Strength", 3, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-23 12:30:00", "Strength", 4, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-24 13:30:00", "Cardio", 5, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-25 14:30:00", "Cardio", 6, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-26 15:30:00", "Strength", 7, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-27 16:30:00", "Strength", 8, 30, 1);

INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-01 10:30:00", "Cardio", 5, 15, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-06 11:30:00", "Cardio", 6, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-07 12:30:00", "Strength", 7, 45, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-15 13:30:00", "Strength", 8, 60, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-13 14:30:00", "Cardio", 9, 15, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Cardio", 10, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-02 16:30:00", "Cardio", 7, 45, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-03 17:30:00", "Cardio", 8, 60, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-04 18:30:00", "Cardio", 9, 15, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-05 19:30:00", "Cardio", 10, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-08 20:30:00", "Cardio", 5, 45, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-09 21:30:00", "Cardio", 6, 60, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-10 01:30:00", "Cardio", 7, 15, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-11 02:30:00", "Cardio", 8, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-12 03:30:00", "Strength", 9, 45, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-13 04:30:00", "Strength", 10, 60, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-14 05:30:00", "Cardio", 7, 15, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-15 06:30:00", "Cardio", 8, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-16 07:30:00", "Cardio", 9, 45, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-17 08:30:00", "Strength", 10, 60, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-20 09:30:00", "Cardio", 10, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-21 10:30:00", "Cardio", 9, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-22 11:30:00", "Strength", 8, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-23 12:30:00", "Strength", 7, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-24 13:30:00", "Cardio", 6, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-25 14:30:00", "Cardio", 5, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-26 15:30:00", "Strength", 5, 30, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-27 16:30:00", "Strength", 5, 30, 2);

INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-01 10:30:00", "Cardio", 5, 15, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-06 11:30:00", "Cardio", 4, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-07 12:30:00", "Strength", 3, 45, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-15 13:30:00", "Strength", 2, 60, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-13 14:30:00", "Cardio", 1, 15, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Cardio", 5, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-02 16:30:00", "Cardio", 4, 45, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-03 17:30:00", "Cardio", 8, 60, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-04 18:30:00", "Cardio", 3, 15, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-05 19:30:00", "Cardio", 2, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-08 20:30:00", "Cardio", 1, 45, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-09 21:30:00", "Cardio", 2, 60, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-10 01:30:00", "Cardio", 7, 15, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-11 02:30:00", "Cardio", 8, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-12 03:30:00", "Strength", 4, 45, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-13 04:30:00", "Strength", 6, 60, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-14 05:30:00", "Cardio", 1, 15, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-15 06:30:00", "Cardio", 2, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-16 07:30:00", "Cardio", 3, 45, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-17 08:30:00", "Strength", 3, 60, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-20 09:30:00", "Cardio", 3, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-21 10:30:00", "Cardio", 4, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-22 11:30:00", "Strength", 5, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-23 12:30:00", "Strength", 5, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-24 13:30:00", "Cardio", 10, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-25 14:30:00", "Cardio", 10, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-26 15:30:00", "Strength", 10, 30, 3);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-27 16:30:00", "Strength", 10, 30, 3);

INSERT INTO WEIGHT(Date, Pounds, ID) VALUES ("2020-11-18", 185, 1);
INSERT INTO WEIGHT(Date, Pounds, ID) VALUES ("2020-11-18", 200, 2);
INSERT INTO WEIGHT(Date, Pounds, ID) VALUES ("2020-11-18", 215, 3);

INSERT INTO FOODS(Name, foodCategory) VALUES ("Apple", "Fruit");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Banana", "Fruit");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Broccoli", "Vegetable");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Cauliflaur", "Vegetable");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Chicken", "Meat");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Steak", "Meat");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Coffee", "Beverage");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Corn", "Vegetable");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Milk", "Beverage");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Orange", "Fruit");
INSERT INTO FOODS(Name, foodCategory) VALUES ("Water", "Beverage");

INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 1, "Steak", "Corn", "Apple", "Water");
INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 2, "Chicken", "Broccoli", "Banana", "Water");
INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 3, "Steak", "Cauliflaur", "Orange", "Coffee");
INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 1, "Chicken", "Corn", "Apple", "Water");

