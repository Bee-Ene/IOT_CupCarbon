Description of the Implemented Solution
The implemented solution is a Reactive Routing Protocol for a Wireless Sensor Network (WSN) simulated using CupCarbon. Here's a breakdown of my solution:
1. Route Discovery Mechanism:
o The sender node initiates the process by sending a Route Request (RREQ) message (type "A") to locate the destination node.
o Intermediate nodes forward the RREQ message unless they are the intended destination.
o The destination node, upon receiving the RREQ, generates a Route Reply (RREP) message (type "B").
o The RREP is unicast (sent back to the originating sender node) through the reverse path.
2. Path Marking:
o When a node is identified as part of the discovered route, it marks the relevant arcs of the path.
3. Energy Efficiency Objective:
o The protocol avoids maintaining global routing tables, limiting communication to only when required, thus conserving energy.
4. Technical Features:
o Reactive Protocol: Reduces overhead since routes are discovered on demand.
o Message Structure: Contains fields for sender ID, destination ID, type of message (RREQ or RREP), and additional route information.
Technical Choices: Pros and Cons
What’s Good About It
1. Saves Energy: Only sends messages when needed, instead of constantly maintaining routes.
2. Adapts to Change: Works well if the nodes are moving (mobility is true in your simulation).
3. Simple to Implement: Uses basic message types (RREQ and RREP).
Downsides
1. Delay at First Use: There’s a small delay when finding the route for the first time.
2. Flooding the Network: Sending the RREQ to all nearby nodes can cause unnecessary message traffic in dense networks.
3. Single Path Issue: If the path breaks, it must restart the discovery process.
How It Performed in the Simulation
• Messages Sent: 15
• Messages Received: 45
• Total Communication: 375 bytes
• Time Taken: Approximately 5 seconds
• Route Found: Successfully marked 1 route.
Energy Estimate
• Communicating 375 bytes likely consumed 0.3 mJ of energy in total (based on typical energy costs for transmitting and receiving data in sensor nodes).
• If the nodes started with, say, 1000 mJ of energy, this protocol uses a very small amount, which means it’s efficient and doesn’t drain batteries quickly.
What Could Be Better
1. Reduce Message Overload: Limit the RREQ messages by sending them only in certain directions or up to a certain distance.
2. Backup Routes: Store multiple paths to avoid rediscovering routes if one fails.
3. Balance Energy Use: Avoid overusing certain nodes by spreading communication evenly across the network.
Objectives Achieved
1. Route Discovery:
o Efficiently establishes a path between the sender and destination nodes when communication is required.
2. Energy Awareness:
o Minimizes unnecessary energy consumption by eliminating continuous route updates.
3. Topology Adaptation:
o Works well in dynamic environments with mobility enabled, as seen in the simulation.
Conclusion
My protocol works well for small, dynamic networks and is efficient with energy. However, it could be improved to handle larger networks or to reduce delays and redundant messages.
