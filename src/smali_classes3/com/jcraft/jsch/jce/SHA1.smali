.class public Lcom/jcraft/jsch/jce/SHA1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/HASH;


# instance fields
.field j6:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SHA1;->j6:Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public FH()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SHA1;->j6:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SHA1;->j6:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
