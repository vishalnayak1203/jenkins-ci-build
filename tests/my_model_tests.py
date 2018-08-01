import unittest

from models.my_model import MyModel


class MyModelTestCase(unittest.TestCase):

    def test_my_model_validate(self):
        my_model_instance = MyModel(20, 'MyModel')
        my_model_instance.validate()

    def test_my_model_validate_default_id(self):
        my_model_instance = MyModel(name='MyModel')
        my_model_instance.validate()

    def test_my_model_validate_default_name(self):
        my_model_instance = MyModel(id=20)
        my_model_instance.validate()
