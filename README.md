# concourse-deploy

This GitHub project is comprised of two pipelines. 

One pipeline is a team wide code quality assurance tool, the other is to deploy the current
master branch pipeline to concourse for all of the repos. The automation of this is still
under construction.

The CI pipeline implements both py-test and flake8 all executed inside a docker image
built with the project specific requirements file. The pipeline is automatically executed 
on the creation of a pull request and the results returned inside the pull request, 
informing the reader at a quick glance if it passes basic tests. The pipeline is generic 
and can be used across all the projects we have created inside GitHub. 

To enable the pipeline on a repo all you need to do is configure the web-hooks on the 
specific repository. Details on how to configure this can be found at: 
https://collaborate2.ons.gov.uk/confluence/pages/viewpage.action?pageId=28818132

Make sure when setting up the web-hook you refer to the correct pipeline!

Commands on how to create and interact with the pipeline are located at:
https://collaborate2.ons.gov.uk/confluence/display/ESD/Fly

When setting this pipeline you will need to specify the repository name that you wish to 
create the pipeline for e.g.
 
`fly -t spt sp -p pr-concourse -c pipeline.yml -v repo-name=es-concourse-deploy`