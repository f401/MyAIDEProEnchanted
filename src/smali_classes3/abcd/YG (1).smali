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
    .registers 3

    invoke-direct {p0}, Labcd/EE;-><init>()V

    iput-object p1, p0, Labcd/YG;->Hw:Labcd/GG;

    sget-object p1, Labcd/yH;->j6:Labcd/gE$b;

    invoke-virtual {p2, p1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yH;

    iput-object p1, p0, Labcd/YG;->v5:Labcd/yH;

    return-void
.end method

.method private FH(I[BII)Ljava/io/File;
    .registers 11

    invoke-virtual {p0}, Labcd/YG;->Zo()Ljava/io/File;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_51

    const/4 v2, 0x1

    :try_start_a
    iget-object v3, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v3}, Labcd/yH;->DW()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v3

    goto :goto_1c

    :cond_1b
    move-object v3, v1

    :goto_1c
    invoke-virtual {p0, v3}, Labcd/YG;->j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v3

    int-to-long v4, p4

    invoke-virtual {p0, v3, p1, v4, v5}, Labcd/YG;->j6(Ljava/io/OutputStream;IJ)V

    invoke-virtual {v3, p2, p3, p4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_3d

    :try_start_2a
    iget-object p1, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {p1}, Labcd/yH;->DW()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-object v0

    :catchall_3d
    move-exception p1

    iget-object p2, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {p2}, Labcd/yH;->DW()Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_51
    .catchall {:try_start_2a .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    throw p1
.end method

.method private j6(Ljava/io/File;Labcd/yE;)Labcd/yE;
    .registers 6

    invoke-static {}, Labcd/YG;->v5()[I

    move-result-object v0

    iget-object v1, p0, Labcd/YG;->Hw:Labcd/GG;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Labcd/GG;->j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_35

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1b

    goto :goto_35

    :cond_1b
    iget-object p1, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-virtual {p1, p2}, Labcd/GG;->DW(Labcd/YD;)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to create new object: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/kD;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/kD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    return-object p2
.end method

.method private static j6(J)Ljava/io/EOFException;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input did not match supplied length. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes are missing."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private j6(Ljava/security/MessageDigest;IJLjava/io/InputStream;)Ljava/io/File;
    .registers 13

    invoke-virtual {p0}, Labcd/YG;->Zo()Ljava/io/File;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_78

    const/4 v2, 0x1

    :try_start_a
    iget-object v3, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v3}, Labcd/yH;->DW()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v3

    goto :goto_1c

    :cond_1b
    move-object v3, v1

    :goto_1c
    invoke-virtual {p0, v3}, Labcd/YG;->j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v3

    new-instance v4, Ljava/security/DigestOutputStream;

    invoke-direct {v4, v3, p1}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    invoke-virtual {p0, v4, p2, p3, p4}, Labcd/YG;->j6(Ljava/io/OutputStream;IJ)V

    invoke-virtual {p0}, Labcd/EE;->j6()[B

    move-result-object p1

    :goto_2c
    const-wide/16 v5, 0x0

    cmp-long p2, p3, v5

    if-gtz p2, :cond_4b

    invoke-virtual {v4}, Ljava/security/DigestOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_64

    :try_start_38
    iget-object p1, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {p1}, Labcd/yH;->DW()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_47
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_78

    return-object v0

    :cond_4b
    :try_start_4b
    array-length p2, p1

    int-to-long v5, p2

    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int p2, v5

    const/4 v5, 0x0

    invoke-virtual {p5, p1, v5, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    if-lez p2, :cond_5f

    invoke-virtual {v4, p1, v5, p2}, Ljava/security/DigestOutputStream;->write([BII)V

    int-to-long v5, p2

    sub-long/2addr p3, v5

    goto :goto_2c

    :cond_5f
    invoke-static {p3, p4}, Labcd/YG;->j6(J)Ljava/io/EOFException;

    move-result-object p1

    throw p1
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    :try_start_65
    iget-object p2, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {p2}, Labcd/yH;->DW()Z

    move-result p2

    if-eqz p2, :cond_74

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_74
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p1

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    goto :goto_7e

    :goto_7d
    throw p1

    :goto_7e
    goto :goto_7d
.end method

.method static synthetic v5()[I
    .registers 3

    sget-object v0, Labcd/YG;->FH:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/GG$c;->values()[Labcd/GG$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/GG$c;->FH:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/GG$c;->DW:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/GG$c;->Hw:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/GG$c;->j6:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    sput-object v0, Labcd/YG;->FH:[I

    return-object v0
.end method


# virtual methods
.method public DW(I[BII)Labcd/yE;
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/EE;->j6(I[BII)Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-virtual {v1, v0}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/YG;->FH(I[BII)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Labcd/YG;->j6(Ljava/io/File;Labcd/yE;)Labcd/yE;

    return-object v0
.end method

.method public FH()V
    .registers 1

    return-void
.end method

.method public Hw()V
    .registers 3

    iget-object v0, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    iput-object v1, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    goto :goto_f

    :catchall_b
    move-exception v0

    iput-object v1, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    throw v0

    :cond_f
    :goto_f
    return-void
.end method

.method Zo()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Labcd/YG;->Hw:Labcd/GG;

    invoke-virtual {v0}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v0

    const-string v1, "noz"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

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
    .registers 12

    invoke-virtual {p0}, Labcd/EE;->j6()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_18

    invoke-virtual {p0}, Labcd/EE;->j6()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p4, p2, p3}, Labcd/BK;->j6(Ljava/io/InputStream;[BI)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/YG;->DW(I[BII)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_18
    invoke-virtual {p0}, Labcd/EE;->DW()Ljava/security/MessageDigest;

    move-result-object v6

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/YG;->j6(Ljava/security/MessageDigest;IJLjava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-static {p2}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Labcd/YG;->j6(Ljava/io/File;Labcd/yE;)Labcd/yE;

    return-object p2
.end method

.method j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;
    .registers 5

    iget-object v0, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/zip/Deflater;

    iget-object v1, p0, Labcd/YG;->v5:Labcd/yH;

    invoke-virtual {v1}, Labcd/yH;->j6()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    goto :goto_15

    :cond_12
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    :goto_15
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    iget-object v1, p0, Labcd/YG;->Zo:Ljava/util/zip/Deflater;

    const/16 v2, 0x2000

    invoke-direct {v0, p1, v1, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    return-object v0
.end method

.method j6(Ljava/io/OutputStream;IJ)V
    .registers 5

    invoke-static {p2}, Labcd/hE;->j6(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p3, p4}, Labcd/hE;->j6(J)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
