// Runtime: 180 ms, faster than 74.36% of Swift online submissions for Employee Importance.
// Memory Usage: 22.1 MB, less than 100.00% of Swift online submissions for Employee Importance.

func makeEmployeesMap(_ employees: [Employee]) -> [Int:Employee] {
    return employees.reduce(into: [:]) {dict, employee in
        dict[employee.id] = employee
    }
}

func importanceOf(_ employees: [Int:Employee], _ id: Int) -> Int {
    guard let employee = employees[id] else { return 0 }

    let subordinatesImportance = employee.subordinates.reduce(into: 0) { sum, id in
        sum += importanceOf(employees, id)
    }
    return employee.importance + subordinatesImportance
}

class Solution {
    func getImportance(_ employees: [Employee], _ id: Int) -> Int {
        let employeeMap = makeEmployeesMap(employees)
        return importanceOf(employeeMap, id)
    }
}
