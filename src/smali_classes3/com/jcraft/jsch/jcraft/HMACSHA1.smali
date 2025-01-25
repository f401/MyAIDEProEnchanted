.class public Lcom/jcraft/jsch/jcraft/HMACSHA1;
.super Lcom/jcraft/jsch/jcraft/HMAC;

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMAC;-><init>()V

    :try_start_3
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jcraft/HMAC;->j6(Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6()I
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/jcraft/HMAC;->j6()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j6([B)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMAC;->j6([B)V

    return-void
.end method

.method public bridge synthetic j6([BI)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jcraft/HMAC;->j6([BI)V

    return-void
.end method

.method public bridge synthetic update(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMAC;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jcraft/HMAC;->update([BII)V

    return-void
.end method
