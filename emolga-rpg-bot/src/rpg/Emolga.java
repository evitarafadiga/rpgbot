package rpg;

import javax.security.auth.login.LoginException;

import net.dv8tion.jda.api.AccountType;
import net.dv8tion.jda.api.JDA;
import net.dv8tion.jda.api.JDABuilder;

public class Emolga {
	
	static JDA builder = null;
	
	public static void main(String [] args) throws LoginException{
		JDA builder = JDABuilder.createDefault("ODQ0MjMzNzA5MzA4NjA4NTQy.YKPb6Q.KbhJNNpvOzbJxd2ecUaipIcGUFw").build();
		
	}

}
