.class public Lcom/tencent/mm/util/ExtDataOutput;
.super Lcom/tencent/mm/util/DataOutputDelegate;


# direct methods
.method public constructor <init>(Ljava/io/DataOutput;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/mm/util/DataOutputDelegate;-><init>(Ljava/io/DataOutput;)V

    return-void
.end method


# virtual methods
.method public writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/util/ExtDataInput;",
            "I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p2, [B

    invoke-virtual {p1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readFully([B)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/util/ExtDataOutput;->write([B)V

    return-void
.end method

.method public writeCheckByte(BB)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/mm/util/ExtDataOutput;->writeByte(I)V

    if-eq p1, p2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected: 0x%08x, got: 0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, p2}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, p1}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public writeCheckChunkTypeInt(Lcom/tencent/mm/util/ExtDataInput;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/util/ExtDataInput;",
            "II)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    if-ne v0, p3, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeCheckChunkTypeInt(Lcom/tencent/mm/util/ExtDataInput;II)V

    :cond_0
    return-void

    :cond_1
    if-eq v0, p2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected: 0x%08x, got: 0x%08x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeCheckInt(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    if-eq p1, p2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected: 0x%08x, got: 0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public writeCheckShort(SS)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/mm/util/ExtDataOutput;->writeShort(I)V

    if-eq p1, p2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected: 0x%08x, got: 0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p2}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, p1}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public writeIntArray([I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
