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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

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
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/fo;->v5:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    cmp-long v4, v5, v2

    if-ltz v4, :cond_15

    move-object v2, v10

    goto :goto_2a

    :cond_15
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    cmp-long v4, v7, v11

    sub-long/2addr v2, v5

    if-eqz v4, :cond_20

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_20
    move-wide v7, v2

    new-instance v2, Lcom/google/android/gms/internal/ads/mD;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_2a
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_3a

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    add-long/2addr v5, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_3a

    goto :goto_61

    :cond_3a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_55

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    add-long/2addr v5, v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_57

    :cond_55
    move-wide/from16 v17, v11

    :goto_57
    new-instance v10, Lcom/google/android/gms/internal/ads/mD;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    const/16 v19, 0x0

    move-object v13, v10

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_61
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_6c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v5

    goto :goto_6d

    :cond_6c
    move-wide v5, v3

    :goto_6d
    if-eqz v10, :cond_75

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fo;->FH:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v3

    :cond_75
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    cmp-long v1, v5, v11

    if-eqz v1, :cond_84

    cmp-long v1, v3, v11

    if-nez v1, :cond_82

    goto :goto_84

    :cond_82
    add-long/2addr v5, v3

    return-wide v5

    :cond_84
    :goto_84
    return-wide v11
.end method

.method public final read([BII)I
    .registers 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    int-to-long v4, p3

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->j6:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/fo;->DW:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fo;->FH:Lcom/google/android/gms/internal/ads/iD;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/fo;->Hw:J

    :cond_34
    return v0
.end method
