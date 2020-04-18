#!/bin/bash
if (( $# < 5 )); then
  echo "USAGE: $0 graph.txt workerClass partitionerClass partitionCount threads"
  exit 1
fi

INPUT_GRAPH=$1
WORKER_CLASS=$2
PARTITION_CLASS="-ca giraph.graphPartitionerFactoryClass=$3"
PARTITION_COUNT="-ca giraph.userPartitionCount=$4,giraph.maxPartitionsInMemory=$4"
THREADS="-ca giraph.numInputThreads=$5"
HADOOP_OUTPUT_DIR=output
CUSTOM_OUTPUT="-op $HADOOP_OUTPUT_DIR"

EXAMPLES_JAR=~/giraph-1.2.0-hadoop2/giraph-examples/target/giraph-examples-1.2.0-hadoop2-for-hadoop-2.5.1-jar-with-dependencies.jar
MAIN_CLASS=org.apache.giraph.GiraphRunner
INPUT_FORMAT_CLASS=org.apache.giraph.io.formats.JsonLongDoubleFloatDoubleVertexInputFormat
OUTPUT_FORMAT_CLASS=org.apache.giraph.io.formats.IdWithValueTextOutputFormat
MASTER_COMPUTE_CLASS=org.apache.giraph.examples.SimplePageRankComputation\$SimplePageRankMasterCompute

ARGS="-ca giraph.SplitMasterWorker=false,giraph.loglevel=error $PARTITION_CLASS $PARTITION_COUNT $THREADS"

CMD_ARGS="$MAIN_CLASS $WORKER_CLASS -mc $MASTER_COMPUTE_CLASS -vif $INPUT_FORMAT_CLASS -vip $INPUT_GRAPH -vof $OUTPUT_FORMAT_CLASS $CUSTOM_OUTPUT -w 1 $ARGS"
echo "$0 $1 $2 $3 $4 $5 $6" >> newRresults.txt

hdfs dfsadmin -safemode leave > hadoopOutput.txt
hadoop fs -rm -r /user/zachary/$HADOOP_OUTPUT_DIR >> hadoopOutput.txt


echo "hadoop jar $EXAMPLES_JAR $CMD_ARGS" >> hadoopOutput.txt
echo "hadoop jar $EXAMPLES_JAR $CMD_ARGS"
export HADOOP_HEAPSIZE=4096
START_TIME=`date`
hadoop jar $EXAMPLES_JAR $CMD_ARGS >> hadoopOutput.txt 2>&1
END_TIME=`date`

echo START_TIME: $START_TIME
echo END_TIME:   $END_TIME
echo $START_TIME >> results.txt
echo $END_TIME >> results.txt
