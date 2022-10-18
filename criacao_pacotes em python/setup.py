from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="image_process",
    version="0.0.1",
    author="Luana Araruna",
    author_email="araruna.luana@gmail.com",
    description="Aprendendo criar pacote de processamento",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="https://github.com/CodesdaLu/Dio_Bootcamp_DataScience/blob/main/criacao_pacotes",
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',
)
