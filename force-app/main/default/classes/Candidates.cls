public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;
    
    //conctructor will be called as soon as we create new instance
    public Candidates(){
        countCandidates++;
    }

    public Candidates(string n, string g){
        this();
        name = n;
        Gender = g;
      
    }

    public void printCandidate(){
        system.debug('Name is ' + Name );
        system.debug('Gender is ' + Gender);
        system.debug('Company Name is '+ CompanyName);
    }

    public static void printCandidateInfo(){
        //We CAN access only static members inside static method.
        system.debug('Company name is ' + CompanyName);
        //We CANNOT access non-static members inside static method.
        //system.debug('Name is ' + Name);
    }

   
}
