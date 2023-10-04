import 'dart:math';

void main()
{
  // List list=["Dixit","Kunal","prince","Darshan K.","Vivek","Yash","Sneh","Aniket","Kirtan","Manthan", "Darshan S","Kaushik","Monil","Jensih","Hershit","ravina","Dipika","Janvi","Sneha"];

  List list=["Dixit","Kunal","prince","Darshan K.","Vivek","Yash","DARSHAN"];
  Random r=Random();
  // int i=r.nextInt(list.length);
  int i=r.nextInt(list.length);

  for(int j=0;j<1;j++)
    {
      if(list[i]=='Dixit' || list[i]=='Kunal')
      {
        // print("${i}");
        break; // skips the index
        print("======================${list[i]}");
      }
      else
      {

        print("${list[i]}");
        break;
      }
    }
 // for(i=0;i<list.length;i++)
 //   {
 //     i=i%2;
 //     print("$i");
 //     break;
 //   }
}