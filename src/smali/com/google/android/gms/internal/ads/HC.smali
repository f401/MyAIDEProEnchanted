.class public abstract Lcom/google/android/gms/internal/ads/HC;
.super Lcom/google/android/gms/internal/ads/GC;


# instance fields
.field final Hw:I

.field final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/KC;",
            ">;"
        }
    .end annotation
.end field

.field final v5:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/BC;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/KC;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/GC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJ)V

    iput p6, p0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract j6(J)I
.end method

.method public final j6(I)J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/KC;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/KC;->j6:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/GC;->FH:J

    sub-long/2addr v0, v2

    :goto_0
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/GC;->DW:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v0, p1, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public abstract j6(Lcom/google/android/gms/internal/ads/CC;I)Lcom/google/android/gms/internal/ads/BC;
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
