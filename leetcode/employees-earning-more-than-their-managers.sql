SELECT emp.Name as Employee
FROM Employee AS emp, Employee AS manager
WHERE emp.ManagerId = manager.Id and emp.Salary > manager.Salary;