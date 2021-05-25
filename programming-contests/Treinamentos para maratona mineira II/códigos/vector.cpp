#include <iostream>
#include <vector>

using namespace std;

int main(){
    
    vector<int> a;
    int x = 100;
    
    int cont = -1;
    while(x != 0){
            cin>> x;
            a.push_back(x);
            cont++;
            
    }
    cout << endl;
    sort(a.begin(),a.end()-3);
    for(int i=0;i<a.size();i++)
        cout << a[i];
    
   
    system("pause>null");
    return 0;
    }
