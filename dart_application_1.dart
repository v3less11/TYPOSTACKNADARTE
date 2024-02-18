import 'dart:io';

class Stack
{
  List<String>st = [];

  push(String n){
    st.add(n);
  }
  pop(){
    // ignore: dead_code
    st.removeLast();
  }
  size(){
    return st.length;
  }
  top(){
    return st.last;
  }
  

}

void main()
{
  Stack? st = Stack();
  String? ponos = '()';
  /*String? c = stdin.readLineSync();*/
  for(int i = 0; i < ponos.length; i++)
  {
    if(ponos[i] == '(') {
      st.push(ponos[i]);
    }
    else if(ponos[i] == ')' && st.size() > 0 && st.top() == '('){
        st.pop();
    }
    
  }
  if(st.size() == 0){
    print("YES");
  }
  else{
    print("NO");
  }
  
  

}
