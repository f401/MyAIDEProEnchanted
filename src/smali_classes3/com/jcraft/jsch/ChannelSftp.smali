.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    }
.end annotation


# static fields
.field private static final KD:Ljava/lang/String;

.field private static cn:Z

.field private static final ro:C


# instance fields
.field private I:Ljava/lang/String;

.field private Mz:I

.field private OW:Ljava/lang/String;

.field private Qq:Z

.field private Sf:Lcom/jcraft/jsch/Buffer;

.field private XX:Ljava/lang/String;

.field private aj:Z

.field private br:Ljava/lang/String;

.field private ca:Ljava/util/Hashtable;

.field private cb:I

.field private dx:[I

.field private ef:Lcom/jcraft/jsch/Packet;

.field private g3:I

.field private kQ:Z

.field private lp:Ljava/lang/String;

.field private sG:Lcom/jcraft/jsch/Buffer;

.field private sh:Z

.field private sy:Z

.field private vJ:Lcom/jcraft/jsch/Packet;

.field private x9:Ljava/io/InputStream;

.field private yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->KD:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->ro:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->cn:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sh:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->dx:[I

    const/4 v2, 0x3

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->g3:I

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Qq:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sy:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aj:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    return-void
.end method

.method static synthetic DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    return-object p0
.end method

.method private DW(Lcom/jcraft/jsch/Buffer;I)V
    .registers 5

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1c

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1c
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v0, "Failure"

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private DW([B)Z
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_6

    return v1

    :cond_6
    aget-byte v3, p1, v2

    const/16 v4, 0x2a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1d

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_12

    goto :goto_1d

    :cond_12
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1b

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_1b

    move v2, v3

    :cond_1b
    add-int/2addr v2, v5

    goto :goto_3

    :cond_1d
    :goto_1d
    return v5
.end method

.method private EQ([B)V
    .registers 3

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private EQ(Ljava/lang/String;)[B
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->tp([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_2e

    const/16 v1, 0x68

    if-ne p1, v1, :cond_25

    goto :goto_2e

    :cond_25
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    if-eq p1, v0, :cond_52

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    :goto_37
    if-gtz p1, :cond_3a

    return-object v1

    :cond_3a
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_4a

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    :cond_4a
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    add-int/lit8 p1, p1, -0x1

    goto :goto_37

    :cond_52
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V

    goto :goto_5f

    :goto_5e
    throw v1

    :goto_5f
    goto :goto_5e
.end method

.method private FH([BII)I
    .registers 6

    move v0, p2

    :goto_1
    if-gtz p3, :cond_5

    sub-int/2addr v0, p2

    return v0

    :cond_5
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_10

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_1

    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputstream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_18
    throw p1

    :goto_19
    goto :goto_18
.end method

.method static synthetic FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .registers 1

    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    return-object p0
.end method

.method private FH(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    goto :goto_11

    :cond_7
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_12

    :goto_11
    return-void

    :cond_12
    sub-long/2addr p1, v2

    goto :goto_0
.end method

.method private FH([B)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method static synthetic Hw(Lcom/jcraft/jsch/ChannelSftp;)I
    .registers 1

    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    return p0
.end method

.method private Hw([B)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private J0(Ljava/lang/String;)Ljava/util/Vector;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v2

    :cond_19
    const/4 v4, 0x1

    if-nez v3, :cond_1e

    const/4 v5, 0x1

    goto :goto_1f

    :cond_1e
    move v5, v3

    :goto_1f
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [[B

    invoke-direct {v0, v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;[[B)Z

    move-result v5

    const-string v7, "/"

    if-nez v5, :cond_62

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_62
    aget-object v1, v4, v6

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->Zo([B)V

    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, v0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v9, v5}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const-string v5, ""

    const/4 v9, 0x4

    const/16 v10, 0x65

    if-eq v8, v10, :cond_92

    const/16 v11, 0x66

    if-ne v8, v11, :cond_8c

    goto :goto_92

    :cond_8c
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v1, v9, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_92
    :goto_92
    const/4 v11, 0x0

    if-eq v8, v10, :cond_17c

    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    move-object v12, v11

    :goto_9c
    invoke-direct {v0, v8}, Lcom/jcraft/jsch/ChannelSftp;->u7([B)V

    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v13, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v14, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    if-eq v14, v10, :cond_b5

    const/16 v15, 0x68

    if-ne v14, v15, :cond_af

    goto :goto_b5

    :cond_af
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v1, v9, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_b5
    :goto_b5
    if-ne v14, v10, :cond_c4

    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1, v13}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    invoke-direct {v0, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v1

    if-eqz v1, :cond_c3

    return-object v2

    :cond_c3
    return-object v11

    :cond_c4
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->J0()V

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-direct {v0, v14, v6, v9}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    add-int/lit8 v13, v13, -0x4

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v14

    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->we()V

    :goto_dd
    if-gtz v14, :cond_e0

    goto :goto_104

    :cond_e0
    if-lez v13, :cond_111

    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->J8()V

    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v15, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v9, v6

    iget v15, v15, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int v10, v15, v13

    if-le v9, v10, :cond_f4

    move v6, v13

    goto :goto_f6

    :cond_f4
    array-length v6, v6

    sub-int/2addr v6, v15

    :goto_f6
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v15, v10, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v10, v10, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v9, v15, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_109

    :goto_104
    const/4 v6, 0x0

    const/4 v9, 0x4

    const/16 v10, 0x65

    goto :goto_9c

    :cond_109
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v10, v9, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v10, v6

    iput v10, v9, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v13, v6

    :cond_111
    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v6

    iget v9, v0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v10, 0x3

    if-gt v9, v10, :cond_121

    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->tp()[B

    :cond_121
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v9}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    iget-boolean v9, v0, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    if-nez v9, :cond_137

    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_139

    :cond_137
    move-object v10, v6

    move-object v9, v11

    :goto_139
    invoke-static {v1, v10}, Lcom/jcraft/jsch/Util;->DW([B[B)Z

    move-result v10

    if-eqz v10, :cond_174

    if-nez v9, :cond_147

    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_147
    if-nez v12, :cond_161

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_160

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_161

    :cond_160
    move-object v12, v3

    :cond_161
    :goto_161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_174
    add-int/lit8 v14, v14, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/16 v10, 0x65

    goto/16 :goto_dd

    :cond_17c
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V

    goto :goto_189

    :goto_188
    throw v11

    :goto_189
    goto :goto_188
.end method

.method private J0([B)V
    .registers 3

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private J8(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;[[B)Z

    move-result p1

    return p1
.end method

.method private Mr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lp:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->aM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lp:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lp:Ljava/lang/String;

    return-object v0
.end method

.method private QX(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not unique: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private U2()V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private VH([B)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6([BI)V

    return-void
.end method

.method private Ws(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->J0([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x69

    if-eq p1, v1, :cond_22

    return v0

    :cond_22
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    return p1

    :catch_2d
    move-exception p1

    return v0
.end method

.method private XL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_a

    return-object p1

    :cond_a
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->Mr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private Zo([B)V
    .registers 3

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private aM(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->lp:Ljava/lang/String;

    return-void
.end method

.method private gn([B)V
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6([BI)V

    return-void
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;)I
    .registers 1

    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    return p0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->j6([BJ[BII)I

    move-result p0

    return p0
.end method

.method private j6([BJ[BII)I
    .registers 11

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->vJ:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v1

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x15

    array-length v3, p1

    add-int/2addr v3, v0

    add-int/2addr v3, p6

    add-int/lit8 v3, v3, 0x54

    if-ge v2, v3, :cond_1d

    array-length p6, v1

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x54

    sub-int/2addr p6, v0

    :cond_1d
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    add-int/2addr v1, p6

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->j6(J)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->DW:[B

    if-eq p3, p4, :cond_46

    invoke-virtual {p2, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->FH([BII)V

    goto :goto_4e

    :cond_46
    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    :goto_4e
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object p3, p0, Lcom/jcraft/jsch/ChannelSftp;->vJ:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x15

    add-int/2addr p1, p6

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p3, p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .registers 6

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->J0()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iput p1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    return-object p2
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    return-object p2
.end method

.method private j6([B)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->J0([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq p1, v2, :cond_34

    const/16 v2, 0x65

    if-ne p1, v2, :cond_2e

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_3b

    const/4 p1, 0x0

    throw p1

    :cond_2e
    :try_start_2e
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_34
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_3b

    return-object p1

    :catch_3b
    move-exception p1

    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_46

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_46
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method private j6(BI)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;BI)V

    return-void
.end method

.method private j6(B[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[BLjava/lang/String;)V

    return-void
.end method

.method private j6(B[BLjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    if-nez p3, :cond_19

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    goto :goto_39

    :cond_19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    const/16 p1, -0x38

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    :goto_39
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private j6(B[B[BLjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    array-length v1, p3

    add-int/2addr v0, v1

    if-nez p4, :cond_1b

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget p4, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v1, p4, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    goto :goto_3b

    :cond_1b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    const/16 p1, -0x38

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    :goto_3b
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;BI)V
    .registers 5

    const/16 v0, 0x5e

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    iget v0, p0, Lcom/jcraft/jsch/Channel;->Hw:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    return-void
.end method

.method private j6(Lcom/jcraft/jsch/Buffer;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->we()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    return-void
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->FH(J)V

    return-void
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->j6([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method private j6([BI)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x11

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x11

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, v0, p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private j6([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .registers 9

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x15

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->j6(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x15

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    if-eqz p5, :cond_3d

    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6(IJI)V

    :cond_3d
    return-void
.end method

.method private j6([BLcom/jcraft/jsch/SftpATTRS;)V
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p1

    const/4 v1, 0x4

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->tp()I

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x4

    :goto_f
    add-int/lit8 v0, v0, 0x9

    add-int/2addr v0, v2

    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    if-eqz p2, :cond_2f

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->j6(Lcom/jcraft/jsch/Buffer;)V

    goto :goto_33

    :cond_2f
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_33
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->tp()I

    move-result p2

    goto :goto_42

    :cond_41
    const/4 p2, 0x4

    :goto_42
    add-int/lit8 p1, p1, 0x9

    add-int/2addr p1, p2

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p0, p1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private j6([B[B)V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Qq:Z

    if-eqz v0, :cond_7

    const-string v0, "posix-rename@openssh.com"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/16 v1, 0x12

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method private j6(Ljava/lang/String;[[B)Z
    .registers 4

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p2, :cond_b

    const/4 v0, 0x0

    aput-object p1, p2, v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW([B)Z

    move-result p1

    return p1
.end method

.method private j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->FH([B)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p1

    return p1
.end method

.method private j6([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    if-eqz p1, :cond_10

    const/4 v2, 0x0

    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    aput p2, p1, v2

    :cond_10
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p1, 0x65

    if-ne v1, p1, :cond_2a

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V

    const/4 p1, 0x0

    throw p1

    :cond_2a
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 p2, 0x4

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private tp(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Hw([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq p1, v2, :cond_3a

    const/16 v2, 0x65

    if-ne p1, v2, :cond_34

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_41

    const/4 p1, 0x0

    throw p1

    :cond_34
    :try_start_34
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3a
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p1

    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_4c

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4c
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method private tp([B)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private u7([B)V
    .registers 3

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method static synthetic v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .registers 1

    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object p0
.end method

.method private v5([B)V
    .registers 3

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6([BI)V

    return-void
.end method

.method private we(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    return-object p1
.end method

.method private we([B)V
    .registers 3

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->DW()V

    return-void
.end method

.method public DW(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x4

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->EQ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->j6()I

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_55

    and-int/2addr v3, v0

    const-string v4, "Can\'t change directory: "

    if-eqz v3, :cond_43

    :try_start_21
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->aM(Ljava/lang/String;)V

    return-void

    :cond_31
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_43
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_55

    :catch_55
    move-exception p1

    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_62

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_62
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public bridge synthetic DW(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->DW(Z)V

    return-void
.end method

.method public FH(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public Hw(Ljava/lang/String;)Ljava/util/Vector;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$3;

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/ChannelSftp$3;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V

    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    return-object v0
.end method

.method public QX()V
    .registers 9

    const-string v0, "hardlink@openssh.com"

    const-string v1, "statvfs@openssh.com"

    const-string v2, "posix-rename@openssh.com"

    :try_start_6
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v5, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v4, p0, v3, v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    if-eqz v3, :cond_104

    new-instance v3, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v3}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/jcraft/jsch/RequestSftp;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    iget v4, p0, Lcom/jcraft/jsch/Channel;->gn:I

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    new-instance v4, Lcom/jcraft/jsch/Packet;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    iget v4, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    new-instance v4, Lcom/jcraft/jsch/Packet;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->vJ:Lcom/jcraft/jsch/Packet;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->U2()V

    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v4, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    const/high16 v5, 0x40000

    const/4 v6, 0x4

    if-gt v4, v5, :cond_f0

    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget v3, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    if-lez v4, :cond_9b

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    :goto_78
    if-gtz v4, :cond_7b

    goto :goto_9b

    :cond_7b
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v3

    array-length v5, v3

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    array-length v5, v7

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    :cond_9b
    :goto_9b
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a1} :catch_10c

    const-string v4, "1"

    const/4 v5, 0x1

    if-eqz v3, :cond_b4

    :try_start_a6
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->Qq:Z

    :cond_b4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_cc

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->sy:Z

    :cond_cc
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->aj:Z

    :cond_e2
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->br:Ljava/lang/String;

    return-void

    :cond_f0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received message is too long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_104
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_10c} :catch_10c

    :catch_10c
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_11b

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_11b
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    goto :goto_11f

    :goto_11e
    throw v0

    :goto_11f
    goto :goto_11e
.end method

.method public VH(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 7

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/SftpATTRS;)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v3, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v3, 0x65

    if-ne p1, v3, :cond_3e

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    if-nez p1, :cond_38

    return-void

    :cond_38
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_44

    throw v2

    :cond_3e
    :try_start_3e
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_44

    :catch_44
    move-exception p1

    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_4f

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4f
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public aM()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->OW:Ljava/lang/String;

    if-nez v1, :cond_29

    :try_start_6
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->EQ(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->OW:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_29

    :catch_1a
    move-exception v1

    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_26

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_26
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->OW:Ljava/lang/String;

    return-object v0
.end method

.method public gn(Ljava/lang/String;)V
    .registers 10

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v4, 0x0

    :goto_1c
    if-lt v4, v2, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->EQ([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v6, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v5}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v5, 0x65

    if-ne v6, v5, :cond_52

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v5

    if-nez v5, :cond_4b

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_4b
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p1, v5}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_58

    const/4 p1, 0x0

    throw p1

    :cond_52
    :try_start_52
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_58

    :catch_58
    move-exception p1

    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_63

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_63
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_67

    :goto_66
    throw p1

    :goto_67
    goto :goto_66
.end method

.method public j3()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->Mr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .registers 13

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    if-eqz p2, :cond_29

    const/4 v3, 0x1

    const-string v5, "??"

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->Zo()J

    move-result-wide v6

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_29
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->VH([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-eq p1, v2, :cond_4e

    const/16 v3, 0x66

    if-ne p1, v3, :cond_48

    goto :goto_4e

    :cond_48
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4e
    :goto_4e
    if-eq p1, v2, :cond_65

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH()V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V

    return-object p1

    :cond_65
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_70} :catch_72

    const/4 p1, 0x0

    throw p1

    :catch_72
    move-exception p1

    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_7d

    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_7d
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .registers 14

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Ws(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_80

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_98

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_24

    if-ne p3, v2, :cond_2e

    :cond_24
    :try_start_24
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->Zo()J

    move-result-wide v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_30

    :catch_2d
    move-exception v4

    :cond_2e
    const-wide/16 v4, 0x0

    :goto_30
    if-nez p3, :cond_36

    :try_start_32
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->gn([B)V

    goto :goto_39

    :cond_36
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->v5([B)V

    :goto_39
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v6, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v6}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v6, 0x65

    if-eq p1, v6, :cond_5b

    const/16 v7, 0x66

    if-ne p1, v7, :cond_55

    goto :goto_5b

    :cond_55
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5b
    :goto_5b
    if-eq p1, v6, :cond_73

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object p1

    if-eq p3, v3, :cond_67

    if-ne p3, v2, :cond_68

    :cond_67
    add-long/2addr p4, v4

    :cond_68
    new-instance p3, Lcom/jcraft/jsch/ChannelSftp$1;

    new-array v2, v3, [J

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {p3, p0, p1, v2, p2}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V

    return-object p3

    :cond_73
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_7e} :catch_98

    const/4 p1, 0x0

    throw p1

    :cond_80
    :try_start_80
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is a directory"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_98} :catch_98

    :catch_98
    move-exception p1

    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_a3

    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a3
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .registers 20

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x4

    :try_start_5
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_20

    const/4 v6, 0x1

    goto :goto_21

    :cond_20
    move v6, v4

    :goto_21
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [[B

    invoke-direct {v1, v4, v8}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;[[B)Z

    move-result v9
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_1ae

    const/4 v10, 0x0

    if-eqz v9, :cond_3b

    aget-object v0, v8, v7

    goto :goto_61

    :cond_3b
    :try_start_3b
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->we(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result v11

    if-eqz v11, :cond_4c

    move-object v6, v0

    move-object v0, v10

    goto :goto_61

    :cond_4c
    iget-boolean v0, v1, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    if-eqz v0, :cond_57

    aget-object v0, v8, v7

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->Hw([B)[B

    move-result-object v0

    goto :goto_61

    :cond_57
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :goto_61
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->Zo([B)V

    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v6, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v6}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v6, 0x65

    if-eq v8, v6, :cond_8c

    const/16 v11, 0x66

    if-ne v8, v11, :cond_86

    goto :goto_8c

    :cond_86
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8c
    :goto_8c
    if-eq v8, v6, :cond_1a2

    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    const/4 v11, 0x0

    :goto_95
    if-eqz v11, :cond_98

    goto :goto_c0

    :cond_98
    invoke-direct {v1, v8}, Lcom/jcraft/jsch/ChannelSftp;->u7([B)V

    iget-object v12, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v12, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v12, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    if-eq v13, v6, :cond_b1

    const/16 v14, 0x68

    if-ne v13, v14, :cond_ab

    goto :goto_b1

    :cond_ab
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b1
    :goto_b1
    if-ne v13, v6, :cond_ca

    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v0, v12}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-ne v0, v5, :cond_c4

    :goto_c0
    invoke-direct {v1, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    return-void

    :cond_c4
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v4, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_c9} :catch_1ae

    throw v10

    :cond_ca
    :try_start_ca
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->J0()V

    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v13, v13, Lcom/jcraft/jsch/Buffer;->DW:[B

    invoke-direct {v1, v13, v7, v3}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    add-int/lit8 v12, v12, -0x4

    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v13

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->we()V

    :goto_e3
    if-gtz v13, :cond_e6

    goto :goto_95

    :cond_e6
    if-lez v12, :cond_119

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->J8()V

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v14, v14

    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v15, v15, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v15, v12

    if-le v14, v15, :cond_fb

    move v14, v12

    goto :goto_105

    :cond_fb
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v14, v14

    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v15, v15, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v14, v15

    :goto_105
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v15, v15, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v6, v6, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-direct {v1, v15, v6, v14}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    move-result v6

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v15, v14, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v15, v6

    iput v15, v14, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v12, v6

    :cond_119
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v6

    iget v14, v1, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v15, 0x3

    if-gt v14, v15, :cond_12b

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v14

    goto :goto_12c

    :cond_12b
    move-object v14, v10

    :goto_12c
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v15}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v15

    if-ne v11, v5, :cond_139

    add-int/lit8 v13, v13, -0x1

    const/16 v6, 0x65

    goto :goto_e3

    :cond_139
    if-nez v0, :cond_13e

    move-object v5, v10

    const/4 v7, 0x1

    goto :goto_15f

    :cond_13e
    if-nez v9, :cond_148

    invoke-static {v0, v6}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v16

    move-object v5, v10

    move/from16 v7, v16

    goto :goto_15f

    :cond_148
    iget-boolean v5, v1, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    if-nez v5, :cond_159

    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_15b

    :cond_159
    move-object v7, v6

    move-object v5, v10

    :goto_15b
    invoke-static {v0, v7}, Lcom/jcraft/jsch/Util;->DW([B[B)Z

    move-result v7

    :goto_15f
    if-eqz v7, :cond_198

    if-nez v5, :cond_169

    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_169
    if-nez v14, :cond_185

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_18b

    :cond_185
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_18b
    new-instance v7, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v7, v1, v5, v6, v15}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    move-object/from16 v5, p2

    invoke-interface {v5, v7}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->j6(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v6

    move v11, v6

    goto :goto_19a

    :cond_198
    move-object/from16 v5, p2

    :goto_19a
    add-int/lit8 v13, v13, -0x1

    const/4 v5, 0x1

    const/16 v6, 0x65

    const/4 v7, 0x0

    goto/16 :goto_e3

    :cond_1a2
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v4, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_1ad} :catch_1ae

    throw v10

    :catch_1ae
    move-exception v0

    instance-of v4, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v4, :cond_1b9

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v4, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1b9
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    goto :goto_1bd

    :goto_1bc
    throw v0

    :goto_1bd
    goto :goto_1bc
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, ""

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_94

    const/4 v1, 0x4

    :try_start_8
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v2, :cond_7c

    const/4 v2, 0x1

    if-ne v4, v2, :cond_30

    const/4 p2, 0x0

    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_3a

    :cond_30
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->J8(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_3a
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([B[B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_70

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result p1

    if-nez p1, :cond_69

    return-void

    :cond_69
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6e} :catch_86

    const/4 p1, 0x0

    throw p1

    :cond_70
    :try_start_70
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_76
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7c
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v3}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_86} :catch_86

    :catch_86
    move-exception p1

    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_91

    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_91
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    :cond_94
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/16 p2, 0x8

    const-string v0, "The remote sshd is too old to support rename operation."

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic j6(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->j6(Z)V

    return-void
.end method

.method public bridge synthetic run()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method

.method public u7(Ljava/lang/String;)V
    .registers 10

    const-string v0, ""

    const/4 v1, 0x4

    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v4, 0x0

    :goto_1c
    if-lt v4, v2, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->we([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v6, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v5}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v5, 0x65

    if-ne v6, v5, :cond_52

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v5

    if-nez v5, :cond_4b

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_4b
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p1, v5}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_58

    const/4 p1, 0x0

    throw p1

    :cond_52
    :try_start_52
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_58

    :catch_58
    move-exception p1

    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_63

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_63
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_67

    :goto_66
    throw p1

    :goto_67
    goto :goto_66
.end method

.method public v5(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->tp(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v0, :cond_22

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_22
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method we()V
    .registers 1

    return-void
.end method
