.class final Lcom/google/android/gms/internal/ads/Pg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Pg;->DW:Lcom/google/android/gms/internal/ads/Kg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pg;->j6:Lcom/google/android/gms/internal/ads/aa;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V

    return-void
.end method
