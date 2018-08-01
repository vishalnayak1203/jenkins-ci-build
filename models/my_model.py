
class MyModel:

    def __init__(self, id=10, name='dummy'):
        self.id = id
        self.name = name

    def validate(self):
        if not self.id:
            raise ValueError('id')

        if not self.name:
            raise ValueError('name')