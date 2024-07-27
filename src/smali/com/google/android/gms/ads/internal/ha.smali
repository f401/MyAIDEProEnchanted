.class final Lcom/google/android/gms/ads/internal/ha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/fa;

.field private final j6:Lcom/google/android/gms/internal/ads/lk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/fa;Lcom/google/android/gms/internal/ads/lk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ha;->DW:Lcom/google/android/gms/ads/internal/fa;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ha;->j6:Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/ha;->DW:Lcom/google/android/gms/ads/internal/fa;

    new-instance v0, Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ha;->j6:Lcom/google/android/gms/internal/ads/lk;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;Lcom/google/android/gms/internal/ads/ka;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
