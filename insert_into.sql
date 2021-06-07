--@block
--Use Case: ADD NEW STAFF
INSERT INTO Staff (staffID, firstName, lastName, sex, age,
    startDate, endDate, position, homeStreet, homeCity,
    homeState, homeZip, homePhoneNo, officePhoneNo, cellPhoneNo, vacationDays, annualSalary,
    eligibleForBonus, hourlyWages, eligibleForOvertime)
VALUES ('');
--

INSERT INTO EmergencyContactInfo (contactID, contactFirstName, contactLastName,
    contactRelation, contactStreet, contactCity,
    contactState, contactZip, contactHomePhone, 
    contactOfficePhone, contactCellPhone, staffID)
VALUES('');
--

--@block
--Use Case: ADD NEW HR INCIDENT
INSERT INTO HRIncidents (incidentID, incidentName, incidentDate,
    incidentDescription, incidentResolved, staffID)
VALUES('');
--

--@block
--Use Case: ADD NEW CLIENT
INSERT INTO Clients (clientID, clientType, clientName, clientStreet,
    clientCity, clientState, clientZip, clientOfficePhoneNo, clientContactFirstName,
    clientLastName, clientContactOfficePhoneNo, clientContactCellPhoneNo, staffID)
VALUES('');
--

--@block
--Use Case: ADD NEW ITEM TO INVENTORY
INSERT INTO Inventory (itemID, itemName, itemCategory,
    itemDescription, currentInventoryQuantity, unitsOfMeasure)
VALUES('');
--

--@block
--Use Case: ADD NEW SALES TRANSACTION
INSERT INTO Transactions (transactionID, transactionDate, totalTransactionCost,
    datePaymentRecieved, dateOrderShipped)
VALUES('');
--

--@block
--Use Case: ADD NEW PURCHASE DETAILS
INSERT INTO Purchases (staffID, clientID, transactionID)
VALUES('');
--

--@block
--Use Case: ADD NEW ITEMS ORDERED
INSERT INTO ItemsOrdered (itemsOrderedID, quantity, price, transactionID, itemID)
VALUES('');
--