.class Labcd/cO$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final DW:Ljava/lang/Object;

.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final Zo:Labcd/WN;

.field final j6:Ljava/security/PrivateKey;

.field final v5:Labcd/WN;


# virtual methods
.method j6(Ljava/security/SecureRandom;Ljava/security/Provider;Z)Labcd/kO;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Labcd/eO;->j6:Labcd/eO;

    iget-object v2, p0, Labcd/cO$a;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Labcd/eO;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Labcd/eO;->j6:Labcd/eO;

    iget-object v2, p0, Labcd/cO$a;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Labcd/eO;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/nO;

    new-instance v2, Labcd/GP;

    invoke-direct {v2}, Labcd/GP;-><init>()V

    invoke-direct {v1, v2}, Labcd/nO;-><init>(Labcd/AP;)V

    if-eqz p3, :cond_36

    iget-object v2, p0, Labcd/cO$a;->v5:Labcd/WN;

    invoke-virtual {v1, v2}, Labcd/nO;->j6(Labcd/WN;)Labcd/nO;

    :cond_36
    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {v1, p3}, Labcd/nO;->j6(Z)Labcd/nO;

    iget-object p3, p0, Labcd/cO$a;->Zo:Labcd/WN;

    invoke-virtual {v1, p3}, Labcd/nO;->DW(Labcd/WN;)Labcd/nO;

    :try_start_40
    new-instance p3, Labcd/JP;

    invoke-direct {p3, v0}, Labcd/JP;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Labcd/JP;->j6(Ljava/security/SecureRandom;)Labcd/JP;
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_48} :catch_67

    if-eqz p2, :cond_4d

    invoke-virtual {p3, p2}, Labcd/JP;->j6(Ljava/security/Provider;)Labcd/JP;

    :cond_4d
    iget-object p1, p0, Labcd/cO$a;->j6:Ljava/security/PrivateKey;

    invoke-virtual {p3, p1}, Labcd/JP;->j6(Ljava/security/PrivateKey;)Labcd/vP;

    move-result-object p1

    iget-object p2, p0, Labcd/cO$a;->DW:Ljava/lang/Object;

    instance-of p3, p2, Ljava/security/cert/X509Certificate;

    if-eqz p3, :cond_60

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1, p2}, Labcd/nO;->j6(Labcd/vP;Ljava/security/cert/X509Certificate;)Labcd/kO;

    move-result-object p1

    return-object p1

    :cond_60
    check-cast p2, [B

    invoke-virtual {v1, p1, p2}, Labcd/nO;->j6(Labcd/vP;[B)Labcd/kO;

    move-result-object p1

    return-object p1

    :catch_67
    move-exception p1

    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
