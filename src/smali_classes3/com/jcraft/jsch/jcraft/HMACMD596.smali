.class public Lcom/jcraft/jsch/jcraft/HMACMD596;
.super Lcom/jcraft/jsch/jcraft/HMACMD5;


# instance fields
.field private final Zo:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMACMD5;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACMD596;->Zo:[B

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public bridge synthetic j6([B)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMACMD5;->j6([B)V

    return-void
.end method

.method public j6([BI)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACMD596;->Zo:[B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/jcraft/jsch/jcraft/HMACMD5;->j6([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACMD596;->Zo:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic update(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMACMD5;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jcraft/HMACMD5;->update([BII)V

    return-void
.end method
