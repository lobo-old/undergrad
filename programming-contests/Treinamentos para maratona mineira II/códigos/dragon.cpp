#include <iostream>
#include <queue>

using namespace std;

int tab[1001];
int golpe[1000], cabeca[1000];
int n;

int minimo() {

    for(int i=0;i<1001;i++)
        tab[i] = -1;
        
    queue<int> fila;
    
    fila.push(100);
    tab[100] = 0;
    
    while(!fila.empty()) {
          int topo = fila.front(); //fila.top()
          fila.pop();
          for(int i=0;i<n;i++) {
              if(topo-golpe[i] == 0) return tab[topo] + 1;
              if(tab[topo-golpe[i]+cabeca[i]] == -1) {
                  tab[topo-golpe[i]+cabeca[i]] = tab[topo] + 1;
                  fila.push(topo-golpe[i]+cabeca[i]);
              }
          }
    }
    
    return tab[0];
}
                   
    
int main(){
    
    while(1) {
             scanf("%d", &n);
             if(n == 0) return 0;
             
             for(int i=0;i<n;i++)
                scanf("%d", &golpe[i]);
                     
             for(int i=0;i<n;i++)
                scanf("%d", &cabeca[i]);
                
             int result = minimo();
             if(result == -1)
                printf("cavaleiro morreu\n");
             else printf("%d\n", result);
    }
                     
    system("pause>null");
    return 0;
    }
