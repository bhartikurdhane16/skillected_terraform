#terrform install setup

   1. github repo
   2. clone github repo in vs code/local system 
          - get ssh conecction vs code & github repo.
              #ssh-keygen -----put public key on github repo ( settings --->deploy keys)
              #git clone <http url of repo>
   3. launch server ( terraform master)
       - terraform installation 
   4. ssh conection of terraform server and github repo.
   5. clone github repo on terraform master.
   6. configure AWS with terraform
        - user with EC2 permission / full access.
        -access key and screte access key.
         #aws configure   ---put keys
         /root/.aws/config   ------------put user name
         /root/.aws/credentials --------check keys
   7. Write script : instance creation.
   8 push script to remote repo ( #git push origin main)
   9. pull on terraform maser ( #git pull origin main)
   10. Apply terraform lifecycle.
         #terraform init  -----------it initialized terraform 
         #terraform plan
         #terrform apply 



                       








# skillected_terraform
Terraform script/code:
   Steps:
      1. terraform block : it will intiialzed terraform configuration, plugins, 
      2. Provider block /User profile : AWS configuration initilized,    
             OR Role
        create role -----> assigin permission to role----->attach role terraform server.    

   3.Blocks   -----deltails
1. resource block 
       {}
       4. push on github--->pull on terraform server---->apply the lifcycle  ---->resources will be created.







