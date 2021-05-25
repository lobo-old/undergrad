#include<iostream>
#include<vector>

using namespace std;

int main(){
    vector<int> a;
    int b;
    
    for(int i=0;i<8;i++){
            cin>> b;
            a.push_back(b);
                  
    }
    cout << endl;
    for(int i=0;i<8;i++)
            cout << a[i] << " ";
            
    
    system("pause");
    return 0;
    }
