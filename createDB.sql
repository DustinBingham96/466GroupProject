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
    PRIMARY KEY (Name)
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

INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 16:30:00", "Cardio", 10, 30, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 16:30:00", "Cardio", 10, 45, 2);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Strength", 10, 45, 1);
INSERT INTO WORKOUT(DateTime, Type, Intensity, Duration, ID) VALUES ("2020-11-18 15:30:00", "Strength", 10, 60, 2);

INSERT INTO WEIGHT(Date, Pounds, ID) VALUES ("2020-11-18", 185, 1);
INSERT INTO WEIGHT(Date, Pounds, ID) VALUES ("2020-11-18", 200, 2);
INSERT INTO WEIGHT(Date, Pounds, ID) VALUES ("2020-11-18", 215, 3);

INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Apple", "Fruit", 95, 182, 1, 1, 25, 1, 14, 0, 1, 2, 195, 2);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Banana", "Fruit", 105, 118, 1, 1, 27, 1, 17, 0, 0, 8, 422, 1);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Broccoli", "Vegetable", 50, 148, 4, 1, 10, 18, 220, 0, 7, 7, 468, 49);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Cauliflaur", "Vegetable", 146, 588, 11, 2, 29, 0, 472, 0, 12, 22, 1758, 176);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Chicken", "Meat", 335, 140, 38, 4, 0, 4, 0, 0, 2, 8, 312, 115);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Steak", "Meat", 679, 251, 62, 48, 0, 1, 3, 3, 3, 14, 700, 146);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Coffee", "Beverage", 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Corn", "Vegetable", 77, 90, 3, 1, 17, 0, 10, 0, 0, 8, 243, 14);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Milk", "Beverage", 103, 244, 8, 2, 12, 2, 0, 0, 30, 6, 366, 107);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Orange", "Fruit", 45, 96, 1, 0, 11, 4, 85, 0, 3, 2, 174, 0);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Water", "Beverage", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO FOODS(Name, foodCategory, dailyValue, ssGrams, macProteins, macFats, macCarbohydrates, vitaminA, vitaminC, vitaminD, Calcium, Magnesium, Potassium, Sodium) 
VALUES ("Beef", "Meat", 213, 85, 22, 13, 0, 0, 0, 0, 1, 4, 270, 61);

INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 1, "Steak", "Corn", "Apple", "Water");
INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 2, "Chicken", "Broccoli", "Banana", "Water");
INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 3, "Steak", "Cauliflaur", "Orange", "Coffee");
INSERT INTO MEAL(DateTime, ID, Meat, Vegetable, Fruit, Beverage) VALUES("2020-11-18 10:30:00", 1, "Beef", "Corn", "Apple", "Water");

