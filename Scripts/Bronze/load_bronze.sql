TRUNCATE TABLE bronze.crm_cust_info; -- Esto limpia la tabla antes de realizar una carga masiva
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\luisc\Downloads\Baraa\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
	FIRSTROW = 2, -- primera fila es el nombre de las columnas
	FIELDTERMINATOR = ',', -- Separador de los valores
	TABLOCK -- bloquea toda la tabla durante la carga y así acelerar la inserción masiva de datos
);

TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\luisc\Downloads\Baraa\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',', 
	TABLOCK
)

TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\luisc\Downloads\Baraa\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',', 
	TABLOCK
)

TRUNCATE TABLE bronze.erp_cust_az12;
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\luisc\Downloads\Baraa\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',', 
	TABLOCK
)

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\luisc\Downloads\Baraa\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv' -- El nombre del archivo no discrimina mayusculas
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',', 
	TABLOCK
)

TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\luisc\Downloads\Baraa\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',', 
	TABLOCK
);
