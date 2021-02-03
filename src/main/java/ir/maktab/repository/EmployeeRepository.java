package ir.maktab.repository;

import ir.maktab.model.Employee;
import ir.maktab.model.IEntity;
import ir.maktab.model.InformationEmployee;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class EmployeeRepository extends AbstractRepository<Employee, Integer, IEntity> {


    public EmployeeRepository(EntityManager entityManager) {
        super(entityManager);

    }

    @Override
    public Class<Employee> getEntityClass() {
        return Employee.class;
    }


    public List<Employee> loadAllEmployee() {
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Employee> criteriaQuery = cb.createQuery(Employee.class);
        Root<Employee> from = criteriaQuery.from(Employee.class);
        criteriaQuery.select(from);
        TypedQuery<Employee> typedQuery = entityManager.createQuery(criteriaQuery);
        return typedQuery.getResultList();
    }

    public void saveEmployeeDetails(Employee employee, String nationalCode, String fatherName, String mobileNumber, String address) {
        entityManager.getTransaction().begin();
        InformationEmployee informationEmployee = new InformationEmployee();
        informationEmployee.setFatherName(fatherName);
        informationEmployee.setAddress(address);
        informationEmployee.setMobileNumber(mobileNumber);
        informationEmployee.setNationalCode(nationalCode);
        employee.setInformationEmployee(informationEmployee);
        entityManager.getTransaction().commit();
    }

}
