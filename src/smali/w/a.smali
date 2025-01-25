.class public final Lw/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lw/a;->a:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lw/a;->a:Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p1

    .line 1
    const-string v0, "exception in content signer: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public final write([B)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lw/a;->a:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 6
    const-string v0, "exception in content signer: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public final write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lw/a;->a:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 11
    const-string p2, "exception in content signer: "

    invoke-static {p2}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lc/h;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p3, p2, p1, v0}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p3
.end method
