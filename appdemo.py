import sqlite3 

datapath = "C:\Users\\delro\\Desktop\\FunkoPopph2\\funkopop.db"
conn = sqlite3.connect(datapath)
c = conn.cursor() 

def connect(datapath): 
    #connects to database 
    print('You are now connecting to the ' + datapath + '.') 
    conn = sqlite3.connect(datapath)
    c = conn.cursor()
    print ('Welcome \n')
    #end of connect function 

#def execute(conn, query) 

def createOrder(): 
    print("test successful")


#---SEARCH_FUNKOPOP---# 
def searchFunkoName(fpname): 
    sql = "SELECT * FROM funkopop WHERE fp_Popname LIKE \'%"
    sql += fpname
    sql += "%\'"
    c.execute(sql) 
    
    rows = c.fetchall() 

    for row in rows: 
        print(row) 

    return rows 
#end of search funko name

def searchFunkoDPCI(fpdpci): 
    if (len(fpdpci) != 9):
        print("DPCI not valid") 
    else:
        sql = "SELECT * FROM funkopop WHERE fp_DPCI LIKE \'%"
        sql += fpdpci
        sql += "%\'"
        c.execute(sql) 

        rows = c.fetchall() 

        for row in rows: 
                print(row) 

        return rows 
#end of searchfunkodpci

def searchFunkoGenre(fpgenre): 
    sql = "SELECT * FROM funkopop WHERE fp_Genre LIKE \'%"
    sql += fpgenre
    sql += "%\'"
    c.execute(sql) 
    
    rows = c.fetchall() 

    for row in rows: 
        print(row) 

    return rows 
#end of searchfunkogenre

def searchFunkoVariant(fpvariant):
    sql = "SELECT * FROM funkopop WHERE fp_Variants LIKE \'%"
    sql += fpvariant
    sql += "%\'"
    c.execute(sql) 
    
    rows = c.fetchall() 

    for row in rows: 
        print(row) 

    return rows 
#end of searchfunkovariant





#---VIEW_EXISTING_ORDER---# 
def ViewOrder(veo):
    # 1.Order_id \n 
    # 2.Region
    # 3.CustomerID 
    # 4.Order_date \n 
    # 5.Quantity
    if veo == '1':
        o_id = raw_input("Please enter the Order_id: ") 
        sql = "SELECT * FROM orders WHERE o_Orderid LIKE \'%"
        sql += o_id 
        sql += "%\'"
        c.execute(sql) 
    
        rows = c.fetchall() 

        for row in rows: 
            print(row) 

            return rows 

    elif veo == '2':
        o_region = raw_input("Please enter the region: ")
        sql = "SELECT * FROM customer WHERE c_regionkey LIKE \'%"
        sql += o_region
        sql += "%\'"
        c.execute(sql) 
    
        rows = c.fetchall() 

        for row in rows: 
            print(row) 

        return rows 

    elif veo == '3': 
        print("Orders will be displayed by: orderid | Quantity | DPCI | Orderdate")
        o_customerid = raw_input("Please enter the customerid: ")
        sql = "SELECT * FROM orders WHERE o_customerid =  \'"
        sql += o_customerid
        sql += "\'"
        c.execute(sql) 
    
        rows = c.fetchall() 

        for row in rows: 
            print(row) 

        return rows
    
    elif veo == '4': 
        print("yugioh")
        o_orderdate = raw_input("Please enter the orderdate: ")
        sql = "SELECT * FROM orders WHERE o_orderdate LIKE  \'"
        sql += o_orderdate
        sql += "\'"
        c.execute(sql) 
    
        rows = c.fetchall() 

        for row in rows: 
            print(row) 

        return rows
      # elif veo == '5':


def main():
    #calls connect function 
    connect(datapath)

    choice = raw_input("Hi! How may I help you? \n 1.Create Order \n 2.Search FunkoPop \n 3.View Existing Order Details \n ")
    print ("Option "+ choice + " was selected \n")
    
    #CREATEORDER CALL 
    if choice == '1': #choice is a string so must match with string result 
        #if 1 is chosen ask for item name, quantity, address, other credentials 
        createOrder() 

    #SEARCH CALL(S)     
    elif choice == '2': 
        #if 2 is chosen ask for funko pop name or ask to search through DPCI 
        n_dpci = raw_input("How will you search? \n 1.Name \n 2.DPCI \n 3.Genre \n 4.Variant \nPlease enter # of choice:  ")
        print("You have select option " + n_dpci + "\n")

        if n_dpci == '1':
            fpname = raw_input("Please enter the name of the funkopop \n")
            searchFunkoName(fpname)

        elif n_dpci == '2':
            fpdpci = raw_input("Please enter the DPCI of the funkopop \n")
            searchFunkoDPCI(fpdpci) 

        elif n_dpci =='3':
            fpgenre = raw_input("Please enter the genre of the funkopop \n")
            searchFunkoGenre(fpgenre)

        elif n_dpci == '4':
            fpvariant = raw_input("Please enter the variant of the funkopop \n")
            searchFunkoVariant(fpvariant)

    #View Existing Order (veo) calls 
    elif choice =='3': 
        veo = raw_input("How will you search? \n 1.Order_id \n 2.Region \n 3.CustomerID \n 4.Order_date \n 5.Quantit \n") 
        print("You have selected " + veo + " \n")
        ViewOrder(veo)

         




     
    #end of main function
main() 

