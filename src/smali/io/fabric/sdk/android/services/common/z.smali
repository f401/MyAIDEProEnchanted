.class public Lio/fabric/sdk/android/services/common/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/z$a;,
        Lio/fabric/sdk/android/services/common/z$b;
    }
.end annotation


# static fields
.field private static final j6:Ljava/util/logging/Logger;


# instance fields
.field private final DW:Ljava/io/RandomAccessFile;

.field FH:I

.field private Hw:I

.field private final VH:[B

.field private Zo:Lio/fabric/sdk/android/services/common/z$a;

.field private v5:Lio/fabric/sdk/android/services/common/z$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/z;->j6:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/z;->j6(Ljava/io/File;)V

    :cond_0
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/z;->v5()V

    return-void
.end method

.method private DW(I)Lio/fabric/sdk/android/services/common/z$a;
    .registers 6

    if-nez p1, :cond_0

    sget-object v0, Lio/fabric/sdk/android/services/common/z$a;->j6:Lio/fabric/sdk/android/services/common/z$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lio/fabric/sdk/android/services/common/z$a;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    goto :goto_0
.end method

.method private static DW(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static DW(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(I[BII)V
    .registers 11

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int v2, v0, p4

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_0
    return-void

    :cond_0
    sub-int/2addr v1, v0

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    add-int v2, p3, v1

    sub-int v1, p4, v1

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0
.end method

.method private static DW([BII)V
    .registers 5

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method private FH(I)V
    .registers 6

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private Hw(I)I
    .registers 4

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    if-ge p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 v1, p1, 0x10

    sub-int p1, v1, v0

    goto :goto_0
.end method

.method private Zo()I
    .registers 3

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/z;I)I
    .registers 3

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    return v0
.end method

.method private static j6([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/z;)Ljava/io/RandomAccessFile;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private j6(I)V
    .registers 10

    add-int/lit8 v2, p1, 0x4

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/z;->Zo()I

    move-result v0

    if-lt v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    :goto_1
    add-int/2addr v0, v1

    shl-int/lit8 v7, v1, 0x1

    if-lt v0, v2, :cond_4

    invoke-direct {p0, v7}, Lio/fabric/sdk/android/services/common/z;->FH(I)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v1, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v1, v1, 0x4

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v1, v1, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v0, v0, -0x4

    int-to-long v4, v0

    const-wide/16 v2, 0x10

    move-object v6, v1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v1, v1, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    if-ge v0, v1, :cond_3

    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x10

    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    invoke-direct {p0, v7, v2, v1, v0}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    new-instance v1, Lio/fabric/sdk/android/services/common/z$a;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v2, v2, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    invoke-direct {v1, v0, v2}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    :goto_2
    iput v7, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Copied insufficient number of bytes!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    invoke-direct {p0, v7, v2, v1, v0}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    goto :goto_2

    :cond_4
    move v1, v7

    goto :goto_1
.end method

.method private j6(IIII)V
    .registers 9

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/z;->j6([B[I)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method private j6(I[BII)V
    .registers 11

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int v2, v0, p4

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_0
    return-void

    :cond_0
    sub-int/2addr v1, v0

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    add-int v2, p3, v1

    sub-int v1, p4, v1

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/z;I[BII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lio/fabric/sdk/android/services/common/z;->j6(I[BII)V

    return-void
.end method

.method private static j6(Ljava/io/File;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v2

    const-wide/16 v4, 0x1000

    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/common/z;->j6([B[I)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Rename failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x1000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static varargs j6([B[I)V
    .registers 6

    const/4 v1, 0x0

    array-length v3, p1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/z;->DW([BII)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v5()V
    .registers 5

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    int-to-long v0, v0

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v1

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->DW(I)Lio/fabric/sdk/android/services/common/z$a;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/z;->DW(I)Lio/fabric/sdk/android/services/common/z$a;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File is truncated. Expected length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Actual length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public DW()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public FH()V
    .registers 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->j6()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v1, v1, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lio/fabric/sdk/android/services/common/z;->j6(I[BII)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v1

    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    iget v3, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v4, v4, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    invoke-direct {p0, v2, v3, v0, v4}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    new-instance v2, Lio/fabric/sdk/android/services/common/z$a;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    iput-object v2, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public Hw()I
    .registers 4

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    if-nez v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v1, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v2, v2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x4

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v1

    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public close()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()V
    .registers 6

    const/16 v4, 0x1000

    monitor-enter p0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    sget-object v0, Lio/fabric/sdk/android/services/common/z$a;->j6:Lio/fabric/sdk/android/services/common/z$a;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    sget-object v0, Lio/fabric/sdk/android/services/common/z$a;->j6:Lio/fabric/sdk/android/services/common/z$a;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    if-le v0, v4, :cond_0

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->FH(I)V

    :cond_0
    const/16 v0, 0x1000

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Lio/fabric/sdk/android/services/common/z$c;)V
    .registers 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->DW(I)Lio/fabric/sdk/android/services/common/z$a;

    move-result-object v0

    new-instance v2, Lio/fabric/sdk/android/services/common/z$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lio/fabric/sdk/android/services/common/z$b;-><init>(Lio/fabric/sdk/android/services/common/z;Lio/fabric/sdk/android/services/common/z$a;Lio/fabric/sdk/android/services/common/y;)V

    iget v3, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    invoke-interface {p1, v2, v3}, Lio/fabric/sdk/android/services/common/z$c;->j6(Ljava/io/InputStream;I)V

    iget v2, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/common/z;->j6([BII)V

    return-void
.end method

.method public j6([BII)V
    .registers 10

    monitor-enter p0

    :try_start_0
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/common/z;->j6(I)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    :goto_0
    new-instance v2, Lio/fabric/sdk/android/services/common/z$a;

    invoke-direct {v2, v0, p3}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, p3}, Lio/fabric/sdk/android/services/common/z;->DW([BII)V

    iget v0, v2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v0, v3, v4, v5}, Lio/fabric/sdk/android/services/common/z;->DW(I[BII)V

    iget v0, v2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lio/fabric/sdk/android/services/common/z;->DW(I[BII)V

    if-eqz v1, :cond_2

    iget v0, v2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    :goto_1
    iget v3, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    iget v4, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    invoke-direct {p0, v3, v4, v0, v5}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    iput-object v2, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v2, v2, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(II)Z
    .registers 4

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "fileLength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", first="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", last="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", element lengths=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v0, Lio/fabric/sdk/android/services/common/y;

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/common/y;-><init>(Lio/fabric/sdk/android/services/common/z;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "]]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lio/fabric/sdk/android/services/common/z;->j6:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
