package security;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class HandleString {
    public static String generatedSalt() throws NoSuchAlgorithmException{
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
        byte[]salt = new byte[16];
        secureRandom.nextBytes(salt);
        return salt.toString();
    }

    public static String getSecurePassword(String Password) throws Exception{
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");

        byte[]bytes = messageDigest.digest(Password.getBytes(StandardCharsets.UTF_8));
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < bytes.length; i++){
            stringBuilder.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        }
        return stringBuilder.toString();
    }

}
