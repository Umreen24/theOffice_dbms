--@block
--Use Case: UPDATE STAFF INFORMATION
UPDATE Staff
SET column1 = '', column2 = ''
WHERE staffID = staffID;

--@block
--Use Case: UPDATE DETAILS ON HR INCIDENT
UPDATE HRIncidents
SET column1 = '', column2 = ''
WHERE incidentID = incidentID;

--@block
--Use Case: UPDATE CLIENT INFORMATION
UPDATE EmergencyContactInfo
SET column1 = '', column2 = ''
WHERE contactID = contactID;

--@block
--Use Case: UPDATE CLIENT INFORMATION
UPDATE Clients
SET column1 = '', column2 = ''
WHERE clientID = clientID;

--@block
--Use Case: UPDATE ITEMS IN INVENTORY
UPDATE Inventory
SET column1 = '', column2 = ''
WHERE itemID = itemID;

--@block
--Use Case: UPDATE TRANSACTION PAYMENT DETAILS
UPDATE Transactions
SET datePaymentRecieved = ''
WHERE transactionID = transactionID;

--@block
--Use Case: UPDATE TRANSACTION SHIPPING DETAILS
UPDATE Transactions
SET dateOrderShipped = ''
WHERE transactionID = transactionID;

--@block
--Use Case: UPDATE QUANTITY OF ITEM ORDERED
UPDATE ItemsOrdered
SET quantity = ''
WHERE orderID = orderID;

--@block
--Use Case: UPDATE PRICE OF ITEM ORDERED
UPDATE ItemsOrdered
SET price = ''
WHERE orderID = orderID;

--@block
--Use Case: UPDATE PURCHASE DEATAILS
UPDATE Purchases
SET column1 = '', column2 = '', column3 = ''
WHERE staffID = staffID;