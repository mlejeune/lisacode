###LISACode
This image is designed to facilitate the test of LISACode, a simulator for eLISA mission. 

Two version of the image are available, identified by different tags: 

1. develop: this image is based upon the LISACode unde development and then contains all the most recent changes and update. This version is not "unstable" because is already tested, simply is not still released officialy.  
2. latest: this contains the latest "released" version of the LISACode, then the version of LISACode approved to be relased by the developers.  
 

####How use it

To use the image you need [Docker](http://docker.io) installed on your system. 

Once installed Docker, you can use this image to run LISACode without install the simualtor directly on your machine.

#####Basic usage

	docker pull gabrimaine/lisacode:develop
	docker run -it gabrimaine/lisacode:develop

NOTE: if "develop" tag  is not provided, by default Docker uses the version tagged as latest.

Once executed the above commands, you will be logged-in in the container with the installed LISACode. 
To test LISACode then you can simply execute:
	
	cd /LISACode_Cfg
	python makeTDI-lisacode2.py Test

#####Advanced Usage

You can run link local directory to the container using the flag "-v" when you launch docker run:

	docker run -v /path/on/your/local/machine:/path/on/container -it gabrimaine/lisacode

This command link a directory on your machine defined by the path: "/path/on/your/local/machine" with a directory within the container. If the container doesn't have this specific directory, a new directory will be created. 
