.class final synthetic Lcom/google/android/gms/internal/ads/fd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/gmsg/B;

.field private final FH:Ljava/util/Map;

.field private final j6:Lcom/google/android/gms/internal/ads/ed;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ed;Lcom/google/android/gms/ads/internal/gmsg/B;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fd;->j6:Lcom/google/android/gms/internal/ads/ed;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fd;->DW:Lcom/google/android/gms/ads/internal/gmsg/B;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fd;->FH:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fd;->j6:Lcom/google/android/gms/internal/ads/ed;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fd;->DW:Lcom/google/android/gms/ads/internal/gmsg/B;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fd;->FH:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ed;->j6(Lcom/google/android/gms/ads/internal/gmsg/B;Ljava/util/Map;)V

    return-void
.end method
