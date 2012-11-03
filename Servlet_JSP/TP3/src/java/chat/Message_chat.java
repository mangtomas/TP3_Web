package chat;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author logarithme
 */
public class Message_chat 
{
    private String message;
    private String pseudo;
    
    public Message_chat(String p, String m)
    {
        message = m;
        pseudo = p;
    }

    @Override
    public String toString() 
    {
        return pseudo + " : " + message;
    }
    
    
}
