package edu.global.ex;

//빈=데이터멤버에 대한 getter,setter&디폴트생성자 반드시 포함
public class Circle {
	static final double PI = 3.1415;
	private double radius;
	
	public Circle() { //디폴트 생성자가 있어야 빈에서 에러가안나
		
	}
	public Circle(double rad) {  //초기화 시키기 위한 생성자 만듦
	      radius = rad;
	   }

	
	public double getRadius() {
		return radius;
	}
	   
	public void setRadius(double radius) {
		this.radius = radius;
	}

  

	public void showPerimeter() {
	      double peri = (radius * 2) * PI;
	      System.out.println("둘레: " + peri);
	   }

	 public double getArea() {
	        double area = (radius * radius) * PI;
	        return area;
	     }
	     
	}