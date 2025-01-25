.class public final Lc/ae;
.super Lc/o;
.source "SourceFile"


# instance fields
.field public o:[Lc/o;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lc/o;-><init>([B)V

    return-void
.end method

.method public constructor <init>([Lc/o;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p1

    if-eq v1, v2, :cond_4f

    :try_start_9
    aget-object v2, p1, v1

    check-cast v2, Lc/az;

    .line 2
    iget-object v2, v2, Lc/o;->a:[B

    .line 3
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_12} :catch_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_15
    move-exception p1

    .line 4
    const-string v0, "exception converting octets "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found in input should only contain DEROctetString"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lc/o;-><init>([B)V

    iput-object p1, p0, Lc/ae;->o:[Lc/o;

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 4

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p0}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e;

    invoke-virtual {p1, v1}, Lc/q;->j(Lc/e;)V

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    return-void
.end method

.method public final f()I
    .registers 4

    invoke-virtual {p0}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e;

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/s;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_1b
    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final k()[B
    .registers 2

    iget-object v0, p0, Lc/o;->a:[B

    return-object v0
.end method

.method public final p()Ljava/util/Enumeration;
    .registers 8

    iget-object v0, p0, Lc/ae;->o:[Lc/o;

    if-nez v0, :cond_2d

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    iget-object v3, p0, Lc/o;->a:[B

    array-length v4, v3

    if-ge v2, v4, :cond_28

    add-int/lit16 v4, v2, 0x3e8

    array-length v5, v3

    if-le v4, v5, :cond_17

    array-length v5, v3

    goto :goto_18

    :cond_17
    move v5, v4

    :goto_18
    sub-int/2addr v5, v2

    new-array v6, v5, [B

    invoke-static {v3, v2, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lc/az;

    invoke-direct {v2, v6}, Lc/az;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v4

    goto :goto_b

    .line 2
    :cond_28
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_2d
    new-instance v0, Lc/af;

    invoke-direct {v0, p0}, Lc/af;-><init>(Lc/ae;)V

    return-object v0
.end method
