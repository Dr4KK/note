### java字符转换成unicode
```java
   private static String showCharacter(char c){
        String hex = "0123456789ABCDEF";
        char[] tmp = {'\\','u','\0','\0','\0','\0'};
        for (int i = 0; i < 4; i++) {
            tmp[5 - i] = hex.charAt(c & 0xF);
            c >>= 4;
        }
        return String.copyValueOf(tmp);
   }
```

