.class final Lcom/google/android/gms/internal/ads/lv;
.super Lcom/google/android/gms/internal/ads/rv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/rv;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/iv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/iv;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lv;->DW:Lcom/google/android/gms/internal/ads/iv;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rv;-><init>(Lcom/google/android/gms/internal/ads/iv;Lcom/google/android/gms/internal/ads/jv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/iv;Lcom/google/android/gms/internal/ads/jv;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/lv;-><init>(Lcom/google/android/gms/internal/ads/iv;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/kv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lv;->DW:Lcom/google/android/gms/internal/ads/iv;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kv;-><init>(Lcom/google/android/gms/internal/ads/iv;Lcom/google/android/gms/internal/ads/jv;)V

    return-object v0
.end method
