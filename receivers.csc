atget id id
set recA 0
loop
receive msg
rdata msg rid type info
if ((type=="A") && (recA==0))
	set recA 1
	
	//if destination
	if (info==id)

		//mark the destination node
		mark 1

		//send RREP
		data dest id "B"
		send dest rid

		//mark the path from destination to sender
		data new 1
		data a 1
		edge a new 

	else
		
		//continue  search for destination node
		set prev rid
		data dest id "A" info
		send dest
	end
end
	
