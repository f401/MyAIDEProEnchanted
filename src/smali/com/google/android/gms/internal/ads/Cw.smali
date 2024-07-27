.class public final Lcom/google/android/gms/internal/ads/Cw;
.super Ljava/lang/Object;


# direct methods
.method public static j6(J)Ljava/util/Date;
    .registers 8

    new-instance v0, Ljava/util/Date;

    const-wide/32 v2, 0x7c25b080

    sub-long v2, p0, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
