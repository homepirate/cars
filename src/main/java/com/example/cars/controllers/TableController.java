package com.example.cars.controllers;


import com.example.cars.TableService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;


@Controller
public class TableController {
    private final TableService tableService;

    public TableController(TableService tableService) {
        this.tableService = tableService;
    }

    @GetMapping("/")
    public String init(Model model) {
        ArrayList<ArrayList> result = new ArrayList<>();

//        for(int i=0; i<3; i++) result.add(tableService.get_arrays(i));

        model.addAttribute("tables", result);
//            return "main";
            return "index";
    }

    @RequestMapping(value = "/counting", method = RequestMethod.POST)
    public @ResponseBody String counting(HttpServletRequest params, Model model){
        ArrayList<double[]> result = new ArrayList<>();
        double[][] matrix = new double[3][3];
        int index = 0;
        Map<String, String[]> response = params.getParameterMap();
        for (Map.Entry<String, String[]> entry : response.entrySet()) {
            double[] array = new double[3];
            for (int i=0; i < entry.getValue()[0].split(",").length; i++){
             array[i] = Double.parseDouble(entry.getValue()[0].split(",")[i]);
            }
            matrix[index] = array;
            index += 1;
        }

        for (int i = 0; i < matrix.length; i++) {
            for (int j = i+1; j < matrix.length; j++) {
                double temp = matrix[i][j];
                matrix[i][j] = matrix[j][i];
                matrix[j][i] = temp;
            }
        }


        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                System.out.print(matrix[i][j] + "\t");
            }
            System.out.println();
        }


        for(int i=0; i<3; i++) result.add(tableService.get_fnd(i, matrix));


        for (int i = 0; i < result.size(); i++) {
            for (int j = 0; j < result.get(i).length; j++) {
                System.out.print(result.get(i)[j] + "\t");
            }
            System.out.println();
        }

        String winner = tableService.get_winner(result);
        model.addAttribute("winner", winner);
        return winner;
    }
}

