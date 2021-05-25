#include<iostream>
#include<string>

using namespace std;

int main(){
    
    string a;
    char b[10][10];
    char c[10];

    cin >> c;
    
    //for(int i=0;i<10;i++)
            cout << c;
    
    cout << endl;
    
    for(int i=0; i< 10; i++)
            sprintf(b[i], "a%d%d", i,i+1);    
    //for(int j=0;j<10;j++){
    for(int i=0;i< 10;i++)
            cout << b[i];
    cout << endl;        
    //}
    
    cout << endl;
    
    ////strcpy(b, "abaaaaaaaaaaa");    
//    
//    for(int i=0;i<10;i++)
//            cout << b;
//    
    
    system("pause");
    return 0;
    }
