.class abstract Lcom/jcraft/jsch/jce/HMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# instance fields
.field protected DW:I

.field protected FH:Ljava/lang/String;

.field private Hw:Ljavax/crypto/Mac;

.field protected j6:Ljava/lang/String;

.field private final v5:[B


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->v5:[B

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/jce/HMAC;->DW:I

    return v0
.end method

.method public j6([B)V
    .registers 5

    array-length v0, p1

    iget v1, p0, Lcom/jcraft/jsch/jce/HMAC;->DW:I

    if-le v0, v1, :cond_c

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->FH:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->FH:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->Hw:Ljavax/crypto/Mac;

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void
.end method

.method public j6([BI)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->Hw:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_c
    return-void
.end method

.method public update(I)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->v5:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x4

    invoke-virtual {p0, v0, v2, p1}, Lcom/jcraft/jsch/jce/HMAC;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->Hw:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
