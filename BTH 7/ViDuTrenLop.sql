
--Sao luu vao 3 file
use master
go

BACKUP DATABASE CSDLCa2
TO DISK = N'D:\CSDLCa2_FULL.bak'
WITH FORMAT

BACKUP DATABASE CSDLCa2
TO DISK = N'D:\CSDLCa2_DIFF.bak'
WITH FORMAT, DIFFERENTIAL

BACKUP LOG CSDLCa2
TO DISK = N'D:\CSDLCa2_TailLog.bak'
WITH FORMAT, NO_TRUNCATE

---- Xem thu du lieu
use CSDLCa2
go

SELECT *  FROM [SinhVien]


--Phuc hoi
USE Master
GO

RESTORE DATABASE CSDLCa2
FROM DISK = N'D:\CSDLCa2_FULL.bak'
WITH NORECOVERY
GO
RESTORE DATABASE CSDLCa2
FROM DISK = N'D:\CSDLCa2_DIFF.bak'
WITH NORECOVERY
Go
RESTORE LOG CSDLCa2
FROM DISK = N'D:\CSDLCa2_TailLog.bak'
WITH RECOVERY



demo 2:
--Sao luu vao 3 file
use master
go

BACKUP DATABASE CSDLCa2
TO DISK = N'D:\CSDLCa2.bak'
WITH FORMAT

BACKUP DATABASE CSDLCa2
TO DISK = N'D:\CSDLCa2.bak'
WITH DIFFERENTIAL

BACKUP LOG CSDLCa2
TO DISK = N'D:\CSDLCa2.bak'
WITH NO_TRUNCATE

---- Xem thu du lieu
use CSDLCa2
go

SELECT *  FROM [SinhVien]



--Phuc hoi
USE Master
GO

RESTORE DATABASE CSDLCa2
FROM DISK = N'D:\CSDLCa2.bak'
WITH NORECOVERY, FILE =1
GO
RESTORE DATABASE CSDLCa2
FROM DISK = N'D:\CSDLCa2.bak'
WITH NORECOVERY, FILE =2
Go
RESTORE LOG CSDLCa2
FROM DISK = N'D:\CSDLCa2.bak'
WITH RECOVERY, FILE =3

