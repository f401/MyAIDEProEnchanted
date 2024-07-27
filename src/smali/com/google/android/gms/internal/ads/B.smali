.class public final Lcom/google/android/gms/internal/ads/B;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/D;

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/A;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/D;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/B;->DW:Lcom/google/android/gms/internal/ads/D;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/B;->j6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/D;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B;->DW:Lcom/google/android/gms/internal/ads/D;

    return-object v0
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B;->j6:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/B;->DW:Lcom/google/android/gms/internal/ads/D;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B;->j6:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/A;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/B;->j6:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B;->DW:Lcom/google/android/gms/internal/ads/D;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, p3, p4, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;J[Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/D;->j6(J)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    goto :goto_1
.end method
