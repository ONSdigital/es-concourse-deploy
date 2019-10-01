# concourse-deploy

This GitHub project is comprised of two pipelines. 

One pipeline is a team wide code quality assurance tool, the other is a template of the 
Serverless deployment, which will be more of a project specific implementation as it will 
currently require some configuration regarding which files are selected and uploaded to AWS.

The CI pipeline implements both py-test and flake8 all executed inside a docker image
built with the project specific requirements file. The pipeline is automatically executed 
on the creation of a pull request and the results returned inside the pull request, 
informing the reader at a quick glance if it passes basic tests. The pipeline is generic 
and can be used across all the projects we have created inside GitHub. 

To enable the pipeline on a repo all you need to do is configure the web-hooks on the 
specific repository. Details on how to configure this can be found at: 
https://collaborate2.ons.gov.uk/confluence/pages/viewpage.action?pageId=28818132

Commands on how to create and interact with the pipeline are located at:
https://collaborate2.ons.gov.uk/confluence/display/ESD/Fly