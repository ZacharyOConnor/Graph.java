import java.util.List;
//import com.sun.javafx.geom.Edge;

public class Vertex<LongWritable, FloatWriatble, DoubleWritable>
{
	int Id;
	static int value;
	List<Edge> edges;
	int[] edge_values;
	static boolean hasVotedToHalt;
	List<String> messenges;

	public Vertex(int Id, boolean hasVotedToHalt)
	{
		// TODO Auto-generated constructor stub
	}

	public int getId()
	{
		return Id;
	}

	public static int getValue()
	{
		return value;
	}

	public static void setValue(int newValue)
	{
		value = newValue;
	}

	public List<Edge> getEdges()
	{
		return edges;
	}

	public int getNumEdges()
	{
		return edges.size();
	}

	public int getEdgeValue()// returns value of first edge
								// connected to target vertex, if any
	{
		return edges.indexOf(edges);
	}

	public void setedgeValue(Edge value)
	{
		edges.add(-1, value);
	}

	public List<Edge> getAllEdgeValues()
	{
		return edges;
	}

	public static void voteToHalt()
	{
		hasVotedToHalt = true;
	}

	public void addEdge(Edge edge)
	{// might need to rewrite this method
		// List<Edge> updatedEdges = edge.(edges, edges.size() + 1);
		edges.add(edges.size(), edge);
	}

	public void removeEdges(Vertex vertex)
	{
		vertex.edges = null;
	}

	public void sendMessageToAllEdges(int message)
	{

	}
}