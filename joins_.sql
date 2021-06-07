--@block
--Use Case: STAFF AND THEIR CLIENTS
SELECT Clients.clientID, Clients.clientName, Staff.firstName, Staff.lastName, 
FROM Clients
INNER JOIN Staff
ON Clients.staffID = Staff.staffID;

--@block
--Use Case: STAFF AND INVOLVED HR INCIDENTS
SELECT HRIncidents.incidentName, HRIncident.incidentDate, Staff.firstName, Staff.lastName 
FROM HRIncidents
LEFT JOIN Staff
ON HRIncidents.staffID = Staff.staffID;

--@block
--Use Case: STAFF AND THEIR EMERGENCY CONTACTS
SELECT EmergencyContactInfo.contactFirstName, EmergencyContactInfo.contactCellPhone, Staff.firstName
FROM EmergencyContactInfo
LEFT JOIN Staff
ON EmergencyContactInfo.staffID = Staff.staffID;

--@block
--Use Case: TRANSACTIONS AND ORDERS
SELECT Transactions.transactionID, Transactions.transactionDate, ItemsOrdered.quantity, ItemsOrdered.price, 
FROM Transactions
LEFT JOIN ItemsOrdered
ON Transactions.transactionID = ItemsOrdered.transactionID;

--@block
--Use Case: INVENTORY AND ORDERS
SELECT Inventory.itemName, Inventory.itemCategory, ItemsOrdered.quantity, ItemsOrdered.price
FROM Inventory
Inner JOIN ItemsOrdered
ON Inventory.itemID = ItemsOrdered.itemID;