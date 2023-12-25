class Parser {
    
    static bool vaildIntString(String string){
       try {
          int.parse(string);
          return true;
       } catch(e){
          return false;
       }
    }

}