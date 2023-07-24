package edu.global.ex.shape;

public class Grade {
    int kor, eng, math;
    int total;
    double avg;
    char grade;

    public Grade(int kor, int eng, int math) {
        this.kor = kor;
        this.eng = eng;
        this.math = math;
        calculate();
    }

    private void calculate() {
        total = kor + eng + math;
        avg = total / 3.0;
        
        if (avg >= 90) {
            grade = '수';
        } else if (avg >= 80) {
            grade = '우';
        } else {
            grade = '미';
        }
    }

    public void showPerimeter() {
        System.out.println("총점: " + total);
        System.out.println("평균: " + avg);
        System.out.println("등급: " + grade);
    }

    public double getTotal() {
        return total;
    }

    public double getAvg() {
        return avg;
    }

    public char getGrade() {
        return grade;
    }
}
