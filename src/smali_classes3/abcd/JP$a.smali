.class Labcd/JP$a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/JP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final DW:Labcd/JP;

.field private j6:Ljava/security/Signature;


# direct methods
.method constructor <init>(Labcd/JP;Ljava/security/Signature;)V
    .registers 3

    iput-object p1, p0, Labcd/JP$a;->DW:Labcd/JP;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Labcd/JP$a;->j6:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method j6()[B
    .registers 2

    iget-object v0, p0, Labcd/JP$a;->j6:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/JP$a;->j6:Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception in content signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/DP;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Labcd/DP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([B)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/JP$a;->j6:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception in content signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/DP;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Labcd/DP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/JP$a;->j6:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception in content signer: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Labcd/DP;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Labcd/DP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
