.class public Ljavax/tools/ForwardingJavaFileManager;
.super Ljava/lang/Object;
.source "ForwardingJavaFileManager.java"

# interfaces
.implements Ljavax/tools/JavaFileManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljavax/tools/JavaFileManager;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/tools/JavaFileManager;"
    }
.end annotation


# instance fields
.field protected final fileManager:Ljavax/tools/JavaFileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavax/tools/JavaFileManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iput-object p1, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0}, Ljavax/tools/JavaFileManager;->close()V

    .line 165
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0}, Ljavax/tools/JavaFileManager;->flush()V

    .line 161
    return-void
.end method

.method public getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .registers 3

    .line 63
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Ljavax/tools/JavaFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/tools/JavaFileManager;->getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;

    move-result-object v0

    return-object v0
.end method

.method public getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/tools/JavaFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    return-object v0
.end method

.method public getJavaFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Ljavax/tools/JavaFileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/tools/JavaFileManager;->getJavaFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/tools/JavaFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasLocation(Ljavax/tools/JavaFileManager$Location;)Z
    .registers 3

    .line 102
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Ljavax/tools/JavaFileManager;->hasLocation(Ljavax/tools/JavaFileManager$Location;)Z

    move-result v0

    return v0
.end method

.method public inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;
    .registers 4

    .line 83
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileManager;->inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z
    .registers 4

    .line 90
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileManager;->isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z

    move-result v0

    return v0
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .registers 3

    .line 106
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Ljavax/tools/JavaFileManager;->isSupportedOption(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;Z)",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileManager;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/tools/JavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
