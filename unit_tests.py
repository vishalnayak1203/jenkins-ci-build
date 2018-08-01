import os

ENV = os.environ.get('ENV', 'PROD').upper()

if ENV != 'TEST':
    raise Exception('Test Environment needed')

from tests.my_model_tests import *