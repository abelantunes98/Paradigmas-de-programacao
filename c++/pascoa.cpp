#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;

int main() {
        
        int linhas;
        int colunas;
        int count = 0;
        
        cin >> linhas >> colunas;
		
		int matriz[linhas][colunas];
		
		for (int x=0; x<linhas; x++){
			for (int y=0; y<colunas; y++){
				cin >> matriz[x][y];
				if (matriz[x][y] == 1){
					count++;
				}
			} 
		}
		
		
		for (int x=0; x<linhas; x++){
			for (int y=0; y<colunas; y++){
				if (matriz[x][y]){
					cout << "(" << x << ", " << y <<  ")";
					
					if (count-- > 1){
						cout << ", "; 
					}
					
				}
			}
		}
	

		
	return 0;
}
