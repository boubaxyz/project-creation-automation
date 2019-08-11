const fs = require('fs');
const github = require('octonode');

// Replace with the desired path
const path = '/Users/boubacar/Desktop/Projects/';

// Add your Github username and pwd below
const username = '';
const password = '';

const create = () => {
	const projectName = process.argv[2];

	// Create new directory at path
	try {
		if (!fs.existsSync(`${path}${projectName}`)) {
			fs.mkdirSync(`${path}${projectName}`);
			console.log(`Successfully created ${path}${projectName}`);
		}
	} catch (err) {
		console.error(err);
	}

	const client = github.client({
		username: username,
		password: password
	});

	client.me().repo(
		{
			name: projectName
		},
		(err, data, headers) => {
			if (!err) {
				console.log(`Repo ${projectName} successfully created!`);
			} else {
				console.log(err);
			}
		}
	);
};

create();
