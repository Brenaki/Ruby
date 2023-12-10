# Create Binary File
def createFile()
    file = File.new("test.bin", "wb+")
    file.syswrite("Hello!")
    file.close();
end

# Read Binary File
def readFile()
    file = File.open("test.bin", "rb")
    puts(file.sysread(6))
    file.close()
end

# Rename Binary File
def renameFile()
    File.rename("test.bin", "words.bin")
end

# Delete Binary File
def deleteFile()
    File.delete("words.bin")
end

# Main
createFile()
readFile()
renameFile()
system("pause")
deleteFile()