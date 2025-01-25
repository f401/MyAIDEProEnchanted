.class public final Lcom/google/android/gms/internal/ads/dy;
.super Lcom/google/android/gms/internal/ads/jy;


# instance fields
.field private tp:J

.field private final u7:Lcom/google/android/gms/internal/ads/Jx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;IILcom/google/android/gms/internal/ads/Jx;)V
    .registers 15

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dy;->u7:Lcom/google/android/gms/internal/ads/Jx;

    if-eqz p7, :cond_15

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/Jx;->j6()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dy;->tp:J

    :cond_15
    return-void
.end method


# virtual methods
.method protected final j6()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dy;->u7:Lcom/google/android/gms/internal/ads/Jx;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dy;->tp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->ca:Ljava/lang/Long;

    :cond_1d
    return-void
.end method
