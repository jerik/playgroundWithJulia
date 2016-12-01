# script to get the newest created file from the folder
# run with: julia file.jl

	dfolder = "C:\\usr\\swps"
	cd( dfolder )
	dfiles = readdir( "." )

	# https://learnxinyminutes.com/docs/julia/
	files=[]

	#println( dfiles )
	for file in dfiles
		created = ctime( file )
		#print(typeof( created ) )
		#println( created )
		push!(files, [created, file]  )
		#println( stat(file).ctime )
		#println( ctime(file) )
	end

	#println( files )

	# sort the timestamp
	sort!( files, by = e -> e[1] )

	# grab the newst file and display the filename
	#println( files[end][2] )
	lastfile = string( dfolder, "\\" , files[end][2] )
	println( lastfile )

	# @todo open up the file did not work
	#run( `start "$lastfile"` )
	#escFile = replace( lastfile, "\\", "\\\\" )
	#println( escfile )
	#run( `start "$escfile"` )



#=
function foo(x,y)
  msg = x+y
  println(msg)
end

foo(10,2)
=#
