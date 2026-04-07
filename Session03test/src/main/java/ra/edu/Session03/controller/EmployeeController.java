package ra.edu.Session03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.edu.Session03.model.Employee;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @RequestMapping("/employee")
    public String listEmployee(Model model) {
        List<Employee> list = new ArrayList<>();
        list.add(new Employee(1, "Đặng Tuấn Minh", "10A3", 10000));
        list.add(new Employee( 2, "Vũ Huyền Trang", "11B2", 90000));
        list.add(new Employee( 3, "Phạm Duy Anh", "10C3", 800));

        model.addAttribute("employee", list);

        return "employee-list";
    }
}
