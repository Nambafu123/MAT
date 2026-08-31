MechanicalStudents = readtable("C:\Users\Joel\OneDrive\Desktop\Mechanicalstudents.xlsx")
myName='GROUP 7'
myNumber='7'
outputFile=sprintf('%s %s students.xlsx', myName , myNumber)
writetable(MechanicalStudents, outputFile, 'Sheet', [myName ' ' myNumber])
fprintf('Saved to %s\n', outputFile)
figure
bar(MechanicalStudents.StudentName, MechanicalStudents.Age)
title('A graph of students and their ages')
xlabel('Student Names')
ylabel('Age')