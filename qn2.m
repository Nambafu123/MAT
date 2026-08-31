clc; clear;
fprintf('GPA CGPA Calculator\n');

StudentName = input('Enter student name: ', 's');
NumberOfSemesters = input('Enter number of semesters: ');

totalQualityPoints = 0;
totalCreditUnits = 0;

for semester = 1:NumberOfSemesters
    fprintf('\n--- Semester %d ---\n', semester);
    NumCourses = input('Enter number of courses: ');
    semQP = 0;
    semCU = 0;
    for i = 1:NumCourses
        credit = input('Enter credit units: ');
        marks = input('Enter marks (0-100): ');
        if marks >= 80
            gp = 5.0;
        elseif marks >= 75
            gp = 4.5;
        elseif marks >= 70
            gp = 4.0;
        elseif marks >= 65
            gp = 3.5;
        elseif marks >= 60
            gp = 3.0;
        elseif marks >= 55
            gp = 2.5;
        elseif marks >= 50
            gp = 2.0;
        elseif marks >= 45
            gp = 1.5;
        elseif marks >= 40
            gp = 1.0;
        else
            gp = 0;
        end
        semQP = semQP + gp*credit;
        semCU = semCU + credit;
    end
    fprintf('GPA = %.2f\n', semQP/semCU);
    totalQualityPoints = totalQualityPoints + semQP;
    totalCreditUnits = totalCreditUnits + semCU;
end
fprintf('\nFinal CGPA for %s = %.2f\n', StudentName, totalQualityPoints/totalCreditUnits);