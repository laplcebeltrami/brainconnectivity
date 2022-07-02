The page introduces basic brain connecitivity manipulation tools

How to convert vecotrized edge weights (q number of edges x 1) into connectivity matrix

```ruby 
load malesmooth.mat
incorrect = squareform(male1_unsmoothed);
figure; imagesc(incorrect); 
```
Figure immediately shows artifacts and you shoud immediately conclude something went wrong using the squareform function. The correct way is to use the vec2.adj.m function

```ruby
correct = vec2adj(male1_unsmoothed); 
figure; imagesc(correct);
```
