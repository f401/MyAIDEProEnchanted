.class public Lorg/codehaus/groovy/syntax/ReadException;
.super Lorg/codehaus/groovy/GroovyException;


# instance fields
.field private final DW:Ljava/io/IOException;


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/ReadException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_12
    iget-object v0, p0, Lorg/codehaus/groovy/syntax/ReadException;->DW:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method
