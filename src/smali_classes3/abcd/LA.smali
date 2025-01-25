.class public Labcd/LA;
.super Ljava/lang/Object;


# static fields
.field static j6:Labcd/tA;


# instance fields
.field public DW:Ljava/lang/String;

.field FH:Ljava/io/RandomAccessFile;

.field Hw:J

.field VH:Labcd/HA;

.field Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;"
        }
    .end annotation
.end field

.field v5:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput v0, p0, Labcd/LA;->v5:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Labcd/LA;->Zo:Ljava/util/Map;

    iput-object p1, p0, Labcd/LA;->DW:Ljava/lang/String;

    new-instance p1, Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/LA;->DW:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/LA;->Hw:J

    return-void
.end method

.method private static Zo()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/LA;->j6:Labcd/tA;

    if-nez v0, :cond_10

    const-class v0, Labcd/LA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/LA;->j6:Labcd/tA;

    :cond_10
    sget-object v0, Labcd/LA;->j6:Labcd/tA;

    return-object v0
.end method

.method public static j6(Ljava/lang/String;)Labcd/LA;
    .registers 2

    new-instance v0, Labcd/LA;

    invoke-direct {v0, p0}, Labcd/LA;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Labcd/LA;->v5()V

    return-object v0
.end method

.method private v5()V
    .registers 8

    const/16 v0, 0x100

    :try_start_2
    invoke-virtual {p0, v0}, Labcd/LA;->FH(I)J

    move-result-wide v0

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p0}, Labcd/HA;->j6(Labcd/LA;)Labcd/HA;

    move-result-object v0

    iput-object v0, p0, Labcd/LA;->VH:Labcd/HA;

    invoke-static {}, Labcd/LA;->Zo()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    invoke-static {}, Labcd/LA;->Zo()Labcd/tA;

    move-result-object v2

    const-string v3, "EOCD found in %d iterations"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Labcd/LA;->v5:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    invoke-static {}, Labcd/LA;->Zo()Labcd/tA;

    move-result-object v2

    const-string v3, "Directory entries=%d, size=%d, offset=%d/0x%08x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Labcd/LA;->VH:Labcd/HA;

    iget-short v6, v6, Labcd/HA;->Zo:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Labcd/LA;->VH:Labcd/HA;

    iget v6, v6, Labcd/HA;->VH:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Labcd/LA;->VH:Labcd/HA;

    iget v4, v4, Labcd/HA;->gn:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iget-object v4, p0, Labcd/LA;->VH:Labcd/HA;

    iget v4, v4, Labcd/HA;->gn:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    invoke-static {}, Labcd/LA;->Zo()Labcd/tA;

    move-result-object v2

    invoke-static {v2}, Labcd/MA;->j6(Labcd/tA;)V

    :cond_75
    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Labcd/LA;->VH:Labcd/HA;

    iget v3, v3, Labcd/HA;->gn:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_7f
    iget-object v2, p0, Labcd/LA;->VH:Labcd/HA;

    iget-short v2, v2, Labcd/HA;->Zo:S

    if-ge v1, v2, :cond_a2

    invoke-static {p0}, Labcd/IA;->j6(Labcd/LA;)Labcd/IA;

    move-result-object v2

    iget-object v3, p0, Labcd/LA;->Zo:Ljava/util/Map;

    invoke-virtual {v2}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_9b

    invoke-static {}, Labcd/LA;->Zo()Labcd/tA;

    move-result-object v3

    invoke-static {v3, v2}, Labcd/MA;->j6(Labcd/tA;Labcd/IA;)V
    :try_end_9b
    .catchall {:try_start_2 .. :try_end_9b} :catchall_9e

    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :catchall_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a2
    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-object v0, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public DW(I)Ljava/lang/String;
    .registers 5

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_10

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public FH()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_12

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method public FH(I)J
    .registers 9

    int-to-long v0, p1

    iget-wide v2, p0, Labcd/LA;->Hw:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_56

    const/high16 v4, 0x10000

    if-gt p1, v4, :cond_56

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Labcd/LA;->Hw:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v1, v1, -0x16

    :goto_22
    if-ltz v1, :cond_4f

    iget v2, p0, Labcd/LA;->v5:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/LA;->v5:I

    aget-byte v2, v0, v1

    const/16 v3, 0x50

    if-ne v2, v3, :cond_4c

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_4c

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v0, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4c

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4c

    iget-wide v2, p0, Labcd/LA;->Hw:J

    sub-long/2addr v2, v5

    int-to-long v0, v1

    add-long/2addr v2, v0

    return-wide v2

    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_4f
    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Labcd/LA;->FH(I)J

    move-result-wide v0

    return-wide v0

    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End of central directory not found in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/LA;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_70

    :goto_6f
    throw v0

    :goto_70
    goto :goto_6f
.end method

.method public Hw()S
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_13

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method public j6()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/IA;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/LA;->Zo:Ljava/util/Map;

    return-object v0
.end method

.method public j6(J)V
    .registers 4

    iget-object v0, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public j6(I)[B
    .registers 5

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_10

    iget-object v2, p0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return-object v0
.end method
