#include <iostream> 
using namespace std; 

int main() { 

int *inteiro = new int;
int a;

cout << *inteiro <<endl;
cout << *a <<endl;

*inteiro = 100;
cout << *inteiro << endl;

cout << inteiro <<endl;

delete inteiro;

cout << inteiro <<endl;
cout << *inteiro << endl;



system("pause>null");
return 0;
}

 
