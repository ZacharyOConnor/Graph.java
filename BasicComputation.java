import java.util.Arrays;
import java.util.List;

public class BasicComputation<LongWritable, DoubleWritable, FloatWritable> extends Graph
{
	int currentSuperstep = 0;

	public void compute(List<Vertex> vertex, int[] messages)
	{
		// need to figure out what this function is meant to do

		int maxValue = max(messages);
		if (maxValue > Vertex.getValue())
		{
			Vertex.setValue(maxValue);
			sendMessageToAllEdges(maxValue);
		}
		Vertex.voteToHalt();
	}

	private int max(int[] messages)
	{
		int tempMax = 0;
		for (int i = 0; i < messages.length; i++)
		{
			if (tempMax < messages[i])
			{
				tempMax = messages[i];
			}
		}
		return tempMax;
	}

	public int getSuperstep(/* Graph graph */)
	{
		return Graph.currentSuperstep;
	}

	public List<Vertex> getTotalNumVertices(/* Graph graph */)
	{
		return Graph.getVertices();
	}

	public List<Edge> getTotalNumEdges(/* Graph graph */)
	{
		return Graph.totalEdges;
	}

	public void sendMessage(Vertex targetVertex, int message)
	{
		int[] messenges = Arrays.copyOf(targetVertex.messenges, targetVertex.messenges.length + 1);
		targetVertex.messenges = messenges;
		targetVertex.messenges[targetVertex.messenges.length - 1] = message;
	}

	public void sendMessageToAllEdges(int message)
	{

	}

	public void addVertexRequest(/* int vertexId */)
	{

	}

	public void removeVertexRequest()
	{

	}

}