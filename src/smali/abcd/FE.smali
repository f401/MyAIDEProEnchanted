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

    const/4 v2, 0x0

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public abstract DW()J
.end method

.method public DW(I)[B
    .registers 8

    invoke-virtual {p0}, Labcd/FE;->Hw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/FE;->j6()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Labcd/JE;->j6()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    long-to-int v0, v2

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, v0

    invoke-static {v1, v0, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Labcd/cD$c;

    invoke-direct {v2, v0}, Labcd/cD$c;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    :try_start_4
    new-instance v0, Labcd/cD$a;

    invoke-direct {v0}, Labcd/cD$a;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Labcd/cD$b;

    invoke-direct {v0, v4, v5, v2, v3}, Labcd/cD$b;-><init>(JJ)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public abstract FH()I
.end method

.method public abstract Hw()Z
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 10

    invoke-virtual {p0}, Labcd/FE;->Hw()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Labcd/JE;->j6()J

    move-result-wide v4

    const/16 v0, 0x2000

    new-array v3, v0, [B

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v0, v6

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p0}, Labcd/FE;->j6()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public abstract j6()[B
.end method

.method public final j6(I)[B
    .registers 4

    invoke-virtual {p0, p1}, Labcd/FE;->DW(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Labcd/FE;->j6([B)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/cD$c;

    invoke-direct {v1, v0}, Labcd/cD$c;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method public abstract v5()Labcd/JE;
.end method
