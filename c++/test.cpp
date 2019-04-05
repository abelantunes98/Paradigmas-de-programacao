#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;

int main() {
      
      int numeros;
      int count = 0;
      
      cin >> numeros;
      
      int lista[numeros];
      for (int x=0; x<numeros; x++){
		cin >> lista[x];
		cout << lista[x]; 
	  }
	  
	  for (int x=0; x<sizeof(lista); x++){
		if (x <= sizeof(lista) - 2){
			if (lista[x] > lista[x+2]){
				int aux = lista[x];
				lista[x] = lista[x+2];
				lista[x+1] = auz;
				count ++;
			}
		}
			else if (x < sizeof(lista) - 1){
				if (lista[x] > lista[x+1]){
					int aux = lista[x];
					lista[x] = lista[x+1];
					lista[x+1] = aux;
					count ++;
				}
			}
		}
	}
				
	}
   

		
	return 0;
}
