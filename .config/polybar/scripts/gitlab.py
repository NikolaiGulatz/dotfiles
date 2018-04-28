#!/usr/bin/python3

import os
import requests

access_token = os.environ.get('GITLAB_PRIVATE_KEY', '')

mr_params = {
	'scope': 'assigned-to-me',
	'state': 'opened',
	'view': 'simple',
	'per_page': 20
}

issue_params = {
	'scope': 'assigned-to-me',
	'state': 'opened',
	'per_page': 40
}

todo_params = {
	'state': 'pending',
	'per_page': '40'
}

auth = {
	'private_token': access_token
}

def get_data(endpoint, params):
	params.update(auth)

	return str(
		len(
			requests.get(
				f'https://gitlab.com/api/v4/{endpoint}',
				params = params
			).json()
		)
	)

merge_requests = get_data('merge_requests', mr_params)
issues = get_data('issues', issue_params)
todos = get_data('todos', todo_params)

print('|'.join([issues, merge_requests, todos]))
