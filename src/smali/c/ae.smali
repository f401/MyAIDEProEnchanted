.class public final Lc/ae;
.super Lc/o;
.source "SourceFile"


# instance fields
.field public o:[Lc/o;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lc/o;-><init>([B)V

    return-void
.end method

.method public constructor <init>([Lc/o;)V
    .locals 3

    .line 1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_0

    :try_start_0
    aget-object v0, p1, v1

    check-cast v0, Lc/az;

    .line 2
    iget-object v0, v0, Lc/o;->a:[B

    .line 3
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    const-string v1, "exception converting octets "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " found in input should only contain DEROctetString"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lc/o;-><init>([B)V

    iput-object p1, p0, Lc/ae;->o:[Lc/o;

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p0}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-virtual {p1, v0}, Lc/q;->j(Lc/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    return-void
.end method

.method public final f()I
    .locals 3

    invoke-virtual {p0}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x4

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()[B
    .locals 1

    iget-object v0, p0, Lc/o;->a:[B

    return-object v0
.end method

.method public final p()Ljava/util/Enumeration;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lc/ae;->o:[Lc/o;

    if-nez v0, :cond_2

    .line 1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    iget-object v5, p0, Lc/o;->a:[B

    array-length v2, v5

    if-ge v0, v2, :cond_1

    add-int/lit16 v2, v0, 0x3e8

    array-length v3, v5

    if-le v2, v3, :cond_0

    array-length v3, v5

    :goto_1
    sub-int/2addr v3, v0

    new-array v6, v3, [B

    invoke-static {v5, v0, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lc/az;

    invoke-direct {v0, v6}, Lc/az;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lc/af;

    invoke-direct {v0, p0}, Lc/af;-><init>(Lc/ae;)V

    goto :goto_2
.end method
