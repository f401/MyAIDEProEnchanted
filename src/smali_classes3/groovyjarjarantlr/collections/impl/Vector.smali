.class public Lgroovyjarjarantlr/collections/impl/Vector;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected DW:I

.field protected j6:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/collections/impl/Vector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public DW(I)V
    .registers 5

    monitor-enter p0

    add-int/lit8 p1, p1, 0x1

    :try_start_3
    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_18

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_e

    goto :goto_f

    :cond_e
    move p1, v1

    :goto_f
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public DW(Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    iget v1, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    aput-object p1, v0, v1

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/Vector;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_19

    invoke-virtual {p0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    invoke-virtual {p0}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :catch_19
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "cannot clone Vector.super"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(I)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_23

    if-ltz p1, :cond_c

    aget-object p1, v0, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_40

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " < 0 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j6()Ljava/util/Enumeration;
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Lgroovyjarjarantlr/collections/impl/VectorEnumerator;

    invoke-direct {v0, p0}, Lgroovyjarjarantlr/collections/impl/VectorEnumerator;-><init>(Lgroovyjarjarantlr/collections/impl/Vector;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Ljava/lang/Object;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p2, v1, :cond_10

    aput-object p1, v0, p2

    iget p1, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    if-le p2, p1, :cond_e

    iput p2, p0, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2d

    :cond_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
