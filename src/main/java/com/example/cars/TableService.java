package com.example.cars;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;

import java.util.Collections;
import java.util.List;


@Service
public class TableService {
    public static ArrayList<double[]> get_arrays(int n){
        ArrayList<double[]> res = new ArrayList<>();
        double[][] matrix = {{40, 50, 60}, {150, 180, 200}, {1.6, 2, 2.5}};
        double[][] new_matrix = new double[3][3];

        for (int j = 0; j < matrix.length; j++) {
            for (int i = 0; i < matrix.length; i++) {
                if (i == j) new_matrix[j][i] = 1;
                else {
                    double result = (matrix[n][j] / (matrix[n][j] + matrix[n][i]));
                    new_matrix[j][i] = result;
                }
            }
        }

        double[] fnd = new double[3];
        Double[] test = new Double[3];
        for (int i = 0; i < fnd.length; i++) {
            for (int j = 0; j < fnd.length; j++) test[j] = new_matrix[j][i] - new_matrix[i][j];
            List<Double> ints = Arrays.asList(test);
            fnd[i] = 1 - Collections.max(ints);
            test = new Double[3];
        }
        for (int i=0; i<new_matrix.length; i++) res.add(new_matrix[i]);
        res.add(fnd);
        return res;

    }
//    public static void main(String[] args) {
//        StringBuilder res_str = new StringBuilder();
//        for(int i=0; i<3; i++){
//            ArrayList<double[]> res = get_arrays(i);
//            for (double[] j: res) {
//                res_str.append(Arrays.toString(j) + "\n");
//            }
//            res_str.append("\n");
//        }
//        System.out.println(res_str);
//    }
}
