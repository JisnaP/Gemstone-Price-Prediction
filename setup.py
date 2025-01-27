from setuptools import setup, find_packages

setup(
    name="gemstone_price_prediction",
    version="0.0.1",
    description="A package for gemstone price prediction",
    author="JisnaP",
    author_email="jisna12@gmail.com",
    packages=find_packages(),
    install_requires=["pandas","numpy","scikit-learn","flask","seaborn","ipykernel","flask",
                      "mlflow","dvc","apache-airflow"],
)
