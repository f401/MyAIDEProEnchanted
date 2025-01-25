.class final Lcom/google/android/gms/internal/ads/Wq;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    sget-object p0, Lcom/google/android/gms/internal/ads/Ms;->FH:Lcom/google/android/gms/internal/ads/Ms;

    return-object p0

    :cond_14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/ads/Ms;->DW:Lcom/google/android/gms/internal/ads/Ms;

    return-object p0

    :cond_3c
    sget-object p0, Lcom/google/android/gms/internal/ads/Ms;->j6:Lcom/google/android/gms/internal/ads/Ms;

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zr;)Lcom/google/android/gms/internal/ads/Ns;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    sget-object p0, Lcom/google/android/gms/internal/ads/Ns;->DW:Lcom/google/android/gms/internal/ads/Ns;

    return-object p0

    :cond_14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/ads/Ns;->FH:Lcom/google/android/gms/internal/ads/Ns;

    return-object p0

    :cond_3c
    sget-object p0, Lcom/google/android/gms/internal/ads/Ns;->j6:Lcom/google/android/gms/internal/ads/Ns;

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Qr;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    const-string p0, "HmacSha512"

    return-object p0

    :cond_14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    const-string p0, "HmacSha256"

    return-object p0

    :cond_3c
    const-string p0, "HmacSha1"

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Gr;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Mr;->J0()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Qr;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Gr;->Ws()Lcom/google/android/gms/internal/ads/zr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->j6:Lcom/google/android/gms/internal/ads/zr;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Yr;

    return-void

    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
