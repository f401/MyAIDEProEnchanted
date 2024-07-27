.class public Lcom/sun/tools/javac/api/WrappingJavaFileManager;
.super Ljavax/tools/ForwardingJavaFileManager;
.source "WrappingJavaFileManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljavax/tools/JavaFileManager;",
        ">",
        "Ljavax/tools/ForwardingJavaFileManager",
        "<TM;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljavax/tools/JavaFileManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Ljavax/tools/ForwardingJavaFileManager;-><init>(Ljavax/tools/JavaFileManager;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-super {p0, p1, p2, p3}, Ljavax/tools/ForwardingJavaFileManager;->getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

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

    .line 201
    invoke-virtual {p0, p4}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Ljavax/tools/ForwardingJavaFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

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

    .line 162
    invoke-super {p0, p1, p2, p3}, Ljavax/tools/ForwardingJavaFileManager;->getJavaFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

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

    .line 176
    invoke-virtual {p0, p4}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Ljavax/tools/ForwardingJavaFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;
    .registers 4

    .line 149
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->unwrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljavax/tools/ForwardingJavaFileManager;->inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Ljavax/tools/ForwardingJavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected unwrap(Ljava/net/URI;)Ljava/net/URI;
    .registers 2

    .line 130
    return-object p1
.end method

.method protected unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 2

    .line 94
    return-object p1
.end method

.method protected unwrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 3

    .line 106
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    return-object v0
.end method

.method protected wrap(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 119
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 2

    .line 72
    return-object p1
.end method

.method protected wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/api/WrappingJavaFileManager;->wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    return-object v0
.end method
