--@block
--Aggregate Functions
--Use Case: COUNT ITEMS SHIPPED BEFORE CERTAIN DATE
SELECT COUNT(transactionID)
FROM Transactions
WHERE dateOrderShipped < '';

--@block
--Use Case: TOTAL NUMBER OF ACTIVE STAFF
SELECT COUNT(staffID)
FROM Staff
WHERE staffEndDate IS NULL;


--@block
--Use Case: NUMBER OF HR INCIDENTS IN A CERTAIN TIMEFRAME
SELECT incidentName, COUNT(incidentID)
FROM HRIncidents
WHERE incidentDate BETWEEN '' AND '';

--@block
--Use Case: NUMBER OF STAFF MEMBERS ASSIGNED TO CLIENT
SELECT clientName, COUNT(staffID)
FROM Clients;

--@block
--Use Case: COUNT EMERGENCY CONTACTS BY RELATION
SELECT COUNT(contactRelation)
FROM EmergencyContactInfo
WHERE contactRelation = '';

--@block
--Use Case: SUM OF ITEMS BY CATEGORY
SELECT SUM(currentInventoryQuantity)
FROM Inventory
WHERE itemCategory = '';

--@block
--Use Case: SUM OF ITEMS ORDERED 
SELECT SUM(quantity)
FROM ItemsOrdered
WHERE itemID = '';

--@block
--Use Case: COUNT NUMBER OF PURCHASES FOR CLIENT
SELECT COUNT(clientID)
FROM Purchases
WHERE clientID = '';

--@block
--Use Case: COUNT NUMBER OF PURCHASES FOR STAFF
SELECT COUNT(staffID)
FROM Purchases
WHERE staffID = '';