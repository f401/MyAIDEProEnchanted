.class public final Lcom/google/android/gms/internal/ads/pq;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/fs;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/fs;->aM()Lcom/google/android/gms/internal/ads/fs$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/fs$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fs$a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p4, "type.googleapis.com/google.crypto.tink."

    if-eqz p2, :cond_18

    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_18
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/fs$a;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fs$a;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/fs$a;->j6(I)Lcom/google/android/gms/internal/ads/fs$a;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/fs$a;->j6(Z)Lcom/google/android/gms/internal/ads/fs$a;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/fs$a;->FH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fs$a;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/fs;

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/vs;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vs;->EQ()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/oq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->Ws()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/oq;->j6(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fs;->QX()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Lcom/google/android/gms/internal/ads/uq;Z)V

    goto :goto_8

    :cond_52
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    return-void
.end method
