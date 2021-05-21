package service;

import entity.Employee;
import repository.GenericRepository;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public class EmployeeService {
    private GenericRepository<Employee> employeeRepository;

    Date date = new Date();
    Timestamp sqlTime = new Timestamp(date.getTime());

    public EmployeeService() {
        employeeRepository = new GenericRepository<>(Employee.class);
    }

    public boolean create(Employee obj) {
        obj.setStatus(1);
        obj.setBirthday(sqlTime);
        return employeeRepository.save(obj);
    }

    public List<Employee> getList() {
        return employeeRepository.findAll();
    }
}
