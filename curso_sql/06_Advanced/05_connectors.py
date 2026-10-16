import mysql.connector

def print_user(user):
    config ={
    'host': '127.0.0.1',
    'port': '3306',
    'user': 'root',
    'password': '****',
    'database': 'hello_mysql'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name ='" + user + "';"
    print(query)
    cursor.execute(query)
    results = cursor.fetchall()

    for row in results: 
        print(row)  

    cursor.close()
    connection.close()


#print_user("Marcos")

#HAy que tener cuidado con la inyección de SQL, ya que el código anterior es vulnerable a ataques de inyección.
# Es recomendable usar consultas parametrizadas para evitar este tipo de vulnerabilidades.
#print_user("'; UPDATE users SET age = 100 WHERE user_id = 1; --")


#  Aquí hay un ejemplo de cómo hacerlo:
def print_user_safe(user):
    config ={
        'host': '127.0.0.1',
        'port': '3306',
        'user': 'root',
        'password': '****',
        'database': 'hello_mysql'
        }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name = %s;"
    print(query)
    cursor.execute(query, ( user,))
    results = cursor.fetchall()

    for row in results: 
        print(row)  

    cursor.close()
    connection.close()

print_user_safe("Marcos")