#include <stdio.h>

#define SIZE 204

int fill_color(int node, int color, int map[][SIZE], int colors[]){
    int i;
    colors[node] = color;
    for(i = 0 ; i < SIZE ; ++i){
        if(map[node][i]){
            if(!colors[i]){
                if(fill_color(i, -color, map, colors)){ return 1; }
            }
            else if(colors[i] == color) return 1;
        }
    }
    return 0;
}

int main(){
    int node_num, edge_num;
    while(scanf("%d%d", &node_num, &edge_num) == 2 && node_num != 0){
        int map[SIZE][SIZE] = {0}, colors[SIZE] = {0};
        int node_a, node_b, i;
        for(i = 0 ; i < edge_num ; ++i){
            scanf("%d%d", &node_a, &node_b);
            map[node_a][node_b] = map[node_b][node_a] = 1;
        }
        if(fill_color(0, 1, map, colors)){
            printf("NOT BICOLORABLE.\n");
        }
        else{
            printf("BICOLORABLE.\n");
        }
    }
    return 0;
    
}
