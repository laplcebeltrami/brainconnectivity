The page introduces basic brain connecitivity manipulation tools.

### (1) How to convert vecotrized edge weights (q number of edges x 1) into connectivity matrix

```ruby 
load malesmooth.mat
incorrect = squareform(male1_unsmoothed);
figure; imagesc(incorrect); 
```
Figure immediately shows artifacts and you shoud immediately conclude something went wrong using the squareform function. The correct way is to use the vec2.adj.m function, which will show more realistic brain connectivity pattern.

```ruby
correct = vec2adj(male1_unsmoothed); 
figure; imagesc(correct);
```



### (2) How to use a single colorbar to represent data on nodes and edges simultaneously. 
In the figure below, the edge color correpsonds to the edge weight computed as the Pearson correlation. Only edges above 0.7 correlation are shown. The node color and size corresnpond to the weighted node dgree (sum of all the edge weights connecting to the node). The weighted node degrees can be up to 50 for functional brain networks and a different color map is neededt to display the weighted degree. To avoid using two different color maps, the weighted node degrees are scaled down and matched to edge color scales by diviging the degrees by 50. Then colorbar is manually fixed at [0, 1] by using manual thick labels 0.0, 0.1, 0.2, ... ,0.9, 1.0 as follows.

![alt text](https://github.com/laplcebeltrami/networktools/blob/main/degreemap.jpg?raw=true)

```ruby
c=colorbar;
c.Ticks= [0 5 10 15 20 25 30 35 40 45 50]
c.TicksMode ='Manual'
c.TickLabels = arrayfun(@num2str, c.Ticks/50, 'UniformOutput', 0) 
```
