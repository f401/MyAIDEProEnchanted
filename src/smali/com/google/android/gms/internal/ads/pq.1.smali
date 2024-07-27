.class public final Lcom/google/android/gms/internal/ads/pq;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;
    .registers 8

    invoke-static {}, Lcom/google/android/gms/internal/ads/fs;->aM()Lcom/google/android/gms/internal/ads/fs$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/fs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fs$a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "type.googleapis.com/google.crypto.tink."

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/fs$a;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fs$a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/fs$a;->j6(I)Lcom/google/android/gms/internal/ads/fs$a;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/fs$a;->j6(Z)Lcom/google/android/gms/internal/ads/fs$a;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/fs$a;->FH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fs$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fs;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink."

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/vs;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vs;->EQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/oq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->Ws()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/oq;->j6(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->QX()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Lcom/google/android/gms/internal/ads/uq;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing catalogue_name."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing primitive_name."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing type_url."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
