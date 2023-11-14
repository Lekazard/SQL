CREATE PROCEDURE AsiakkaatMaasta
	@Maa VARCHAR(50)
AS
BEGIN
	DECLARE @AsiakasMaara INT

	SELECT *
	FROM Customers
	WHERE Country = @Maa

	SET @AsiakasMaara = (SELECT COUNT(*)
						 FROM Customers
						 WHERE Country = @Maa)
	
	SELECT CONCAT('Asiakasmaara maasta ', @Maa, ' on ', @AsiakasMaara) AS 'Asiakasmaara'
END
