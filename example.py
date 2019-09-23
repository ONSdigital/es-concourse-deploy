import sys
import os

sys.path.append(os.path.realpath(os.path.dirname(__file__)+"/.."))
import example

def test_example():
    assert example.example_method() == 0