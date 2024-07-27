.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$Header;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntry;,
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

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->cn:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v5, 0x0

    const/high16 v4, 0x200000

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sh:Z

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->dx:[I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->g3:I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->g3:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Ljava/lang/String;

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Qq:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sy:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->aj:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Channel;->Zo(I)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Channel;->v5(I)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->Hw(I)V

    return-void
.end method

.method static synthetic DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    return-object v0
.end method

.method private DW(Lcom/jcraft/jsch/Buffer;I)V
    .registers 6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "Failure"

    invoke-direct {v0, p2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private DW([B)Z
    .registers 7

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    aget-byte v0, p1, v1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    aget-byte v0, p1, v1

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    aget-byte v0, p1, v1

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_3

    add-int/lit8 v0, v1, 0x1

    if-ge v0, v3, :cond_3

    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private EQ([B)V
    .registers 3

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private EQ(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    const/16 v4, 0x65

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->tp([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v0, v4, :cond_0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_1

    :cond_0
    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_2

    return-object v1

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v2}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V

    throw v1
.end method

.method private FH([BII)I
    .registers 6

    move v0, p2

    :goto_0
    if-gtz p3, :cond_0

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputstream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method private FH(J)V
    .registers 10

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    sub-long/2addr p1, v0

    goto :goto_0
.end method

.method private FH([B)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method static synthetic Hw(Lcom/jcraft/jsch/ChannelSftp;)I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    return v0
.end method

.method private Hw([B)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B)V

    return-void
.end method

.method private J0(Ljava/lang/String;)Ljava/util/Vector;
    .registers 14

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [[B

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;[[B)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    aget-object v8, v2, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->Zo([B)V

    new-instance v9, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v9, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v9}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v2, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v2, v1, :cond_4

    const/16 v1, 0x66

    if-ne v2, v1, :cond_6

    :cond_4
    const/16 v1, 0x65

    if-eq v2, v1, :cond_14

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v10

    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v10}, Lcom/jcraft/jsch/ChannelSftp;->u7([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v9}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v3, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    const/16 v4, 0x65

    if-eq v3, v4, :cond_5

    const/16 v4, 0x68

    if-ne v3, v4, :cond_7

    :cond_5
    const/16 v4, 0x65

    if-ne v3, v4, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    invoke-direct {p0, v10, v9}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v6

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->J0()V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v3, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    add-int/lit8 v2, v2, -0x4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->we()V

    move-object v3, v1

    move v7, v4

    :goto_3
    if-gtz v7, :cond_b

    :cond_a
    move-object v1, v3

    goto :goto_2

    :cond_b
    if-lez v2, :cond_c

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->J8()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v1, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v5, v4

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int v11, v1, v2

    if-le v5, v11, :cond_11

    move v1, v2

    :goto_4
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v5, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-virtual {v4, v11, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_a

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v5, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v5, v1

    iput v5, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v2, v1

    :cond_c
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v5, 0x3

    if-gt v1, v5, :cond_d

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    :cond_d
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "UTF-8"

    invoke-static {v5, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    :goto_5
    invoke-static {v8, v1}, Lcom/jcraft/jsch/Util;->DW([B[B)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v5, :cond_e

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_e
    if-nez v3, :cond_f

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_f
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_10
    add-int/lit8 v1, v7, -0x1

    move v7, v1

    goto/16 :goto_3

    :cond_11
    array-length v4, v4

    sub-int v1, v4, v1

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    move-object v1, v4

    goto :goto_5

    :cond_13
    move-object v3, v0

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v0, 0x0

    throw v0
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

    move-result v0

    return v0
.end method

.method private Mr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lp:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->aM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lp:Ljava/lang/String;

    :cond_0
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

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not unique: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
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
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->J0([B)V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private XL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->Mr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
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
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    return v0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .registers 9

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->j6([BJ[BII)I

    move-result v0

    return v0
.end method

.method private j6([BJ[BII)I
    .registers 13

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->vJ:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v1

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x15

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/2addr v3, p6

    add-int/lit8 v3, v3, 0x54

    if-ge v2, v3, :cond_0

    array-length v1, v1

    add-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x15

    array-length v2, p1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x54

    sub-int p6, v1, v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x6

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->j6(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    if-eq v1, p4, :cond_1

    invoke-virtual {v0, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->FH([BII)V

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->vJ:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6

    :cond_1
    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    goto :goto_0
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

    move-result v0

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    return-object p2
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    return-object p2
.end method

.method private j6([B)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->J0([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    :cond_2
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
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
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    if-nez p3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    goto :goto_0
.end method

.method private j6(B[B[BLjava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    array-length v1, p3

    add-int/2addr v0, v1

    if-nez p4, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p3}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, p0, v0}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    goto :goto_0
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
    .registers 4

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

    const/4 v0, 0x3

    array-length v1, p1

    add-int/lit8 v1, v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x11

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private j6([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .registers 10

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    const/4 v0, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

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

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    if-eqz p5, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p5, v0, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6(IJI)V

    :cond_0
    return-void
.end method

.method private j6([BLcom/jcraft/jsch/SftpATTRS;)V
    .registers 7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->DW()V

    array-length v2, p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->tp()I

    move-result v0

    :goto_0
    const/16 v3, 0xe

    add-int/lit8 v2, v2, 0x9

    add-int/2addr v0, v2

    invoke-direct {p0, v3, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->cb:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->j6(Lcom/jcraft/jsch/Buffer;)V

    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    array-length v3, p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->tp()I

    move-result v1

    :cond_0
    add-int/lit8 v3, v3, 0x9

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v2, p0, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    goto :goto_1
.end method

.method private j6([B[B)V
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Qq:Z

    if-eqz v0, :cond_0

    const-string v0, "posix-rename@openssh.com"

    :goto_0
    const/16 v1, 0x12

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(B[B[BLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private j6(Ljava/lang/String;[[B)Z
    .registers 5

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW([B)Z

    move-result v0

    return v0
.end method

.method private j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->FH([B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private j6([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    iget v3, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    aput v3, p1, v2

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private tp(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->Hw([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    :cond_2
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
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
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object v0
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

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    return-object v0
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

    const/4 v4, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->EQ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->j6()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->aM(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v4, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public bridge synthetic DW(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->DW(Z)V

    return-void
.end method

.method public FH(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
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
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->DW(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v2, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v1, p0, v0, v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->j6(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->EQ:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->j6:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->EQ()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/RequestSftp;->j6(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->gn:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ef:Lcom/jcraft/jsch/Packet;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->tp:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Sf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->vJ:Lcom/jcraft/jsch/Packet;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->U2()V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    const/high16 v2, 0x40000

    if-gt v0, v2, :cond_5

    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    :goto_0
    if-gtz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Qq:Z

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    const-string v1, "statvfs@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    const-string v1, "statvfs@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sy:Z

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->aj:Z

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->br:Ljava/lang/String;

    return-void

    :cond_4
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    array-length v2, v1

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v3

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    array-length v2, v3

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ca:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_7

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received message is too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
.end method

.method public VH(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/SftpATTRS;)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    :cond_1
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public aM()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->OW:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->EQ(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->OW:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->OW:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public gn(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->EQ([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-ne v5, v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public j3()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->Mr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .registers 14

    const/16 v8, 0x65

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    const-string v3, "??"

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->Zo()J

    move-result-wide v4

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->VH([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v0, v8, :cond_1

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    :cond_1
    if-eq v0, v8, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->yO:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH()V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_4

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_4
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .registers 16

    const/16 v8, 0x65

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->Ws(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eq p3, v5, :cond_0

    if-ne p3, v7, :cond_1

    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->Zo()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    :cond_1
    :goto_0
    if-nez p3, :cond_5

    :try_start_2
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->gn([B)V

    :goto_1
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v2, v8, :cond_2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_6

    :cond_2
    if-eq v2, v8, :cond_7

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v2

    if-eq p3, v5, :cond_3

    if-ne p3, v7, :cond_4

    :cond_3
    add-long/2addr p4, v0

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$1;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v3, 0x0

    aput-wide p4, v1, v3

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V

    return-object v0

    :cond_5
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->v5([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_9

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v6, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :try_start_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_8
    :try_start_4
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is a directory"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .registers 16

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v6, v1, [[B

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;[[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x0

    aget-object v1, v6, v1

    move-object v8, v1

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->Zo([B)V

    new-instance v10, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v10, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v10}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v10, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v4, v10, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    const/16 v0, 0x65

    if-eq v4, v0, :cond_0

    const/16 v0, 0x66

    if-ne v4, v0, :cond_6

    :cond_0
    const/16 v0, 0x65

    if-eq v4, v0, :cond_15

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v11

    const/4 v0, 0x0

    move v4, v1

    move v5, v3

    :goto_2
    if-eqz v0, :cond_7

    :cond_1
    invoke-direct {p0, v11, v10}, Lcom/jcraft/jsch/ChannelSftp;->j6([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->we(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object v0, v1

    move-object v8, v4

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->Hw([B)[B

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_16

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_2
    invoke-direct {p0, v11}, Lcom/jcraft/jsch/ChannelSftp;->u7([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v10}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v10, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v3, v10, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    if-eq v3, v4, :cond_8

    const/16 v6, 0x68

    if-ne v3, v6, :cond_9

    :cond_8
    if-ne v3, v4, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->J0()V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v6, 0x4

    invoke-direct {p0, v3, v2, v6}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    add-int/lit8 v1, v1, -0x4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v6

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->we()V

    move v3, v2

    :goto_3
    if-gtz v6, :cond_b

    move v2, v3

    goto/16 :goto_2

    :cond_b
    if-lez v1, :cond_17

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->J8()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v2

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v4, v1

    if-le v2, v4, :cond_c

    move v2, v1

    :goto_4
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v7, v7, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-direct {p0, v4, v7, v2}, Lcom/jcraft/jsch/ChannelSftp;->FH([BII)I

    move-result v2

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v7, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v7, v2

    iput v7, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v1, v2

    move v2, v1

    :goto_5
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v7

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    const/4 v4, 0x3

    if-gt v1, v4, :cond_d

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v1

    :goto_6
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-static {v4}, Lcom/jcraft/jsch/SftpATTRS;->DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v12

    if-ne v0, v5, :cond_e

    add-int/lit8 v6, v6, -0x1

    const/16 v4, 0x65

    move v1, v2

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v2

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v2, v4

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    if-nez v8, :cond_11

    const/4 v3, 0x0

    :goto_7
    if-eqz v5, :cond_10

    if-nez v3, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_f
    if-nez v1, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v1, p0, v3, v0, v12}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    invoke-interface {p2, v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->j6(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v0

    :cond_10
    add-int/lit8 v6, v6, -0x1

    const/4 v5, 0x1

    const/16 v4, 0x65

    const/4 v3, 0x0

    move v1, v2

    goto/16 :goto_3

    :cond_11
    if-nez v9, :cond_12

    invoke-static {v8, v7}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v5

    const/4 v3, 0x0

    goto :goto_7

    :cond_12
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSftp;->kQ:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    :goto_9
    invoke-static {v8, v4}, Lcom/jcraft/jsch/Util;->DW([B[B)Z

    move-result v5

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    move-object v4, v7

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_15
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_16
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_17
    move v2, v1

    goto/16 :goto_5
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x2

    const/4 v5, 0x4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Mz:I

    if-lt v0, v4, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v3, v4, :cond_4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6([B[B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->J8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_5

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/16 v1, 0x8

    const-string v2, "The remote sshd is too old to support rename operation."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
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

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->J0(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->XX:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->we([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-ne v5, v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->sG:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public v5(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x9:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->tp(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method we()V
    .registers 1

    return-void
.end method
