.class public final L淆淆淆淆混淆混淆淆混淆混淆淆混混混淆淆淆淆混混淆混混淆淆混混混混混淆淆淆混混淆混淆淆淆淆淆淆淆淆淆混混混淆淆混混混淆混混淆混混淆混混淆混淆淆淆淆混淆淆淆混混淆混混淆混混淆淆淆淆淆淆淆淆淆淆混混混淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public 淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, L淆淆淆淆混淆混淆淆混淆混淆淆混混混淆淆淆淆混混淆混混淆淆混混混混混淆淆淆混混淆混淆淆淆淆淆淆淆淆淆混混混淆淆混混混淆混混淆混混淆混混淆混淆淆淆淆混淆淆淆混混淆混混淆混混淆淆淆淆淆淆淆淆淆淆混混混淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, L淆淆淆淆混淆混淆淆混淆混淆淆混混混淆淆淆淆混混淆混混淆淆混混混混混淆淆淆混混淆混淆淆淆淆淆淆淆淆淆混混混淆淆混混混淆混混淆混混淆混混淆混淆淆淆淆混淆淆淆混混淆混混淆混混淆淆淆淆淆淆淆淆淆淆混混混淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:Ljava/security/Signature;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "exception in content signer: "

    invoke-static {v1}, L淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混淆混淆混淆淆淆混淆混淆淆淆淆淆混淆淆淆混淆淆淆淆淆混混淆混淆混淆混淆混混混淆混混混淆混混淆混混淆淆淆淆淆淆淆淆混淆混混淆混混混混混混混淆混淆混混混混淆混混混淆混混淆混淆淆淆混淆淆混淆淆淆淆;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混淆混淆混淆淆淆混淆混淆淆淆淆淆混淆淆淆混淆淆淆淆淆混混淆混淆混淆混淆混混混淆混混混淆混混淆混混淆淆淆淆淆淆淆淆混淆混混淆混混混混混混混淆混淆混混混混淆混混混淆混混淆混淆淆淆混淆淆混淆淆淆淆;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final write([B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, L淆淆淆淆混淆混淆淆混淆混淆淆混混混淆淆淆淆混混淆混混淆淆混混混混混淆淆淆混混淆混淆淆淆淆淆淆淆淆淆混混混淆淆混混混淆混混淆混混淆混混淆混淆淆淆淆混淆淆淆混混淆混混淆混混淆淆淆淆淆淆淆淆淆淆混混混淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "exception in content signer: "

    invoke-static {v1}, L淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混淆混淆混淆淆淆混淆混淆淆淆淆淆混淆淆淆混淆淆淆淆淆混混淆混淆混淆混淆混混混淆混混混淆混混淆混混淆淆淆淆淆淆淆淆混淆混混淆混混混混混混混淆混淆混混混混淆混混混淆混混淆混淆淆淆混淆淆混淆淆淆淆;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混淆混淆混淆淆淆混淆混淆淆淆淆淆混淆淆淆混淆淆淆淆淆混混淆混淆混淆混淆混混混淆混混混淆混混淆混混淆淆淆淆淆淆淆淆混淆混混淆混混混混混混混淆混淆混混混混淆混混混淆混混淆混淆淆淆混淆淆混淆淆淆淆;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final write([BII)V
    .registers 8

    :try_start_0
    iget-object v0, p0, L淆淆淆淆混淆混淆淆混淆混淆淆混混混淆淆淆淆混混淆混混淆淆混混混混混淆淆淆混混淆混淆淆淆淆淆淆淆淆淆混混混淆淆混混混淆混混淆混混淆混混淆混淆淆淆淆混淆淆淆混混淆混混淆混混淆淆淆淆淆淆淆淆淆淆混混混淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    const-string v1, "exception in content signer: "

    invoke-static {v1}, L淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混/淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混淆混淆混淆淆淆混淆混淆淆淆淆淆混淆淆淆混淆淆淆淆淆混混淆混淆混淆混淆混混混淆混混混淆混混淆混混淆淆淆淆淆淆淆淆混淆混混淆混混混混混混混淆混淆混混混混淆混混混淆混混淆混淆淆淆混淆淆混淆淆淆淆;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混淆混淆混淆淆淆混淆混淆淆淆淆淆混淆淆淆混淆淆淆淆淆混混淆混淆混淆混淆混混混淆混混混淆混混淆混混淆淆淆淆淆淆淆淆混淆混混淆混混混混混混混淆混淆混混混混淆混混混淆混混淆混淆淆淆混淆淆混淆淆淆淆;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method
