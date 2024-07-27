.class final Lcom/google/android/gms/internal/ads/pd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/id;

.field private final j6:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pd;->DW:Lcom/google/android/gms/internal/ads/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pd;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/pd;)Lcom/google/android/gms/ads/internal/gmsg/B;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pd;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pd;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pd;->DW:Lcom/google/android/gms/internal/ads/id;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/internal/gmsg/B;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
