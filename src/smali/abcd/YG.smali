.class Labcd/YG;
.super Labcd/EE;


# static fields
.field private static FH:[I


# instance fields
.field private final Hw:Labcd/GG;

.field private Zo:Ljava/util/zip/Deflater;

.field private final v5:Labcd/yH;


# direct methods
.method constructor <init>(Labcd/GG;Labcd/gE;)V
    .registers 4

    invoke-direct {p0}, Labcd/EE;-><init>()V

    iput-object p1, p0, Labcd/YG;->Hw:Labcd/GG;

    sget-object v0, Labcd/yH;->j6:Labcd/gE$b;

    invoke-virtual {p2, v0}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yH;

    iput-object v0, p0, Labcd/YG;->v5:Labcd/yH;

    return-void
.end method

.method private FH(I[BII)Ljava/io/File;
    .registers 11

    invoke-virtual {p0}, Labcd/YG;->Zo()Ljava/io/File;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v0}, Labcd/yH;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Labcd/YG;->j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v0

    int-to-long v4, p4

    invoke-virtual {p0, v0, p1, v4, v5}, Labcd/YG;->j6(Ljava/io/OutputStream;IJ)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v0}, Labcd/yH;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v3}, Labcd/yH;->DW()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2}, Labcd/zK;->j6(Ljava/io/File;)V

    throw v0
.end method

.method private j6(Ljava/io/File;Labcd/yE;)Labcd/yE;
    .registers 6

    invoke-static {}, Labcd/YG;->v5()[I

    move-result-object v0

    iget-object v1, p0, Labcd/YG;->Hw:Labcd/GG;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Labcd/GG;->j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-object p2

    :cond_1
    iget-object v0, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-virtual {v0, p2}, Labcd/GG;->DW(Labcd/YD;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create new object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/kD;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/kD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(J)Ljava/io/EOFException;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input did not match supplied length. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes are missing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private j6(Ljava/security/MessageDigest;IJLjava/io/InputStream;)Ljava/io/File;
    .registers 15

    invoke-virtual {p0}, Labcd/YG;->Zo()Ljava/io/File;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v0}, Labcd/yH;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Labcd/YG;->j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v0

    new-instance v3, Ljava/security/DigestOutputStream;

    invoke-direct {v3, v0, p1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-virtual {p0, v3, p2, p3, p4}, Labcd/YG;->j6(Ljava/io/OutputStream;IJ)V

    invoke-virtual {p0}, Labcd/EE;->j6()[B

    move-result-object v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gtz v5, :cond_2

    invoke-virtual {v3}, Ljava/security/DigestOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v0}, Labcd/yH;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :try_start_3
    array-length v6, v4

    int-to-long v6, v6

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p5, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/security/DigestOutputStream;->write([BII)V

    int-to-long v6, v5

    sub-long/2addr p3, v6

    goto :goto_1

    :cond_3
    invoke-static {p3, p4}, Labcd/YG;->j6(J)Ljava/io/EOFException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v3, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v3}, Labcd/yH;->DW()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2}, Labcd/zK;->j6(Ljava/io/File;)V

    throw v0
.end method

.method static synthetic v5()[I
    .registers 3

    sget-object v0, Labcd/YG;->FH:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/GG$c;->values()[Labcd/GG$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/GG$c;->FH:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Labcd/GG$c;->DW:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Labcd/GG$c;->Hw:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Labcd/GG$c;->j6:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Labcd/YG;->FH:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public DW(I[BII)Labcd/yE;
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/EE;->j6(I[BII)Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-virtual {v1, v0}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/YG;->FH(I[BII)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/YG;->j6(Ljava/io/File;Labcd/yE;)Labcd/yE;

    goto :goto_0
.end method

.method public FH()V
    .registers 1

    return-void
.end method

.method public Hw()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    throw v0
.end method

.method Zo()Ljava/io/File;
    .registers 4

    const-string v0, "noz"

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-virtual {v2}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/io/InputStream;)Labcd/AI;
    .registers 4

    new-instance v0, Labcd/ZG;

    iget-object v1, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-direct {v0, v1, p1}, Labcd/ZG;-><init>(Labcd/GG;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public j6(IJLjava/io/InputStream;)Labcd/yE;
    .registers 13

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/EE;->j6()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Labcd/EE;->j6()[B

    move-result-object v0

    invoke-static {p4, v0, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BI)I

    move-result v1

    invoke-virtual {p0, p1, v0, v2, v1}, Labcd/YG;->DW(I[BII)Labcd/yE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/EE;->DW()Ljava/security/MessageDigest;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/YG;->j6(Ljava/security/MessageDigest;IJLjava/io/InputStream;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/YG;->j6(Ljava/io/File;Labcd/yE;)Labcd/yE;

    goto :goto_0
.end method

.method j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;
    .registers 5

    iget-object v0, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    iget-object v1, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v1}, Labcd/yH;->j6()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    :goto_0
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    iget-object v1, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    const/16 v2, 0x2000

    invoke-direct {v0, p1, v1, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    goto :goto_0
.end method

.method j6(Ljava/io/OutputStream;IJ)V
    .registers 6

    invoke-static {p2}, Labcd/hE;->j6(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p3, p4}, Labcd/hE;->j6(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
