#include <iostream>

using namespace std;


void ordena(int x[]; int tam) // arranjo não precisa de &
{
     
       int maior = 0, pos, aux;
       
       for(int i = 0; i < tam; i++)       
       {
               if(x[i] > x[i+i])
               {
                       aux = x[i];
                       x[i] = x[i+1];
                       x[i+1] = aux;        
               }         
       }
} 

int main(){

	int v[1000], n;

	cout << "Digite quantos valores: ";
	cin >> n;

	for(int i = 0; i < n; i++)
	{
		cout << "a" << i << ": ";
		cin >> v[i];
	}

	//ordena(v[],n);

	for(int i = 0; i < n; i++)
		cout << v[i] << " ";

	system("pause>null");
	return 0;
}
