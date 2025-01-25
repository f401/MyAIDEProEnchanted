.class final Lcom/google/android/gms/ads/internal/ja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/ia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ia;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ja;->j6:Lcom/google/android/gms/ads/internal/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ja;->j6:Lcom/google/android/gms/ads/internal/ia;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    new-instance v11, Lcom/google/android/gms/internal/ads/kk;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;Lcom/google/android/gms/internal/ads/ka;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
