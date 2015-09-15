--Lab 1 
--Matthew Koopman
--Create Tables
CREATE TABLE L1_Bill_Item
(
  Bill_Number NUMBER(6,0) CONSTRAINT PK_Bill_Number PRIMARY KEY CONSTRAINT FK_Bill_Number REFERENCES L1_Bill (Bill_Number) CONSTRAINT NN_Bill_Number NOT NULL,
  Menu_Item_Number NUMBER(5,0) CONSTRAINT PK_Menu_Item_Number PRIMARY KEY CONSTRAINT FK_Menu_Item_Number REFERENCES L1_Menu_Item (Menu_Item_Number) CONSTRAINT NOT NULL,
  Discount NUMBER(5,2) CONSTRAINT CK_DiscountGTZero CHECK (Discount >= 0) CONSTRAINT N_Discount NULL,
  
  
)