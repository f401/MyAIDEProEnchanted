.class public final Lcom/google/android/gms/internal/ads/RD;
.super Ljava/lang/Object;


# direct methods
.method public static j6()V
    .registers 2

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    return-void
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
