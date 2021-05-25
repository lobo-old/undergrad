#include <iostream>

using namespace std;

struct data{
       int a;
       float b;
       char c;

       float produto(){
           return a*b;
           }
       };
       
int main(){
    data x,y;
    data a[4];
    
    cin >> x.a;
    cin >> x.b;
    cin >> x.c;
    cin >> y.a;
    cin >> y.b;
    cin >> y.c;
    

            cout << x.a << " " << x.b << " " << x.c << endl;
            cout << y.a << " " << y.b << " " << y.c << endl;
            cout << endl;
    /*
    for(int i = 0; i < 4; i++)
            cout << a[i].a << " " << a[i].b << " " << a[i].c << endl;
    */
    
    
    cout << x.produto() + y.produto();//(x.a,x.b);   
    //cout << endl;
    //(x.a,x.b);   
    system("pause>null");
    return 0;
    }
