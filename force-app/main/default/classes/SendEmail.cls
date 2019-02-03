public class SendEmail {
	public PageReference send( String email, String body)
    {
        Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
            
        // Sets the paramaters of the email
        emailMsg.setSubject( 'Business Card Information' );
        emailMsg.setToAddresses( new String[]{email} );
        emailMsg.setPlainTextBody( body );

        // Sends the email
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {emailMsg});
    
    	return null;
    }
}