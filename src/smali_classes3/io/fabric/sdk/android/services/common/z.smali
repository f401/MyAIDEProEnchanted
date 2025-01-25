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

    if-nez v0, :cond_12

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/z;->j6(Ljava/io/File;)V

    :cond_12
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/z;->v5()V

    return-void
.end method

.method private DW(I)Lio/fabric/sdk/android/services/common/z$a;
    .registers 5

    if-nez p1, :cond_5

    sget-object p1, Lio/fabric/sdk/android/services/common/z$a;->j6:Lio/fabric/sdk/android/services/common/z$a;

    return-object p1

    :cond_5
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lio/fabric/sdk/android/services/common/z$a;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    return-object v0
.end method

.method private static DW(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static DW(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private DW(I[BII)V
    .registers 9

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result p1

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int v1, p1, p4

    if-gt v1, v0, :cond_13

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    goto :goto_2a

    :cond_13
    sub-int/2addr v0, p1

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    :goto_2a
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
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

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private FH(I)V
    .registers 5

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private Hw(I)I
    .registers 3

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    if-ge p1, v0, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_8
    return p1
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
    .registers 2

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result p0

    return p0
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

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/z;)Ljava/io/RandomAccessFile;
    .registers 1

    iget-object p0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method static synthetic j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private j6(I)V
    .registers 12

    add-int/lit8 p1, p1, 0x4

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/z;->Zo()I

    move-result v0

    if-lt v0, p1, :cond_9

    return-void

    :cond_9
    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    :cond_b
    add-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x1

    if-lt v0, p1, :cond_b

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/z;->FH(I)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, p1, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v0, v0, 0x4

    iget p1, p1, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result p1

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    if-ge p1, v0, :cond_4a

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    int-to-long v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 p1, p1, -0x4

    int-to-long v8, p1

    const-wide/16 v3, 0x10

    move-object v2, v7

    move-wide v5, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-nez p1, :cond_42

    goto :goto_4a

    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Copied insufficient number of bytes!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4a
    :goto_4a
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget p1, p1, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    if-ge p1, v0, :cond_6a

    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x10

    iget p1, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    invoke-direct {p0, v1, p1, v0, v2}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    new-instance p1, Lio/fabric/sdk/android/services/common/z$a;

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    invoke-direct {p1, v2, v0}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    goto :goto_6f

    :cond_6a
    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    invoke-direct {p0, v1, v2, v0, p1}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    :goto_6f
    iput v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    return-void
.end method

.method private j6(IIII)V
    .registers 6

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/z;->j6([B[I)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method private j6(I[BII)V
    .registers 9

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result p1

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int v1, p1, p4

    if-gt v1, v0, :cond_13

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    goto :goto_2a

    :cond_13
    sub-int/2addr v0, p1

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    :goto_2a
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/z;I[BII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lio/fabric/sdk/android/services/common/z;->j6(I[BII)V

    return-void
.end method

.method private static j6(Ljava/io/File;)V
    .registers 6

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

    move-result-object v0

    const-wide/16 v2, 0x1000

    :try_start_20
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x1000

    filled-new-array {v4, v3, v3, v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/z;->j6([B[I)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_4b

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_43

    return-void

    :cond_43
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4b
    move-exception p0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw p0
.end method

.method private static varargs j6([B[I)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_f

    aget v3, p1, v1

    invoke-static {p0, v2, v3}, Lio/fabric/sdk/android/services/common/z;->DW([BII)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method private v5()V
    .registers 6

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    int-to-long v0, v0

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_48

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

    :cond_48
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

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    :try_start_1
    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public FH()V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->j6()V

    goto :goto_43

    :cond_10
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    const/4 v2, 0x4

    add-int/2addr v0, v2

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v3, v3, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lio/fabric/sdk/android/services/common/z;->j6(I[BII)V

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/common/z;->j6([BI)I

    move-result v2

    iget v3, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    iget v4, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v5, v5, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    invoke-direct {p0, v3, v4, v0, v5}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    iget v3, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    sub-int/2addr v3, v1

    iput v3, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    new-instance v1, Lio/fabric/sdk/android/services/common/z$a;

    invoke-direct {v1, v0, v2}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4b

    :goto_43
    monitor-exit p0

    return-void

    :cond_45
    :try_start_45
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Hw()I
    .registers 5

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    const/16 v1, 0x10

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v2, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v3, v3, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    if-lt v2, v3, :cond_19

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_19
    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v2, v0

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    return v2
.end method

.method public close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->DW:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x1000

    :try_start_4
    invoke-direct {p0, v1, v0, v0, v0}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    iput v0, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    sget-object v0, Lio/fabric/sdk/android/services/common/z$a;->j6:Lio/fabric/sdk/android/services/common/z$a;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    sget-object v0, Lio/fabric/sdk/android/services/common/z$a;->j6:Lio/fabric/sdk/android/services/common/z$a;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    if-le v0, v1, :cond_18

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/z;->FH(I)V

    :cond_18
    iput v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Lio/fabric/sdk/android/services/common/z$c;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget v0, v0, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    if-ge v1, v2, :cond_27

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

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
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

    :try_start_1
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/z;->DW(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_63

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_63

    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/common/z;->j6(I)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1b

    const/16 v2, 0x10

    goto :goto_29

    :cond_1b
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v2, v2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget v3, v3, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/z;->Hw(I)I

    move-result v2

    :goto_29
    new-instance v3, Lio/fabric/sdk/android/services/common/z$a;

    invoke-direct {v3, v2, p3}, Lio/fabric/sdk/android/services/common/z$a;-><init>(II)V

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, p3}, Lio/fabric/sdk/android/services/common/z;->DW([BII)V

    iget v2, v3, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    iget-object v5, p0, Lio/fabric/sdk/android/services/common/z;->VH:[B

    invoke-direct {p0, v2, v5, v4, v1}, Lio/fabric/sdk/android/services/common/z;->DW(I[BII)V

    iget v2, v3, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2, p1, p2, p3}, Lio/fabric/sdk/android/services/common/z;->DW(I[BII)V

    if-eqz v0, :cond_46

    iget p1, v3, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    goto :goto_4a

    :cond_46
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    iget p1, p1, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    :goto_4a
    iget p2, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    iget p3, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    add-int/lit8 p3, p3, 0x1

    iget v1, v3, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    invoke-direct {p0, p2, p3, p1, v1}, Lio/fabric/sdk/android/services/common/z;->j6(IIII)V

    iput-object v3, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    iget p1, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    if-eqz v0, :cond_61

    iput-object v3, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_69

    :cond_61
    monitor-exit p0

    return-void

    :cond_63
    :try_start_63
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j6(II)Z
    .registers 4

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/z;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->v5:Lio/fabric/sdk/android/services/common/z$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z;->Zo:Lio/fabric/sdk/android/services/common/z$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", element lengths=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_40
    new-instance v1, Lio/fabric/sdk/android/services/common/y;

    invoke-direct {v1, p0, v0}, Lio/fabric/sdk/android/services/common/y;-><init>(Lio/fabric/sdk/android/services/common/z;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z$c;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_49

    goto :goto_53

    :catch_49
    move-exception v1

    sget-object v2, Lio/fabric/sdk/android/services/common/z;->j6:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_53
    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
