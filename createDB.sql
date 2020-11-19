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
    Duration TIME,
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

INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 16:30:00", "Cardio", 10, "00:30:00", 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 16:30:00", "Cardio", 10, "00:30:00", 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Strength", 10, "00:30:00", 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Strength", 10, "00:30:00", 2);

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

