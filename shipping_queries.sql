USE shipping;

SELECT shipName
FROM ships
WHERE displacement > 10000;

SELECT captainFName, captainLName
FROM ships
WHERE yearBuilt <=2000;

SELECT shipName, COUNT(containerID)
FROM containers
GROUP BY shipName;

SELECT shipName
FROM ships
WHERE yearBuilt = (SELECT MIN(yearBuilt)
				   FROM ships);
                   
SELECT containerID, (dimHeight * dimWidth * dimLength) AS volume
FROM containers;

SELECT captainLName, containerID
FROM ships s
JOIN containers c ON s.shipName=c.shipName;

SELECT yearBuilt, country
FROM ships s
JOIN ports p ON s.portName=p.portName
ORDER BY country ASC;

SELECT weight, city
FROM containers c
JOIN ships s ON c.shipName=s.shipName
JOIN ports p ON s.portName=p.portName;

SELECT dimLength, dimWidth, city, country
FROM ships s
JOIN containers c ON s.shipName=c.shipName
JOIN ports p ON s.portName=p.portName;

SELECT displacement, crewCount, weight
FROM ships s
JOIN containers c ON s.shipName=c.shipName;