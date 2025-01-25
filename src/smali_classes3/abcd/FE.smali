.class public abstract Labcd/FE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/FE$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6([B)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public abstract DW()J
.end method

.method public DW(I)[B
    .registers 7

    invoke-virtual {p0}, Labcd/FE;->Hw()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Labcd/FE;->j6()[B

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    :try_start_f
    invoke-virtual {v0}, Labcd/JE;->j6()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_3d

    int-to-long v3, p1

    cmp-long p1, v3, v1

    if-ltz p1, :cond_37

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v3, v1

    if-ltz p1, :cond_31

    long-to-int p1, v1

    :try_start_20
    new-array v1, p1, [B
    :try_end_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_22} :catch_2a
    .catchall {:try_start_20 .. :try_end_22} :catchall_3d

    const/4 v2, 0x0

    :try_start_23
    invoke-static {v0, v1, v2, p1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3d

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catch_2a
    move-exception p1

    :try_start_2b
    new-instance v1, Labcd/cD$c;

    invoke-direct {v1, p1}, Labcd/cD$c;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1

    :cond_31
    new-instance p1, Labcd/cD$a;

    invoke-direct {p1}, Labcd/cD$a;-><init>()V

    throw p1

    :cond_37
    new-instance p1, Labcd/cD$b;

    invoke-direct {p1, v3, v4, v1, v2}, Labcd/cD$b;-><init>(JJ)V

    throw p1
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public abstract FH()I
.end method

.method public abstract Hw()Z
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 10

    invoke-virtual {p0}, Labcd/FE;->Hw()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    :try_start_a
    invoke-virtual {v0}, Labcd/JE;->j6()J

    move-result-wide v1

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    :goto_14
    cmp-long v6, v4, v1

    if-ltz v6, :cond_28

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_3b

    if-gez p1, :cond_22

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_47

    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_28
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_35

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_14

    :cond_35
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1

    :cond_40
    invoke-virtual {p0}, Labcd/FE;->j6()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_47
    return-void
.end method

.method public abstract j6()[B
.end method

.method public final j6(I)[B
    .registers 3

    invoke-virtual {p0, p1}, Labcd/FE;->DW(I)[B

    move-result-object p1

    :try_start_4
    invoke-static {p1}, Labcd/FE;->j6([B)[B

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Labcd/cD$c;

    invoke-direct {v0, p1}, Labcd/cD$c;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v0
.end method

.method public abstract v5()Labcd/JE;
.end method
