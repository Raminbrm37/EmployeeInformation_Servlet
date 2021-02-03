package ir.maktab.service;

import ir.maktab.model.Employee;
import ir.maktab.repository.EmployeeRepository;

import java.util.List;

public class EmployeeService {
    private final EmployeeRepository employeeRepository;

    public EmployeeService(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    public void save(String firstName, String lastName, String email) {

        Employee employee = new Employee();
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setEmail(email);
        employeeRepository.save(employee);

    }

    public List<Employee> loadAllEmployee() {

        return this.employeeRepository.loadAllEmployee();
    }

    public void saveEmployeeDetails(Integer id, String nationalCode, String fatherName, String mobileNumber, String address) {
        Employee employee = employeeRepository.loadById(id);
        employeeRepository.saveEmployeeDetails(employee, nationalCode, fatherName, mobileNumber, address);
    }

    public void deleteEmployee(Integer id) {
        employeeRepository.delete(employeeRepository.loadById(id));
    }
    public Employee load(Integer id){
        return employeeRepository.loadById(id);
    }
    public void updateEmployee(Integer id,String firstName,String lastName,String email){
        Employee employee= employeeRepository.loadById(id);
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setEmail(email);
        employeeRepository.update(employee);


    }

}
