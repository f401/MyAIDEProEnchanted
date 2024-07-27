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
    .registers 6

    .line 24
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->classPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->getClassFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public loadClassFileData(Ljava/lang/String;)[B
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;->getClassFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [B

    goto :goto_0
.end method
