DROP TABLE
	xtblMaterialLocation
;

CREATE TABLE
	xtblMaterialLocation(
		  VendorID		char(4)
		, MaterialID	char(3)
		, LocationID	char(3)
		, QuantityOnHand decimal(8,3)
		  CONSTRAINT pkMaterialLocation
			PRIMARY KEY (VendorID, MaterialID, LocationID)
		, CONSTRAINT fkVendorMaterial
			FOREIGN KEY (VendorID, MaterialID)
			REFERENCES xtblVendorMaterial (VendorID, MaterialID)