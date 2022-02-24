#!/usr/bin/env python3

import argparse
import subprocess

services = {
    'staging-api-worker': ('staging', 'staging-api-worker-asg74'),
    'staging-abe': ('staging', 'stagingvpc_abe0-6769e7d4-3a8e-54a7-ae0f-9139f9d6e7fc'),
    'staging-admin-panel': ('staging', 'stagingvpc_admin-panel0-ee2814d0-76f5-53ae-9389-7ae00bdd1d1d'),
    'staging-aio': ('staging', 'stagingvpc_aio0-a0ce475c-2c32-57de-b7e1-737709bc26fd'), 
    'staging-catalog': ('staging', 'stagingvpc_catalog0-c202f122-f9f0-5f9c-99e3-70e150ce0b2f'),
    'staging-rufio': ('staging', 'stagingvpc_rufio_php74'),
    'staging-web': ('staging', 'staging_proxy2-e8b790e9-b09e-512f-896d-ff74adbc8125'),
    'prod-abe0': ('production', 'prodvpc_abe0-26f04faf-b232-54e4-b695-e4e634069b4e'),
    'prod-abe1': ('production', 'prodvpc_abe1-cb685f96-0e91-559b-9466-1abc95491ce5'),
    'prod-api-worker': ('production', 'prodvpc_api-worker_php74'),
    'prod-catalog': ('production', 'prodvpc_catalog1-34d85505-1d2f-53e6-890b-19d66296c699'),
    'prod-rufio0': ('production', 'prodvpc_rufio0_php74'),
    'prod-rufio1': ('production', 'prodvpc_rufio1_php74'),
    'prod-rufio2': ('production', 'prodvpc_rufio2_php74'),
    'prod-rufio3': ('production', 'prodvpc_rufio3_php74'),
    'prod-web': ('production', 'prodvpc_web1-9b91cf10-0b29-5fad-8c8b-166efd8ffcf9'),
    'prod-worker0': ('production', 'prodvpc_worker0-e3f054d8-9ef6-5f11-9d6f-df8b63610fd0'),
    'prod-worker1': ('production', 'prodvpc_worker1-3b5afb2f-e229-5413-9ba9-97f1cab725d2'),
}

parser = argparse.ArgumentParser()
parser.add_argument('service', choices=services.keys())
args = parser.parse_args()

selection = args.service
service = services[selection]

print(f"TSH --> {service[0]} - {service[1]}")

command = ['tsh',  'ssh', '--cluster', f'{service[0]}', f'quartzy@{service[1]}']
subprocess.run(command)
