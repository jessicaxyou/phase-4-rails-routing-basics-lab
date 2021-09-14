class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        order_grades = Student.all.order(grade: :desc)
        render json: order_grades
    end
end
