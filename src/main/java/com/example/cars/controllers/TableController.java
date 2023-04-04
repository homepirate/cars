package com.example.cars.controllers;


import com.example.cars.TableService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Arrays;


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
}
