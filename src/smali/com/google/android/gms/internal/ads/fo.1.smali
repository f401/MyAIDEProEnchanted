.class final Lcom/google/android/gms/internal/ads/fo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/iD;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:J

.field private final FH:Lcom/google/android/gms/internal/ads/iD;

.field private Hw:J

.field private final j6:Lcom/google/android/gms/internal/ads/iD;

.field private v5:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iD;ILcom/google/android/gms/internal/ads/iD;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fo;->FH:Lcom/google/android/gms/internal/ads/iD;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/iD;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->FH:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/iD;->close()V

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->v5:Landroid/net/Uri;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;)J
    .registers 16

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->v5:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    move-object v7, v6

    :goto_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_3

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    :goto_1
    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v0

    move-wide v2, v0

    :goto_2
    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->FH:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v0

    :goto_3
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_0

    cmp-long v4, v0, v8

    if-nez v4, :cond_6

    :cond_0
    :goto_4
    return-wide v8

    :cond_1
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_5
    new-instance v0, Lcom/google/android/gms/internal/ads/mD;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v7, v0

    goto :goto_0

    :cond_2
    sub-long v4, v0, v2

    goto :goto_5

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    cmp-long v4, v0, v8

    if-eqz v4, :cond_4

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    add-long/2addr v4, v0

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    sub-long/2addr v4, v12

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/ads/mD;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v6, v0

    goto :goto_1

    :cond_4
    move-wide v4, v8

    goto :goto_6

    :cond_5
    move-wide v2, v10

    goto :goto_2

    :cond_6
    add-long v8, v2, v0

    goto :goto_4

    :cond_7
    move-wide v0, v10

    goto :goto_3
.end method

.method public final read([BII)I
    .registers 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    int-to-long v4, p3

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fo;->FH:Lcom/google/android/gms/internal/ads/iD;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
