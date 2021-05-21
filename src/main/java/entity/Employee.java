package entity;

import hanotation.Column;
import hanotation.Entity;
import hanotation.Id;

import java.util.Date;

@Entity(tableName = "employees")
public class Employee {
    @Id(autoIncrement = true)
    @Column(columnName = "id", columnType = "int")
    private int id;
    @Column(columnName = "fullName", columnType = "varchar(255)")
    private String fullName;
    @Column(columnName = "birthday", columnType = "varchar(255)")
    private String birthday;
    @Column(columnName = "address", columnType = "varchar(255)")
    private String address;
    @Column(columnName = "position", columnType = "varchar(255)")
    private String position;
    @Column(columnName = "department", columnType = "varchar(255)")
    private String department;
    @Column(columnName = "status", columnType = "int")
    private int status;

    public Employee() {
    }

    public Employee(int id, String fullName, String birthday, String address, String position, String department, int status) {
        this.id = id;
        this.fullName = fullName;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
