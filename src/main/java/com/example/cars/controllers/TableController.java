package com.example.cars.controllers;


import com.example.cars.TableService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Map;


@Controller
public class TableController {
    private final TableService tableService;

    public TableController(TableService tableService) {
        this.tableService = tableService;
    }

    @GetMapping("/")
    public String tables(Model model) {
        ArrayList<ArrayList> result = new ArrayList<>();

        for(int i=0; i<3; i++) result.add(tableService.get_arrays(i));

        model.addAttribute("tables", result);
//            return "main";
            return "index";
    }

    @RequestMapping(value = "/counting", method = RequestMethod.POST)
    public @ResponseBody String counting(HttpServletRequest params){
        System.out.println("dddddddd");
        Map<String, String[]> response = params.getParameterMap();
        int i = 0;
        for (Map.Entry<String, String[]> entry : response.entrySet()) {
            System.out.println(i + " " + entry.getKey() + " " + entry.getValue()[0]);

            ++i; //iterate
        }
        return "index";
    }
}

