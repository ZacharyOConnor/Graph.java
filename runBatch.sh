#!/bin/bash


./runPartition.sh enron.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh enron.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh enron.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_small.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_small.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_small.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runPartition.sh dblp.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh dblp.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh dblp.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_big.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_big.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_big.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output


./runPartition.sh enron.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh enron.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh enron.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_small.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_small.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_small.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runPartition.sh dblp.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh dblp.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh dblp.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_big.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_big.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runPartition.sh uk_big.txt org.apache.giraph.examples.SimplePageRankComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output



./runSSP.sh enron.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh enron.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh enron.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_small.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_small.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_small.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runSSP.sh dblp.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh dblp.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh dblp.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_big.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_big.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_big.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashRangePartitionerFactory 4 4
hadoop fs -ls /user/zachary/output

./runSSP.sh enron.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh enron.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh enron.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_small.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_small.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_small.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runSSP.sh dblp.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh dblp.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh dblp.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_big.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 2 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_big.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 3 4
hadoop fs -ls /user/zachary/output
./runSSP.sh uk_big.txt org.apache.giraph.examples.SimpleShortestPathsComputation org.apache.giraph.partition.HashPartitionerFactory 4 4
hadoop fs -ls /user/zachary/output
