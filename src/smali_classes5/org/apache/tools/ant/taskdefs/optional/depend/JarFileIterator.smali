.class public Lorg/apache/tools/ant/taskdefs/optional/depend/JarFileIterator;
.super Ljava/lang/Object;
.source "JarFileIterator.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;


# instance fields
.field private jarStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/JarFileIterator;->jarStream:Ljava/util/zip/ZipInputStream;

    .line 45
    return-void
.end method


# virtual methods
.method public getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
    .registers 5

    .line 55
    const/4 v0, 0x0

    .line 58
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/JarFileIterator;->jarStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 60
    :goto_7
    if-nez v0, :cond_69

    if-eqz v1, :cond_69

    .line 61
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 66
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;-><init>()V

    .line 68
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/JarFileIterator;->jarStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->read(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_28

    goto :goto_7

    .line 75
    :catch_28
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v1, :cond_4b

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem reading JAR file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_62
    :try_start_62
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/JarFileIterator;->jarStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_28

    move-result-object v1

    goto :goto_7

    .line 84
    :cond_69
    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$_CC;->$default$iterator(Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
