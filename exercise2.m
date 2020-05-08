user_input=input("enter the data set you want to choose")
%analysis for data1%
total_students_data_1=sum(sum(data1));
total_students_present=sum(data1(1:2));
no_of_male_students_absent=(data1(1,2));
no_of_female_students_absent=(data1(2,2));
total_students_absent=no_of_male_students_absent+no_of_female_students_absent;
probability_total_students_present=total_students_present/total_students_data_1;
probability_total_students_absent=total_students_absent/total_students_data_1;

%analysis for male students for data1%
no_of_male_students_present=(data1(1));


total_no_of_male_students=(sum(data1(1,[1,2])));
probabilty_of_male_students=total_no_of_male_students/total_students_data_1;
probability_of_male_students_present=no_of_male_students_present/total_no_of_male_students;
probability_of_male_students_absent=no_of_male_students_absent/total_no_of_male_students;

%joint_probability_analysis_male%

a=probabilty_of_male_students*probability_of_male_students_present;
%above gives the joint probabilty between total male students&male present%
b=probabilty_of_male_students*probability_of_male_students_absent;
%above gives the joint probabilty between total male students&male absent%


%analysis for female students for data1%
no_of_female_students_present=(data1(2));

total_no_of_female_students=(sum(data1(2,[1,2])));
probabilty_of_female_students=total_no_of_female_students/total_students_data_1;
probability_of_female_students_present=no_of_female_students_present/total_no_of_female_students;
probability_of_female_students_absent=no_of_female_students_absent/total_no_of_female_students;
    
%joint_probability_analysis_female%
c=probabilty_of_female_students*probability_of_female_students_present;
%above gives the joint probabilty between total male students&male present%
d=probabilty_of_female_students*probability_of_female_students_absent;
%above gives the joint probabilty between total male students&male absent%

%dispalying the results from above%
disp('probability of total students present'),disp(probability_total_students_present);
disp('probability of total students absent'),disp(probability_total_students_absent);

disp('joint probability of total male students and male students being present'),disp(a);
disp('joint probability of total male students and male students being absent'),disp(b);
disp('total probabilty of male students'),disp(probabilty_of_male_students);
disp('probability of male students present'),disp(probability_of_male_students_present);
disp('probability of male students absent'),disp(probability_of_male_students_absent);

disp('joint probability of total female students and female students being present'),disp(c);
disp('joint probability of total female students and female students being absent'),disp(d);
disp('total probabilty of female students'),disp(probabilty_of_female_students);
disp('probability of female students present'),disp(probability_of_female_students_present);
disp('probability of female students absent'),disp(probability_of_female_students_absent);

%checking wether the abscent and present of male category are independent
%or dependent w.r.t abscent and present of total students 

if probability_of_male_students_present == probability_total_students_present
    disp('event of male student is independent w.r.t event of presenties')
    
else
    disp('event of male student is dependent w.r.t event of presenties')
end


if probability_of_male_students_absent == probability_total_students_absent
    disp('event of male student is independent w.r.t event of absenties')
    
else
    disp('event of male student is dependent w.r.t event of absenties')
end






%checking wether the abscent and present of female category are independent
%or dependent w.r.t abscent and present of total students 

if probability_of_female_students_present == probability_total_students_present
    disp('event of female student is independent w.r.t event of presenties')
    
else
    disp('event of female student is dependent w.r.t event of presenties')
end


if probability_of_female_students_absent == probability_total_students_absent
    disp('event of female student is independent w.r.t event of absenties')
    
else
    disp('event of female student is dependent w.r.t event of absenties')
end

%finding the conditional probability of male w.r.t to presenties and
%absenties i.e p(P|M) and p(A|M) using the below formula 
%p(B|A)=P(A and B)/p(A)

w=a/probabilty_of_male_students;
disp('conditional probability of male w.r.t to presenties'),disp(w);

x=b/probabilty_of_male_students;
disp('conditional probability of male w.r.t to presenties'),disp(x);


%finding the conditional probability of male w.r.t to presenties and
%absenties i.e p(P|M) and p(A|M) using the below formula 
%p(B|A)=P(A and B)/p(A)
y=c/probabilty_of_female_students;
disp('conditional probability of female w.r.t to presenties'),disp(y);

z=d/probabilty_of_female_students;
disp('conditional probability of female w.r.t to presenties'),disp(z);
