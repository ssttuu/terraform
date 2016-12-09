import os

import sys

ENVS_PATH = 'envs'


def create_new_infra(cmd, name, env_type='test'):
    print ENVS_PATH
    env_file_path = os.path.join(ENVS_PATH, '%s.tfvars' % env_type)

    os.system("docker-compose run terraform get")
    os.system("docker-compose run terraform %s -var-file='%s' -var='name=%s'" % (cmd, env_file_path, name))


if __name__ == '__main__':
    create_new_infra(sys.argv[1], sys.argv[2], sys.argv[3])
