import example

import sys
import os
sys.path.append(os.path.realpath(os.path.dirname(__file__)+"/.."))


def test_example():
    assert example.exampleMethod() == 0
