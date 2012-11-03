package chat;

import java.util.ArrayList;

/**
 *
 * @author logarithme
 */
public class GestionMessage 
{   
    private ArrayList<Message_chat> message_list;
    
    public GestionMessage()
    {
        message_list = new ArrayList<Message_chat>();
    }
    
    public ArrayList<Message_chat> getMessages()
    {
        return message_list;
    }
    
    public int getNbMessage()
    {
        return message_list.size();
    }
    
    public void addMessage(Message_chat m)
    {
        message_list.add(m);
    }
}
