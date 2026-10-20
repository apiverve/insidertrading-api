from setuptools import setup, find_packages

setup(
    name='apiverve_insidertrading',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/insidertrading?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
