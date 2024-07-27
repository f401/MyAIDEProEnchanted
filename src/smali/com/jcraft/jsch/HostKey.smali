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
    .registers 9

    const/16 v2, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    if-nez p3, :cond_2

    aget-byte v0, p4, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    :goto_0
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->Zo:[B

    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->VH:Ljava/lang/String;

    return-void

    :cond_0
    aget-byte v0, p4, v2

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid key type"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method private DW(Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->Hw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v4

    :goto_0
    if-lt v2, v6, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v3, -0x1

    if-ne v7, v3, :cond_2

    sub-int v3, v6, v2

    if-ne v5, v3, :cond_0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_1

    :cond_2
    sub-int v3, v7, v2

    if-ne v5, v3, :cond_3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v7, 0x1

    goto :goto_0
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
    .registers 3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->DW(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public v5()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->v5:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jcraft/jsch/HostKey;->j6:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/jcraft/jsch/HostKey;->DW:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method
