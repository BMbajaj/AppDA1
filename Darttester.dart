
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
}