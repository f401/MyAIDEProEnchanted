.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final j6:[B


# instance fields
.field protected FH:Ljava/lang/String;

.field protected Hw:Ljava/lang/String;

.field protected VH:Ljava/lang/String;

.field protected Zo:[B

.field protected v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/HostKey;->j6:[B

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/HostKey;->DW:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .registers 11

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    if-nez p3, :cond_23

    const/16 p1, 0x8

    aget-byte p1, p4, p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    :goto_12
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    goto :goto_25

    :cond_15
    const/16 p2, 0x72

    if-ne p1, p2, :cond_1b

    const/4 p1, 0x2

    goto :goto_12

    :cond_1b
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "invalid key type"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    :goto_25
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->Zo:[B

    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->VH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method private DW(Ljava/lang/String;)Z
    .registers 13

    iget-object v6, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v7, :cond_f

    return v9

    :cond_f
    const/16 v0, 0x2c

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v0, -0x1

    if-ne v10, v0, :cond_26

    sub-int/2addr v7, v2

    if-eq v8, v7, :cond_1c

    return v9

    :cond_1c
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v3, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_26
    sub-int v0, v10, v2

    if-ne v8, v0, :cond_37

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v3, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 p1, 0x1

    return p1

    :cond_37
    add-int/lit8 v2, v10, 0x1

    goto :goto_c
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Zo:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->FH([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->VH:Ljava/lang/String;

    return-object v0
.end method

.method j6(Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->DW(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public v5()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/jcraft/jsch/HostKey;->j6:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/jcraft/jsch/HostKey;->DW:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, "UNKNOWN"

    return-object v0
.end method
