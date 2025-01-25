.class public final Lcom/google/android/gms/internal/ads/XF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzty;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzty;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/QF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/QF;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
