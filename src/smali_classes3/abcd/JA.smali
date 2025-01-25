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
    .registers 8

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/JA;->Zo:Z

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    const-class v1, Labcd/JA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v1

    iput-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    invoke-interface {v1}, Labcd/tA;->isDebugEnabled()Z

    move-result v1

    iput-boolean v1, p0, Labcd/JA;->v5:Z

    iput v0, p0, Labcd/JA;->FH:I

    invoke-virtual {p1}, Labcd/IA;->j6()I

    move-result v1

    iput v1, p0, Labcd/JA;->DW:I

    invoke-virtual {p1}, Labcd/IA;->aM()Labcd/LA;

    move-result-object v1

    iget-object v1, v1, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/IA;->gn()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5b

    iget-boolean v1, p0, Labcd/JA;->v5:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/IA;->gn()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Seeking to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_51
    iget-object v0, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/IA;->gn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_5e

    :cond_5b
    invoke-virtual {p1}, Labcd/IA;->Mr()V

    :goto_5e
    return-void
.end method

.method private j6([BII)I
    .registers 9

    iget v0, p0, Labcd/JA;->DW:I

    iget v1, p0, Labcd/JA;->FH:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    iget-boolean p3, p0, Labcd/JA;->Zo:Z

    if-eqz p3, :cond_12

    iput-boolean v2, p0, Labcd/JA;->Zo:Z

    aput-byte v2, p1, p2

    return v1

    :cond_12
    const/4 p1, -0x1

    return p1

    :cond_14
    invoke-virtual {p0}, Labcd/JA;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_30

    iget-object v3, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    if-eqz v3, :cond_2b

    invoke-virtual {v3, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_2b
    iget p1, p0, Labcd/JA;->FH:I

    add-int/2addr p1, v0

    iput p1, p0, Labcd/JA;->FH:I

    :cond_30
    iget-boolean p1, p0, Labcd/JA;->v5:Z

    if-eqz p1, :cond_55

    iget-object p1, p0, Labcd/JA;->Hw:Labcd/tA;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const-string p2, "Read %d bytes for read(b,%d,%d)"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_55
    return v0
.end method


# virtual methods
.method public available()I
    .registers 7

    iget v0, p0, Labcd/JA;->DW:I

    iget v1, p0, Labcd/JA;->FH:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Labcd/JA;->v5:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Available = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1e
    if-nez v0, :cond_25

    iget-boolean v1, p0, Labcd/JA;->Zo:Z

    if-eqz v1, :cond_25

    return v2

    :cond_25
    return v0
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

    iget v0, p0, Labcd/JA;->DW:I

    iget v1, p0, Labcd/JA;->FH:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_11

    iget-boolean v0, p0, Labcd/JA;->Zo:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/JA;->Zo:Z

    return v0

    :cond_f
    const/4 v0, -0x1

    return v0

    :cond_11
    iget-object v0, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_32

    iget-object v1, p0, Labcd/JA;->VH:Ljava/io/OutputStream;

    if-eqz v1, :cond_20

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_20
    iget-boolean v1, p0, Labcd/JA;->v5:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v2, "Read 1 byte"

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_2b
    iget v1, p0, Labcd/JA;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/JA;->FH:I

    goto :goto_3d

    :cond_32
    iget-boolean v1, p0, Labcd/JA;->v5:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Labcd/JA;->Hw:Labcd/tA;

    const-string v2, "Read 0 bytes"

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Labcd/JA;->j6([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/JA;->j6([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 7

    invoke-virtual {p0}, Labcd/JA;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Labcd/JA;->j6:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-boolean v0, p0, Labcd/JA;->v5:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Labcd/JA;->Hw:Labcd/tA;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Skipped %d bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_2c
    return-wide p1
.end method
