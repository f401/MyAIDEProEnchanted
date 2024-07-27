.class final Lcom/google/android/gms/internal/ads/Pg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Kg;

.field private final j6:Lcom/google/android/gms/internal/ads/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pg;->DW:Lcom/google/android/gms/internal/ads/Kg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pg;->j6:Lcom/google/android/gms/internal/ads/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pg;->DW:Lcom/google/android/gms/internal/ads/Kg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pg;->j6:Lcom/google/android/gms/internal/ads/aa;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V

    return-void
.end method
