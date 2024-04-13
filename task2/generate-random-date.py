def write_in_file(path, value):
    f = open(path, "w")
    f.write(value)
    f.close()

queryStringWithoutIndex  = """
CREATE TABLE Task2WithoutIndex (
    ID INT,
    fname NVARCHAR(MAX),
    cu_date DATETIME2
);
"""; 

queryStringWithIndex  = """
CREATE TABLE Task2WithIndex  (
    ID INT,
    fname NVARCHAR(MAX),
    cu_date DATETIME2,
    INDEX fname_index NONCLUSTERED (fname)
);
"""; 

for x in range(40000):
    queryStringWithoutIndex+= f"""
INSERT INTO Task2WithoutIndex (ID, fname, cu_date) VALUES ({x + 1}, 'fname-{x}', GETDATE());"""
    queryStringWithIndex+= f"""
INSERT INTO Task2WithIndex (ID, fname, cu_date) VALUES ({x + 1}, 'fname-{x}', GETDATE());"""


write_in_file("query-with-index.sql", queryStringWithIndex);
write_in_file("query-without-index.sql", queryStringWithoutIndex);