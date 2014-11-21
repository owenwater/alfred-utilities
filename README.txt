# Alfred Workflow CLI Utilities

Bash script utilities package to help developing Alfred workflows in command lines.


###Install
1. Download the package to a dedicated scripts folder. 
2. Make sure this folder has been added to $PATH.
3. Put source /your/path/to/this/package/config.sh in .bashrc, .zshrc or other shell config files to enable cdwf command.

###Command
* createwf -- create a new alfred workflow
	* Usage: createwf workflow-name
	* Description: 
		* A folder and an info.plist file will be generated for this new workflow in Alfred's directory system. This process is the same as "Alfred -> Workflows -> + -> Blank Workflow".
		* Workflow's attributes, which are name / bundleid / author / readme / website, are based on workflow-name and default setting in "Alfred -> Workflows -> + -> Workflow Defaults...".
		
* cdwf -- cd to the workflow folder
	* Usage: cdwf [-d] [workflow-name|bundle-id]
	* Description: 
		Changing folder to workflow directory based on workflow-name or bundle-id. If there is an info.plist file in current folder, this command will also bring you to the corresponding workflow directory. When workflow cannot be found, you will be brought to "~/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows".
		-d Instead of workflow directory, changing directory to workflow data folder under "~/Library/Caches/com.runningwithcrayons.Alfred-2/Workflow Data".
		
* syncwf -- two way synchronization between current directory and workflow directory
	* Usage: syncwf -gp [-f] [-o rsync-options] [workflow-name|bundle-id]
	* Description: 
		Update content between current and workflow directory with rsync
		-g (Get) -- Copy content from workflow directory to the current one.
		-p (Put) -- Copy content from current directory to the workflow one.
		-f (Force Mode) -- Synchronize without confirmation.
		-o (Options) -- Use these options for rsync. Defalut rsync options  are "-av --update --delete --exclude=.*".
		-n (Dry run) -- Show what would have been transferred by rsync.
		[workflow-name|bundle-id]** Use workflow-name, bundle-id or info.plist file (if exists in current folder) to determine the path of workflow directory. Another way is to read path from pipeline directly, e.g. echo $path_of_workflow_directory | syncwf.
		
* findwf -- print the path to workflow based on workflow-name, bundle-id or info.plist (if exists in current folder)
	* Usage: findwf [workflow-name or bundle-id] 


