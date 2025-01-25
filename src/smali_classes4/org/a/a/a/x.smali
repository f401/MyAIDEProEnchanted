.class public Lorg/a/a/a/x;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2a

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_e
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v0, :cond_2c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1e
    if-ltz v2, :cond_24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v0, -0x1

    goto :goto_e

    :cond_2c
    move v0, v1

    goto :goto_1e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_5e

    const-string v0, "4.7.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "4.7.2"

    invoke-static {v0}, Lorg/a/a/a/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/a/a/a/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    move v0, v1

    :goto_1e
    const-string v3, "4.7.2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string v3, "4.7.2"

    invoke-static {v3}, Lorg/a/a/a/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/a/a/a/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    move v3, v1

    :goto_37
    if-eqz v0, :cond_48

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ANTLR Tool version %s used for code generation does not match the current runtime version %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const-string v6, "4.7.2"

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_48
    if-eqz v3, :cond_59

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v2, "4.7.2"

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_59
    return-void

    :cond_5a
    move v0, v2

    goto :goto_1e

    :cond_5c
    move v3, v2

    goto :goto_37

    :cond_5e
    move v0, v2

    goto :goto_1e
.end method
