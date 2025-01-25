.class public Ljavax/tools/SimpleJavaFileObject;
.super Ljava/lang/Object;
.source "SimpleJavaFileObject.java"

# interfaces
.implements Ljavax/tools/JavaFileObject;


# instance fields
.field protected final kind:Ljavax/tools/JavaFileObject$Kind;

.field protected final uri:Ljava/net/URI;


# direct methods
.method protected constructor <init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 68
    iput-object p1, p0, Ljavax/tools/SimpleJavaFileObject;->uri:Ljava/net/URI;

    .line 69
    iput-object p2, p0, Ljavax/tools/SimpleJavaFileObject;->kind:Ljavax/tools/JavaFileObject$Kind;

    .line 70
    return-void

    .line 67
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI must have a path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessLevel()Ljavax/lang/model/element/Modifier;
    .registers 2

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 173
    iget-object v0, p0, Ljavax/tools/SimpleJavaFileObject;->kind:Ljavax/tools/JavaFileObject$Kind;

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 155
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 77
    invoke-virtual {p0}, Ljavax/tools/SimpleJavaFileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .registers 2

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 7

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Ljavax/tools/SimpleJavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/tools/JavaFileObject$Kind;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 193
    invoke-virtual {p0}, Ljavax/tools/SimpleJavaFileObject;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 194
    invoke-virtual {p0}, Ljavax/tools/SimpleJavaFileObject;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_48
    const/4 v0, 0x1

    .line 192
    :goto_49
    return v0

    .line 194
    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Ljavax/tools/SimpleJavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_28

    .line 115
    instance-of v0, v1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1e

    move-object v0, v1

    .line 116
    check-cast v0, Ljava/nio/CharBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 118
    new-instance v1, Ljava/io/CharArrayReader;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    move-object v0, v1

    .line 120
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/io/StringReader;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    .line 114
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljavax/tools/SimpleJavaFileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/tools/SimpleJavaFileObject;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    .line 73
    iget-object v0, p0, Ljavax/tools/SimpleJavaFileObject;->uri:Ljava/net/URI;

    return-object v0
.end method
