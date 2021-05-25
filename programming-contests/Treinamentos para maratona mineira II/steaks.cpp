#include <iostream>
#include <algorithm>
#include <math.h>
using namespace std;




int main(){
 int m, n, l, k, s[100000][2], e[100000][2];
 int aux, d , sede;
 int cont=0;
 
  while(true){
      cin >> m >> n;
      if(m == 0 && n == 0)
	  break;
      
      cin >> k;
      
      for(int i = 0; i < k; i++)
	  cin >> s[i][0] >> s[i][1];
      
      cin >> l;
      
      for(int i = 0; i < l; i++)
	  cin >> e[i][0] >> e[i][1];
      
      

    
    cout<<"Instancia "<<++cont<<endl;
    for(int i = 0; i < l; i++){
      aux = 0;
      
      d = m + n;
      int d2 = m + n, d3 = m + n;
      for(int j = 0; j < k; j++){
	    
	    
	    aux = abs(e[i][0] - s[j][0]) + abs(e[i][1] - s[j][1]);
	    
	    if(aux < d){
		d = aux;
		sede = j;
		d2 = e[i][0];
		d3 = s[i][1];
	    }
	    else if(aux == d)
	    {
	      if(s[i][0] < d2)
	      {
		d = aux;
		d2 = s[i][0];
		d3 = s[i][1];
		sede = j;
	      }
	      else if(s[i][1] == d2)
	      {
		if(s[i][1] < d3)
		{
		  d = aux;
		  d2 = s[i][0];
		  d3 = s[i][1];
		  sede = j;
		}
	      }
	    }
      }
      
      cout << s[sede][0] << " " << s[sede][1] << endl;
    }
    cout << endl;
  }
  
  system("pause>null");  
  return 0;
  
}
