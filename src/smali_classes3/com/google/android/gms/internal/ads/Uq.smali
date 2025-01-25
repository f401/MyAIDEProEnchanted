.class public final Lcom/google/android/gms/internal/ads/Uq;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/Uq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Uq;->j6:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/vq;)Lcom/google/android/gms/internal/ads/tq;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Lcom/google/android/gms/internal/ads/vq;Lcom/google/android/gms/internal/ads/uq;)Lcom/google/android/gms/internal/ads/Aq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Aq;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Cq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Cq;->j6()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/tq;

    if-eqz v2, :cond_32

    goto :goto_1d

    :cond_32
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid HybridEncrypt key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/ads/Vq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Vq;-><init>(Lcom/google/android/gms/internal/ads/Aq;)V

    return-object v0
.end method
