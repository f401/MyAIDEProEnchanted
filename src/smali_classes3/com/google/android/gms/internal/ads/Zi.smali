.class final Lcom/google/android/gms/internal/ads/Zi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Xi;

.field private final j6:Lcom/google/android/gms/internal/ads/lk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Xi;Lcom/google/android/gms/internal/ads/lk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zi;->DW:Lcom/google/android/gms/internal/ads/Xi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zi;->j6:Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zi;->DW:Lcom/google/android/gms/internal/ads/Xi;

    new-instance v10, Lcom/google/android/gms/internal/ads/kk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zi;->j6:Lcom/google/android/gms/internal/ads/lk;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;Lcom/google/android/gms/internal/ads/ka;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
