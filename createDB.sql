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
    PRIMARY KEY (DateTime, Type),
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


