.class public Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;
.super Ljava/lang/Object;
.source "ClassFileByFileSystem.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/ClassFile;


# static fields
.field private static final classSuffix:Ljava/lang/String; = ".class"


# instance fields
.field private classPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->classPath:Ljava/lang/String;

    return-void
.end method

.method private getClassFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 24
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->classPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public hasClassFile(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->getClassFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public loadClassFileData(Ljava/lang/String;)[B
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->getClassFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 33
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_19
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, [B

    return-object p1
.end method
