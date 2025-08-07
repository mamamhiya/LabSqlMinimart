-- แบบฝึกหัด SQL ใช้ฐานข้อมูล  Minimart
-- 1. สินค้าที่มีราคา 15 บาท
SELECT * FROM Products WHERE UnitPrice = 15
-- 2. สินค้าที่มีจำนวนคงเหลือในสต๊อกต่ำกว่า 250
SELECT * FROM Products WHERE UnitsInStock < 250
-- 3. รหัสสินคา ชื่อสินค้าที่เลิกจำหน่ายแล้ว
SELECT * FROM Products WHERE Discontinued = 1
-- 4. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีราคามากกว่า 100
SELECT * FROM Products WHERE UnitPrice > 100
-- 5. รหัสสินค้า และราคาของยางลบ
SELECT * FROM Products WHERE ProductName = 'ยางลบ'
-- 6. หมายเลขใบเสร็จ วันที่ และ ราคารวม ของใบเสร็จที่ออกก่อนวันที่ 15 ก.พ.
SELECT * FROM Receipts WHERE ReceiptDate < '2023-02-15'
-- 7. รหัสสินค้า ชื่อสินค้า ที่มีจำนวนคงเหลือตั้งแต่ 400 ขึ้นไป
SELECT productID,ProductName FROM Products WHERE UnitsInStock >= 400
-- 8. รหัสสินค้า ชื่อสินค้า ราคา และ จำนวนคงเหลือ ของแชมพู,แป้งเด็ก,ดินสอ,ยางลบ
SELECT productID,ProductName,UnitPrice,UnitsInStock from Products WHERE ProductName IN ('แชมพู','แป้งเด็ก','ดินสอ','ยางลบ') 
-- 9. รายละเอียดของสินค้าประเภทเครื่องเขียน
SELECT * from Categories WHERE CategoryName = 'เครื่องเขียน'
-- 10. รหัสประเภทสินค้า ชื่อประเภท และรายละเอียดของ สินค้าประเภทเครื่องสำอาง
SELECT CategoryID,CategoryName,Description from Categories WHERE CategoryName = 'เครื่องสำอาง'
-- 11.คำนำหน้า ชื่อ นามสกุล ของพนักงานที่เป็น Sale Representative
SELECT Title,FirstName,LastName from Employees where position = 'Sale Representative'
-- 12. รหัสพนักงาน ชื่อพนักงาน ชื่อผู้ใช้ รหัสผ่าน ของพนักงานทุกคน
SELECT EmployeeID,FirstName,LastName,Username,Password from Employees
-- 13. ชื่อผู้ใช้ และรหัสผ่านของพนักงานที่ชื่อก้องนิรันดร์
SELECT Username,Password from Employees where FirstName = 'ก้องนิรันดร์'
-- 14. รหัสพนักงานที่ออกใบเสร็จหมายเลข 3
SELECT EmployeeID from Receipts where ReceiptID = 3
-- 15. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีรหัสประเภท 2, 4
SELECT ProductID,ProductName,UnitPrice from Products where CategoryID in (2,4)