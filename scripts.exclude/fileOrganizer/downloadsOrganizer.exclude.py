import os , shutil , re

def detect_file_extensions(path):
    '''
    path(string): path if the directory we wanna get the file extension from. 

    Returns: The file extension on path.
    '''
    try:
        os.chdir(path)
    except:
        print("Tu eres tonto")
    ext = os.listdir(path)
    print(ext)

if __name__=="__main__":
    detect_file_extensions("/home/diego/Downloads")

