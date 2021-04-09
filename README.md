# project-creation-automation

Automate the process of creating a new project and adding it to GitHub with a single command.
The command creates a new directory on your machine, initializes a Github repo with a README and pushes it to the configured Github account.
It then navigates to the newly created directory and runs `code .` to open your project folder in VS Code.

## Requirements

Assumes you are using Node.js and npm and have them installed.

Uses [**dotenv**](https://www.npmjs.com/package/dotenv) to load up environment variables from the **_.env_** file and the Github API through [**octonode**](https://www.npmjs.com/package/octonode) which is '_a library for nodejs to access the github v3 api_'.

## Setup

1. Clone this project
2. Navigate to the project directory
3. Run `npm i dotenv octonode`
4. Change first line in function inside **_.my_commands.sh_** to reflect where this project was cloned
5. Add your credentials and desired path to **_.env_**
   - You'll need to generate a personal access token to be able to authenticate with that as the API has been updated and auth with password is deprecated.
6. Steps to follow to make the command global:

- Move **_.my_commands.sh_** to your HOME directory.. or add its contents to your custom commands file if you already have one
- Add `source ~/.my_commands.sh` to your **_.bash_profile_** or **_.zshrc_** if you're also using ZSH
- Restart your terminal

7. **Optional**: [Setup VS Code launch from cli](https://code.visualstudio.com/docs/setup/mac)

## Usage

From a terminal window run

```
create <name of your project>
```

## Credits

I decided to do this using Node after I was inspired by KalleHallden's [ProjectInitializationAutomation](https://github.com/KalleHallden/ProjectInitializationAutomation) which uses Python.
