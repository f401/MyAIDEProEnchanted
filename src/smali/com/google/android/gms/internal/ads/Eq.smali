.class final Lcom/google/android/gms/internal/ads/Eq;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Eq;->j6:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static DW(Lcom/google/android/gms/internal/ads/hs;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->Ws()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->EQ()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->J0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->EQ()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->XL()Lcom/google/android/gms/internal/ads/ts;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/ts;->j6:Lcom/google/android/gms/internal/ads/ts;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->Ws()Lcom/google/android/gms/internal/ads/as;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/as;->j6:Lcom/google/android/gms/internal/ads/as;

    if-eq v7, v8, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->Ws()Lcom/google/android/gms/internal/ads/as;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    if-ne v7, v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v7

    if-ne v7, v5, :cond_1

    if-nez v1, :cond_2

    move v1, v4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yr;->Ws()Lcom/google/android/gms/internal/ads/Yr$b;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/internal/ads/Yr$b;->Hw:Lcom/google/android/gms/internal/ads/Yr$b;

    if-eq v0, v7, :cond_0

    move v3, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset contains multiple primary keys"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v3, "key %d has unknown status"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v3, "key %d has unknown prefix"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v3, "key %d has no key data"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/js;
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/js;->EQ()Lcom/google/android/gms/internal/ads/js$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->EQ()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/js$a;->j6(I)Lcom/google/android/gms/internal/ads/js$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->J0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-static {}, Lcom/google/android/gms/internal/ads/js$b;->EQ()Lcom/google/android/gms/internal/ads/js$b$a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Yr;->EQ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/js$b$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/js$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->Ws()Lcom/google/android/gms/internal/ads/as;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/js$b$a;->j6(Lcom/google/android/gms/internal/ads/as;)Lcom/google/android/gms/internal/ads/js$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->XL()Lcom/google/android/gms/internal/ads/ts;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/js$b$a;->j6(Lcom/google/android/gms/internal/ads/ts;)Lcom/google/android/gms/internal/ads/js$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/js$b$a;->j6(I)Lcom/google/android/gms/internal/ads/js$b$a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/js$b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/js$a;->j6(Lcom/google/android/gms/internal/ads/js$b;)Lcom/google/android/gms/internal/ads/js$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/js;

    return-object v0
.end method
