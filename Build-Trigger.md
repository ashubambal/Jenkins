## Build Triggers

# Trigger builds remotely (e.g., from scripts)
# Build after other projects are built
# Build periodically
# GitHub hook trigger for GITScm polling
# Poll SCM


# Trigger builds remotely (e.g., from scripts) - 
	Authentication Teoken - test
	url - JENKINS_URL/job/build/build?token=TOKEN_NAME
	    - http://3.110.81.255:8080//job/build/build?token=test
	
Issue:  form InPrivate window we will get an error also from console using curl http://3.110.81.255:8080//job/build/build?token=test 
will get below error 


Authentication required
<!--
-->

So to solve that issue we need to isstall below plugins : 
Plugin : Build Authorization Token Root
	url - buildByToken/build?job=RevolutionTest&token=TacoTuesday
	    - http://3.110.81.255:8080/buildByToken/build?job=build&token=test

form console : \&

http://3.110.81.255:8080/buildByToken/build?job=build\&token=test

# Build after other projects are built

If the job is depend on another job in that situvation will use this option

Job-1 - Onces completed
	Job-2 - Need to trigger


Trigger only if build is stable
Trigger even if the build is unstable
Trigger even if the build fails
Always trigger, even if the build is aborted

# Build periodically

We can schedule cranjob (* * * * *) ex. evry 1min/day,month,year

# GitHub hook trigger for GITScm polling


# Poll SCM
Same as build periodically but It will keep polling SCM for any changes, if there were any changes on github then only the trigger will happen - can schedule cranjob (* * * * *) ex. evry 1min/day,month,year

