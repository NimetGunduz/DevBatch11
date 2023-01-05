public class ContactQueueableApex implements Queueable {
    //class variable
    public list<account> listCon;
    public ContactQueueableApex(list<account> contacts){
        //assign parameter variable to Class variable
        listCon = contacts;
    }

    public void execute(QueueableContext qc){
        

    }
    
}
