Made by Riku Karvinen
Student number: 50113989

# Database Design Report

## 1. Business Domain
The system represents an online food delivery platform that connects customers
with local restaurants. Users can browse restaurants, view menus, place orders,
and leave reviews. Restaurants can manage their offerings and orders.

## 2. Geographic Scope
The system is country-specific and initially targets Germany, with the ability
to scale to other European countries.

## 3. End Users and Load
End users include customers, restaurant owners, and administrators.
The system is mostly read-heavy with approximately an 85/15 read/write ratio.
During peak hours, the system supports 20,000–50,000 concurrent users.

## 4. Chosen DBMS
Apache Cassandra was chosen due to its high availability, horizontal scalability,
and suitability for read-heavy workloads.

This project is aiming for grade 3.