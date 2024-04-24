#!/usr/bin/python3

import json

def read_dummy(json_file):
    """
    Reads the dummy data and returns the
    JSON object as a dictionary
    """
    f = open(json_file)
    data = json.load(f)
    return data

def gen_query(dummy_dict):
    """
    Create an inject.sql file and
    writes dummy data to the sql file
    """

    f = open("queries.sql", "w")

    # Stations
    for s in dummy_dict['stations']:
        statment = f'INSERT INTO Station (stationName, address, zipCode, country, city)'
        values = f"VALUES ('{s['stationName']}', '{s['address']}', '{s['zipCode']}', '{s['country']}', '{s['city']}');"
        query = ' '.join([statment, values])
        f.write(query + '\n')

    # Employees
    for e in dummy_dict['employees']:
        statment = f'INSERT INTO Employee (firstName, lastName, role, stationId, employmentDate, phoneNo, email, address, zipCode, country, employed)'
        values = f"('{e['firstName']}', '{e['lastName']}', '{e['role']}', {e['stationId']}, '{e['employmentDate']}', '{e['phoneNo']}', '{e['email']}', '{e['address']}', '{e['zipCode']}', '{e['country']}', {e['employed']});"
        query = ' '.join([statment, values])
        f.write(query + '\n')

    f.close()

dummy_dict = export_dummies('data/dummy.json')
gen_query(dummy_dict)