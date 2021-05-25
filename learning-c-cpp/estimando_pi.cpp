#include <iostream> 

using namespace std;

int main(){
    
    long long int x, y, cont=0, n;
    
    srand(time(0));
    
    cout << "Quantos lançamentos? ";
    cin >> n;
    
    for (int i=1; i <= n; i++)
    {
        x = rand()%10001;
        y = rand()%10001;
        
        if(x*x + y*y <= 10000*10000)
        cont++;
    }
    
    cout << "Valor estimado de pi = " << 4.0 * cont/n; 
    
    system("pause>null");
    return 0;    
}
