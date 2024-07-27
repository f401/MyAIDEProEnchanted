.class public Labcd/JA;
.super Ljava/io/InputStream;


# instance fields
.field DW:I

.field FH:I

.field Hw:Labcd/tA;

.field VH:Ljava/io/OutputStream;

.field Zo:Z

.field j6:Ljava/io/RandomAccessFile;

.field v5:Z


# direct methods
.method public constructor <init>(Labcd/IA;)V
    .registers 9

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v6, p0, Labcd/JA;->Zo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    const-class v0, Labcd/JA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    iput-object v0, p0, Labcd/JA;->Hw:Labcd/tA;

    iget-object v0, p0, Labcd/JA;->Hw:Labcd/tA;

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    iput-boolean v0, p0, Labcd/JA;->v5:Z

    iput v6, p0, Labcd/JA;->FH:I

    invoke-virtual {p1}, Labcd/IA;->j6()I

    move-result v0

    iput v0, p0, Labcd/JA;->DW:I

    invoke-virtual {p1}, Labcd/IA;->aM()Labcd/LA;

    move-result-object v0

    iget-object v0, v0, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/IA;->gn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Labcd/JA;->v5:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v1, "Seeking to %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/IA;->gn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/IA;->gn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Labcd/IA;->Mr()V

    goto :goto_0
.end method

.method private j6([BII)I
    .registers 11

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget v1, p0, Labcd/JA;->DW:I

    iget v2, p0, Labcd/JA;->FH:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    iget-boolean v1, p0, Labcd/JA;->Zo:Z

    if-eqz v1, :cond_0

    iput-boolean v6, p0, Labcd/JA;->Zo:Z

    aput-byte v6, p1, p2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/JA;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v2, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_2
    iget v2, p0, Labcd/JA;->FH:I

    add-int/2addr v2, v1

    iput v2, p0, Labcd/JA;->FH:I

    :cond_3
    iget-boolean v2, p0, Labcd/JA;->v5:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v3, "Read %d bytes for read(b,%d,%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .registers 8

    const/4 v0, 0x1

    iget v1, p0, Labcd/JA;->DW:I

    iget v2, p0, Labcd/JA;->FH:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Labcd/JA;->v5:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v3, "Available = %d"

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v2, p0, Labcd/JA;->Zo:Z

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/JA;->Zo:Z

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Labcd/JA;->DW:I

    iget v2, p0, Labcd/JA;->FH:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-boolean v1, p0, Labcd/JA;->Zo:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Labcd/JA;->Zo:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    iget-boolean v1, p0, Labcd/JA;->v5:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v2, "Read 1 byte"

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_4
    iget v1, p0, Labcd/JA;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/JA;->FH:I

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Labcd/JA;->v5:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v2, "Read 0 bytes"

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Labcd/JA;->j6([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/JA;->j6([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .registers 10

    invoke-virtual {p0}, Labcd/JA;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-boolean v2, p0, Labcd/JA;->v5:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v3, "Skipped %d bytes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method
