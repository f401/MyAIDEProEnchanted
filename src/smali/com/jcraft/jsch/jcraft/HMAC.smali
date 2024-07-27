.class Lcom/jcraft/jsch/jcraft/HMAC;
.super Ljava/lang/Object;


# instance fields
.field private DW:[B

.field private FH:Ljava/security/MessageDigest;

.field private Hw:I

.field private j6:[B

.field private final v5:[B


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->j6:[B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->DW:[B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->Hw:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->v5:[B

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->Hw:I

    return v0
.end method

.method protected j6(Ljava/security/MessageDigest;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->Hw:I

    return-void
.end method

.method public j6([B)V
    .registers 7

    const/16 v4, 0x40

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    array-length v0, p1

    iget v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->Hw:I

    if-le v0, v2, :cond_0

    new-array v0, v2, [B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    array-length v0, p1

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    :cond_1
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->j6:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->j6:[B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->DW:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->DW:[B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->j6:[B

    invoke-virtual {v0, v2, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->j6:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->DW:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6([BI)V
    .registers 8

    const/16 v4, 0x40

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->DW:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    iget v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->Hw:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    iget v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->Hw:I

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->j6:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public update(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->v5:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v3, v1}, Lcom/jcraft/jsch/jcraft/HMAC;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
