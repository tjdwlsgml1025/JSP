package edu.global.ex.shape;


public class Rectangle{ 
	 
	   private double width;
	   private double height;

	   public Rectangle(double width, double height) {
	      this.height= height;
	      this.width = width;
	      
	   }

	   public void showPerimeter() {
	      double peri = width*height;
	      System.out.println("가로*세로: " + peri);
	   }

	   public double getArea() {
	      double area = width * height;
	      return area;
	   }
}