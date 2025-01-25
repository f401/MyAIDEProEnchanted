.class final synthetic Lcom/google/android/gms/internal/ads/cp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/util/Map;

.field private final j6:Lcom/google/android/gms/internal/ads/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bp;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cp;->j6:Lcom/google/android/gms/internal/ads/bp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cp;->DW:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cp;->j6:Lcom/google/android/gms/internal/ads/bp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cp;->DW:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bp;->j6(Ljava/util/Map;)V

    return-void
.end method
