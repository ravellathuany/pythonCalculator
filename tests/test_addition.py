from src.python_calculator import add
import pytest


def test_add():
    result = add(3, 10)
    assert result == 7


def test_add_string():
    with pytest.raises(TypeError):
        add("string", 4)
