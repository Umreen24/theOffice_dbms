--@block
CREATE TABLE Staff (
    staffID INT PRIMARY KEY AUTO_INCREMENT,
    staffFirstName VARCHAR(45) NOT NULL,
    staffLastName VARCHAR(45) NOT NULL,
    staffStartDate DATETIME NOT NULL,
    staffEndDate DATETIME,
    staffPosition VARCHAR(45) NOT NULL,
    staffHomeStreet VARCHAR(45) NOT NULL,
    staffHomeCity VARCHAR(45) NOT NULL,
    staffHomeState VARCHAR(45) NOT NULL,
    staffHomeZip INT NOT NULL,
    staffHomePhoneNo INT,
    staffOfficePhoneNo INT,
    staffCellPhoneNo INT,
    staffVacationDays INT NOT NULL,
    staffAnnualSalary FLOAT,
    staffEligibleForBonus VARCHAR(3)
);

--@block
CREATE TABLE EmergencyContactInfo (
    eContactID INT,
    eContactFirstName VARCHAR(45),
    eContactLastName VARCHAR(45),
    eContactRelation VARCHAR(45),
    eContactStreet VARCHAR(45),
    eContactCity VARCHAR(45),
    eContactState VARCHAR(45),
    eContactZip INT,
    eContactHomePhone INT,
    eContactOfficePhone INT,
    eContactCellPhone INT,
    staffID INT NOT NULL,
    PRIMARY KEY (eContactID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);

--@block
CREATE TABLE Clients (
    clientID INT,
    clientType VARCHAR(45),
    clientName VARCHAR(45),
    clientStreet VARCHAR(45),
    clientCity VARCHAR(45),
    clientState VARCHAR(45),
    clientZip INT,
    clientContactFirstName VARCHAR(45),
    clientLastName VARCHAR(45),
    clientContactOfficePhoneNo INT,
    clientContactCellPhoneNo INT,
    staffID INT NOT NULL,
    PRIMARY KEY (clientID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);

--@block
CREATE TABLE HRIncidents (
    incidentID INT AUTO_INCREMENT,
    incidentName VARCHAR(45) NOT NULL,
    incidentDate DATETIME NOT NULL,
    incidentDescription TEXT NOT NULL,
    incidentResolved BINARY(1) NOT NULL,
    staffID INT NOT NULL,
    PRIMARY KEY (incidentID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);

--@block
CREATE TABLE InvolvedIn (
    PRIMARY KEY (incidentID, staffID),
    FOREIGN KEY incidentID REFERENCES HRIncidents(incidentID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);

--@block
CREATE TABLE Transactions (
    transactionID INT PRIMARY KEY,
    transactionDate DATETIME,
    totalTransactionCost FLOAT,
    datePaymentRecieved DATETIME,
    dateOrderShipped DATETIME,
);

--@block
CREATE TABLE Purchases (
    staffID,
    clientID,
    transactionID,
    FOREIGN KEY (staffID) REFERENCES Staff(staffID),
    FOREIGN KEY (clientID) REFERENCES Clients(clientID),
    FOREIGN KEY (transactionID) REFERENCES Transactions(transactionID)
);

--@block
CREATE TABLE Inventory (
    itemID INT PRIMARY KEY AUTO_INCREMENT,
    itemName VARCHAR(45),
    itemCategory VARCHAR(45),
    itemDescription VARCHAR(45),
    currentInventoryQuantity FLOAT,
    unitsOfMeasure VARCHAR(45)
);

--@block
CREATE TABLE ItemsOrdered (
    orderID INT,
    quantity FLOAT,
    price FLOAT,
    transactionID INT NOT NULL,
    itemID INT NOT NULL,
    PRIMARY KEY (orderID),
    FOREIGN KEY (transactionID) REFERENCES Sales(transactionID),
    FOREIGN KEY (itemID) REFERENCES Inventory(itemID)
);
