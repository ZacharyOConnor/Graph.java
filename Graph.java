import java.util.List;

public class Graph
{
	boolean directed;
	int totalVertices;
	int totalEdges;
	static int currentSuperstep;
	private static List<Vertex> vertices;
	private static List<Edge> edges;

	public Graph(List<Vertex> vertices, List<Edge> edges)
	{
		this.vertices = vertices;
		this.edges = edges;
	}

	public static List<Vertex> getVertices()
	{
		return vertices;
	}

	public List<Edge> getEdges()
	{
		return edges;
	}

	public void vertexCutDBH(List<Edge> edges, List<Vertex> vertices, int numOfMachines)
	{

	}

	public void HDRF(List<Edge> edges, List<Vertex> vertices, int numOfMachines)
	{

	}

	public static void main(String[] args)
	{
	 
	}
}
