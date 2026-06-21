CREATE TABLE superstore_campaign (
    ID INT PRIMARY KEY,
    
    Year_Birth INT NOT NULL,
    Education VARCHAR(50),
    Marital_Status VARCHAR(50),
    Income FLOAT,
    
    Kidhome INT DEFAULT 0,
    Teenhome INT DEFAULT 0,
    
    Dt_Customer DATE,
    Recency INT,
    
    MntWines FLOAT DEFAULT 0,
    MntFruits FLOAT DEFAULT 0,
    MntMeatProducts FLOAT DEFAULT 0,
    MntFishProducts FLOAT DEFAULT 0,
    MntSweetProducts FLOAT DEFAULT 0,
    MntGoldProds FLOAT DEFAULT 0,
    
    NumDealsPurchases INT DEFAULT 0,
    NumWebPurchases INT DEFAULT 0,
    NumCatalogPurchases INT DEFAULT 0,
    NumStorePurchases INT DEFAULT 0,
    NumWebVisitsMonth INT DEFAULT 0,
    
    Complain INT,
    Response INT
);

ALTER TABLE superstore_campaign
ADD CONSTRAINT chk_income CHECK (Income >= 0);

ALTER TABLE superstore_campaign
ADD CONSTRAINT chk_spend CHECK (
    MntWines >= 0 AND
    MntFruits >= 0 AND
    MntMeatProducts >= 0 AND
    MntFishProducts >= 0 AND
    MntSweetProducts >= 0 AND
    MntGoldProds >= 0
);

ALTER TABLE superstore_campaign
ADD CONSTRAINT chk_purchases CHECK (
    NumDealsPurchases >= 0 AND
    NumWebPurchases >= 0 AND
    NumCatalogPurchases >= 0 AND
    NumStorePurchases >= 0 AND
    NumWebVisitsMonth >= 0
);

ALTER TABLE superstore_campaign
ADD CONSTRAINT chk_response CHECK (Response IN (0,1));

ALTER TABLE superstore_campaign
ADD CONSTRAINT chk_complain CHECK (Complain IN (0,1));