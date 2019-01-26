import os , shutil

def move_file( file_name ):
    ext = os.path.splitext(file_name)[1]
    if os.path.isdir(ext):
        shutil.move(file_name, ext)
    else:
        os.mkdir(ext)
        shutil.move(file_name, ext)

def organize_files(path):
    try:
        os.chdir(path)
    except:
        print("Path not valid")
    files = os.listdir(path)
    for f in files:
        if not os.path.isdir(f):
            move_file(f)

if __name__=="__main__":
    organize_files("/home/diego/Downloads/")
