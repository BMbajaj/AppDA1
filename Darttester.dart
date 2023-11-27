// import 'dart:svg';

// void main() {
//   //for (int i = 0; i < 5; i++) {
//    // print('hello ${i + 1}');
//     print('Everbody is a ${f1('Ferrari')} fan');
//     print(f2());
//     User mathsic= User('Amit Setia',29);
//     mathsic.login();
//     Superuser mathsic2= Superuser('Yoshi',30);
//     mathsic2.login();
//     mathsic2.publish();
//     print(mathsic2.username);
//   //}
// }
// String f1(Merc){
//   Merc='Mercedes';
//   return Merc;
// }
// List f2(){
//   List name=['122',123];
//   name.add(3);
//   return name;
// }
// class User {
  
//   late String username;
//   late int age;
  
//   User(String user, int age){    //constructor
//       username=user;
//       age=age;                   //code already knows you're mentioning current instance of class therefore mentioning this is not required
//   }
//   void login(){
//     if (username=="Amit Setia"){
//       print("User logged in");
//     }else{
//       print("Invalid User");
//     }
//   }
// }

// class Superuser extends User{//assigning variable names to a different variable, why is variable name required to be the same
//     Superuser(String abc, int age) : super(abc, age);//constructor for the superuser//values aren't set here, it inherits values from the user class itself 
//     void publish(){
//           print('${username} has been published');
//           print("wowzers");
//     }
// }

List clist=[1,2,".",3,"+",3,4,5,"+",4];
List dlist=[];
void main(){
  dynamic cureq;
  String l="";
  var i=0;
  while(i<(clist.length)){
  if (clist[i] =="+"|| clist[i]=="*"|| clist[i]=="/"|| clist[i]=="-"){
    double x=double.parse(l);
    dlist.add(x);
    dlist.add(clist[i]);
    print(dlist);
    print("D");
    l="";
  }else{
      l +="${clist[i]}";
      print(l);
  }
  i++;
  }
  double x=double.parse(l);
  dlist.add(x);
  print(dlist);
  for(int i=0; i<dlist.length;i++){
    if (dlist[i]=="/"){
      dlist.insert(i, dlist[i]/dlist[i+1]);
      dlist.removeAt(i-1);
      dlist.removeAt(i);
    }else if(dlist[i]=="*"){
      dlist.insert(i, dlist[i]*dlist[i+1]);
      dlist.removeAt(i-1);
      dlist.removeAt(i);
    }else if(dlist[i]=="+"){
      dlist.insert(i, dlist[i]+dlist[i+1]);
      dlist.removeAt(i-1);
      dlist.removeAt(i);
    }else if(dlist[i]=="-"){
      dlist.insert(i, dlist[i]-dlist[i+1]);
      dlist.removeAt(i-1);
      dlist.removeAt(i);
  }
  int y=0;
  while(y<dlist.length){
    print(y);
    print("C");
    print(dlist[y]);
    if (dlist[y]=="/"){
      dlist.insert(y, dlist[y-1]/dlist[y+1]);
      dlist.removeAt(y+2);
      dlist.removeAt(y+1);
      dlist.removeAt(y-1);
      y--;
    }else if(dlist[y]=="*"){
      dlist.insert(y, dlist[y-1]*dlist[y+1]);
      dlist.removeAt(y+2);
      dlist.removeAt(y+1);
      dlist.removeAt(y-1);
      y--;
    }else if(dlist[y]=="+"){
      dlist.insert(y, dlist[y-1]+dlist[y+1]);
      dlist.removeAt(y+2);
      dlist.removeAt(y+1);
      dlist.removeAt(y-1);
      y--; 
    }else if(dlist[y]=="-"){
      dlist.insert(y, dlist[y-1]-dlist[y+1]);
      dlist.removeAt(y+2);
      dlist.removeAt(y+1);
      dlist.removeAt(y-1);
      y--;
  }
  y++;
  }
  print(dlist);
  }
  // while(clist[i] =="+"|| clist[i]=="*"|| clist[i]=="/"|| clist[i]=="-"){
  //   dlist.add(clist[i]);
  //   i++;
  //   print(dlist);
  // }
// int j=0;
// while (j<dlist.length;j++ ){
  }
