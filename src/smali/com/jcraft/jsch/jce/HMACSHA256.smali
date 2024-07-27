.class public Lcom/jcraft/jsch/jce/HMACSHA256;
.super Lcom/jcraft/jsch/jce/HMAC;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const-string v0, "hmac-sha2-256"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->j6:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lcom/jcraft/jsch/jce/HMAC;->DW:I

    const-string v0, "HmacSHA256"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic j6()I
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMAC;->j6()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j6([B)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->j6([B)V

    return-void
.end method

.method public bridge synthetic j6([BI)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/HMAC;->j6([BI)V

    return-void
.end method

.method public bridge synthetic update(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMAC;->update([BII)V

    return-void
.end method
