#!/usr/bin/python3

import os
import requests
from datetime import date, timedelta

access_token = os.environ.get('GITLAB_PRIVATE_KEY', '')
yesterday = date.today() - timedelta(1)

activity_params = {
	'after': yesterday.strftime('%Y-%m-%d'),
        'per_page': 100,
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

activities = get_data('events', activity_params)

print(activities)
