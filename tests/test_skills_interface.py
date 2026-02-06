import pytest
import os

def test_all_skills_have_handler():
    """
    Every .py file in the skills/ directory must have a 'handler' function.
    """
    skills_dir = "skills"
    skill_files = [f for f in os.listdir(skills_dir) if f.endswith(".py") and f != "__init__.py"]
    
    if not skill_files:
        pytest.fail("No skill implementations found in skills/ directory.")

    for file in skill_files:
        module_name = f"skills.{file[:-3]}"
        module = __import__(module_name, fromlist=["handler"])
        assert hasattr(module, "handler"), f"Skill {file} is missing the required handler() function."