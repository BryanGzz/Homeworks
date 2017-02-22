public class Authentication{ 
    public static boolean authenticate(String username, String password){
        String userDataBase = "bryan";
        String passwordDataBase = "1666203";
        if(username.equals(userDataBase)&& password.equals(passwordDataBase)){
            return true;
        }else{
            return false;
        }
    }
}
