import 'package:flutter/material.dart';
import 'Calcbase.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List clist=[];
String printer="";
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("C  A  L  C  U  L  A  T  O  R", style: TextStyle(
      fontWeight: FontWeight.bold,fontFamily: "IBMPlex",color: Colors.amber,
    ),),
    centerTitle: true,
backgroundColor: Colors.grey[900],
  ),
  backgroundColor: Colors.grey[850],
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(color: Colors.grey[400],
        constraints: BoxConstraints.expand(width: 380.0, height: 100.0),
        child: Text("$printer", style: TextStyle(
        color: Colors.white,
      ),), padding: EdgeInsets.all(20.0),),
      SizedBox(
        width: 500.0,
        height: 25.0,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(color:Colors.amber,
            child: IconButton(onPressed: (){setState(() {printer="";clist=[];});}, icon:Icon(Icons.delete_forever_sharp) )),
      ),
      SizedBox(
        width: 500.0,
        height: 25.0,
      ),


      ClipRRect(

        borderRadius: BorderRadius.circular(40.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: Colors.grey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {setState(() {clist.add(1); printer+=(1.toString());});}, child: Text("1"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(2); printer+=(2.toString());});}, child: Text("2"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(3); printer+=(3.toString());});}, child: Text("3"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add("/"); printer+="/";});}, child: Text("/", style: TextStyle(fontSize: 20.0),),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[900]),),


                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {setState(() {clist.add(4); printer+=(4.toString());});}, child: Text("4"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(5); printer+=(5.toString());});}, child: Text("5"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(6); printer+=(6.toString());});}, child: Text("6"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add("*"); printer+="*";});}, child: Text("*", style: TextStyle(fontSize: 20.0),),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[900]),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {setState(() {clist.add(7); printer+=(7.toString());});}, child: Text("7"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(8); printer+=(8.toString());});}, child: Text("8"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(9); printer+=(9.toString());});}, child: Text("9"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add("+"); printer+="+";});}, child: Text("+", style: TextStyle(fontSize: 20.0),),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[900]),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    ElevatedButton(onPressed: () {setState(() {clist.add("."); printer+=".";});}, child: Text(".", style: TextStyle(fontSize: 30.0)),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[900]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add(0); printer+=(0.toString());});}, child: Text("0"),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[100]),),
                    ElevatedButton(onPressed: () {setState(() {
                      List dlist=[];
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
                      }printer=dlist[0].toString();});}, child: Text("=", style: TextStyle(fontSize: 20.0),),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[900]),),
                    ElevatedButton(onPressed: () {setState(() {clist.add("-"); printer+="-";});}, child: Text("-", style: TextStyle(fontSize: 20.0),),style: ElevatedButton.styleFrom(primary: Colors.amber, onPrimary: Colors.grey[900]),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

],
    ),
  );
  }
}
