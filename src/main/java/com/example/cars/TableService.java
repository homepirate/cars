package com.example.cars;
import com.example.cars.controllers.Car;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;

import java.util.Collections;
import java.util.List;


@Service
public class TableService {
    public static double[] get_fnd(int n, double[][] matrix){
        //ArrayList<double[]> res = new ArrayList<>();
        //double[][] matrix = {{40, 50, 60}, {150, 180, 200}, {1.6, 2, 2.5}};
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
//        for (int i=0; i<new_matrix.length; i++) res.add(new_matrix[i]);
  //      res.add(fnd);
        return fnd;

    }

    public static String get_winner(ArrayList<double[]> matrix, Car car1, Car car2, Car car3){
        double sum1 = Arrays.stream(new double[]{matrix.get(0)[0], matrix.get(1)[0], matrix.get(2)[0]}).max().getAsDouble();
        double sum2 = Arrays.stream(new double[]{matrix.get(0)[1], matrix.get(1)[1], matrix.get(2)[1]}).max().getAsDouble();
        double sum3 = Arrays.stream(new double[]{matrix.get(0)[2], matrix.get(1)[2], matrix.get(2)[2]}).max().getAsDouble();

        System.out.println("-----------------"+ sum1 + " " + sum2 + " " + sum3);

        double max = Arrays.stream(new double[]{sum1, sum2, sum3}).max().getAsDouble();
        if (max == sum1 && max != sum2 && max != sum3) return "Отечетсвенный автомобиль";
        else if (max == sum2 && max != sum1 && max != sum3)  return "Европейский автомобиль";
        else if (max == sum3  && max != sum1 && max != sum2)return "Китайский Автомобиль";
        else if (max == sum1 && max == sum2 && max != sum3){
            if (car1.get_sum() > car2.get_sum()) return "Отечетсвенный автомобиль";
            else return "Европейский автомобиль";
        }
        else if (max == sum1 && max == sum3 && max != sum2){
            if (car1.get_sum() > car3.get_sum()) return "Отечетсвенный автомобиль";
            else return "Китайский Автомобиль";
        }
        else if (max == sum3 && max == sum2 && max != sum1){
            if (car2.get_sum() > car3.get_sum()) return "Европейский автомобиль";
            else return "Китайский Автомобиль";
        }
        else if (max == sum1 && max == sum2 && max == sum3){
            if (car1.get_sum() > car3.get_sum() && car1.get_sum() > car2.get_sum()) return "Отечетсвенный автомобиль";
            else if (car2.get_sum() > car3.get_sum() && car2.get_sum() > car1.get_sum()) return "Европейский Автомобиль";
            else return "Китайский Автомобиль";
        }
        else return "";

    }

}
