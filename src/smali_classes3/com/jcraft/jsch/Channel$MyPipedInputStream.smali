.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPipedInputStream"
.end annotation


# instance fields
.field private DW:I

.field final FH:Lcom/jcraft/jsch/Channel;

.field private j6:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;I)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->FH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    new-array p1, p2, [B

    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->FH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    new-array p1, p3, [B

    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    return-void
.end method

.method private DW()I
    .registers 4

    iget v0, p0, Ljava/io/PipedInputStream;->out:I

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    goto :goto_13

    :cond_a
    if-ge v1, v0, :cond_15

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    goto :goto_16

    :cond_13
    :goto_13
    sub-int/2addr v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method


# virtual methods
.method public j6()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->available()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1d

    aput-byte v0, v1, v2

    :try_start_18
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6(I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW()I

    move-result v0

    if-ge v0, p1, :cond_79

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    :goto_e
    sub-int v2, v0, v1

    if-lt v2, p1, :cond_76

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_8e

    if-le v0, v2, :cond_17

    move v0, v2

    :cond_17
    sub-int v1, v0, v1

    if-ge v1, p1, :cond_1d

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    new-array p1, v0, [B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2f

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_73

    :cond_2f
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ge v1, v2, :cond_60

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_73

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    goto :goto_73

    :cond_60
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_73

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    :cond_73
    :goto_73
    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    goto :goto_8c

    :cond_76
    mul-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_79
    iget-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length p1, p1

    if-ne p1, v0, :cond_8c

    iget p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    if-le v0, p1, :cond_8c

    div-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_87

    goto :goto_88

    :cond_87
    move p1, v0

    :goto_88
    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B
    :try_end_8c
    .catchall {:try_start_1d .. :try_end_8c} :catchall_8e

    :cond_8c
    :goto_8c
    monitor-exit p0

    return-void

    :catchall_8e
    move-exception p1

    monitor-exit p0

    goto :goto_92

    :goto_91
    throw p1

    :goto_92
    goto :goto_91
.end method
