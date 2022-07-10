The page introduces basic brain connecitivity manipulation tools

(1) How to convert vecotrized edge weights (q number of edges x 1) into connectivity matrix

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

(2) How to use a single colorbar to represent data on nodes (dgree) and edges (correlations). 

c=colorbar;
c.Ticks= [0 5 10 15 20 25 30 35 40 45 50]
c.TicksMode ='Manual'
str = c.Ticks/50;
c.TickLabels = arrayfun(@num2str, c.Ticks/50, 'UniformOutput', 0) 
