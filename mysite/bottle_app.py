
# A very simple Bottle Hello World app for you to get started with...
from bottle import default_app, route ,request,post,template
import time
import mysql.connector
from datetime import date, datetime, timedelta

#@route('/regulartasks')
#def regulartasks():
#    return template('regulartasks')

#@post('/saveregulartasks')
#def saveregulartasks():


#@post('/createnewrtasks')
#def createnewrtasks():


@route('/alltasks')
def print_tasks_file():
    f=open("tasks.txt",'r')
    lines=f.readlines()
    return template('all_tasks',res=lines)

@route('/deleteideas')
def deleteform():
    return template('deleteideas')

@route('/readlinks')
def readlinks():
    return template('readlinks')

@post('/deleteideas')
def deleteideas():
    taskid=request.forms.get('taskid')
    deleteidea(taskid)
    ideas=getallideas()
    return template('daily_form',again=0,taskdetails='',tasks=ideas)

@route('/alltasks2')
def print_db_tasks():
    tasks=getalltasks()
    return template('dbtasks',tasks=tasks)

@route('/daily')
def daily():
    ideas=getallideas()
    return template('daily_form',again=0,taskdetails='',tasks=ideas)

@post('/save')
def save():
    task=request.forms.get('task')
    type1=request.forms.get('type')
    savetofile(task,type1)
    savetodb(task,type1)
    ideas=getallideas()
    return template('daily_form',again=1,taskdetails="Task added  : Time  :"+time.ctime()+": task "+task+": Type "+type1,tasks=ideas)

@post('/saveidea')
def saveidea():
    task=request.forms.get('idea')
    type1=request.forms.get('itype')
    savetodb(task,type1,"justforml$ideas","ideas")
    ideas=getallideas()
    return template('daily_form',again=0,taskdetails='',tasks=ideas)

def savetofile(task,type1):
    f=open("./tasks.txt",'a+')
    f.write(time.ctime()+": "+task+": "+type1+"\n")
    f.flush()
    f.close()

def savetodb(task,type1,database="justforml$tasks",name="tasks"):
    cnx=mysql.connector.connect(user="justforml",password="ketulgupta",host="justforml.mysql.pythonanywhere-services.com",database=database)
    cursor = cnx.cursor()
    cursor.execute("SELECT taskid FROM "+name+" ORDER BY taskid DESC LIMIT 1")
    taskid=0
    for i in cursor:
        print (i)
        print (i[0])
        taskid=int(str(i[0]))
    cursor.close()
    cursor= cnx.cursor()
    indate=datetime.now().date()
    add_task = ("INSERT INTO  "+name+
               " (taskid, task, type, indate) "
               "VALUES (%s, %s, %s, %s)")

    made_task = (taskid+1,task,type1,indate)
    cursor.execute(add_task,made_task )
    cnx.commit()

    cursor.close()
    cnx.close()

def getalltasks():
    cnx=mysql.connector.connect(user="justforml",password="ketulgupta",host="justforml.mysql.pythonanywhere-services.com",database="justforml$tasks")
    cursor = cnx.cursor()
    cursor.execute("SELECT taskid,task,type,indate FROM tasks ORDER BY taskid DESC;")
    tasks=[]
    for i in cursor:
        tasks.append(i)
    cursor.close()
    cnx.close()
    return tasks

def getallideas():
    cnx=mysql.connector.connect(user="justforml",password="ketulgupta",host="justforml.mysql.pythonanywhere-services.com",database="justforml$ideas")
    cursor = cnx.cursor()
    cursor.execute("SELECT taskid,task,type,indate FROM ideas ORDER BY taskid DESC;")
    tasks=[]
    for i in cursor:
        tasks.append(i)
    cursor.close()
    cnx.close()
    return tasks


def deleteidea(taskid):
    cnx=mysql.connector.connect(user="justforml",password="ketulgupta",host="justforml.mysql.pythonanywhere-services.com",database="justforml$ideas")
    cursor = cnx.cursor()
    cursor.execute("delete from ideas where taskid="+taskid+";")
    cnx.commit()

    cursor.close()
    cnx.close()




@route('/')
def hello_world():
    return 'Hello from Bottle!'

application = default_app()

