# Graph.java
In this project I'm looking to study different graph partitioning algorithms. These are algorithms designed to break up big data
graphs so that computations ca be performed on all partitions at the same time rather than processing the whole graph at once.

I have chosen a benchmark of graphs to work with that make up a combination of variables I'm going to consider when choosing
the partitoining algorithms. These variables are: the number of vertices in the graph, the average degree of a vertex in the graph,
and the clustering coefficient of the graph.

The benchmark is chosen in such a way that there are 2 graphs that can test the effect on the partitioning time for when the
variable is low or high. There are 3 variables with 2 possible values each (high and low) so there are 8 graphs in the benchmark that
make up every possible combination of these variables. For example, to measure the difference the number of vertices present in
the graph makes to the computation time, we can look at 2 graphs that have similar values for clustering coefficient and average degree,
but very different values for number of vertices. This will show whether an increase in this variable corresponds to an increase
or decrease in time needed to partition and process the graph.
