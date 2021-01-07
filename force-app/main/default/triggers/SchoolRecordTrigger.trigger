trigger SchoolRecordTrigger on school_record__c(after update) {
    List<Student__c> students=new List<Student__c>();
    List<Student__c> studentDetails=[select id,name,Student_Rollno__c,School_record__c from Student__c];
   // List<school_record__c> sr=[select id,name,Total_number_of_students__c from school_record__c ];
    for(school_record__c s:Trigger.new){
    if(s.Total_number_of_students__c<10){
    for(Student__c st:studentDetails){
        if(st.School_record__c==s.id){
          students.add(new Student__c(Student_Rollno__c=1,school_record__c=s.id,id=st.id))  ;
        
    }
}
    }
}
    update students;

}