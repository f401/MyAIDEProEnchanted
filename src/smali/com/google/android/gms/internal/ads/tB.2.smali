.class final Lcom/google/android/gms/internal/ads/tB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wD;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/iD;

.field private final FH:Lcom/google/android/gms/internal/ads/uB;

.field private final Hw:Lcom/google/android/gms/internal/ads/ED;

.field private VH:Z

.field private volatile Zo:Z

.field private gn:J

.field private final j6:Landroid/net/Uri;

.field private final tp:Lcom/google/android/gms/internal/ads/oB;

.field private u7:J

.field private final v5:Lcom/google/android/gms/internal/ads/Vz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oB;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/uB;Lcom/google/android/gms/internal/ads/ED;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tB;->j6:Landroid/net/Uri;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/iD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/internal/ads/uB;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tB;->FH:Lcom/google/android/gms/internal/ads/uB;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tB;->Hw:Lcom/google/android/gms/internal/ads/ED;

    new-instance v0, Lcom/google/android/gms/internal/ads/Vz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Vz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tB;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    return-wide v0
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/tB;->Zo:Z

    return v0
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tB;->Zo:Z

    return-void
.end method

.method public final j6()V
    .registers 13

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/tB;->Zo:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    new-instance v0, Lcom/google/android/gms/internal/ads/mD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->j6:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/oB;->Zo(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;-><init>(Lcom/google/android/gms/internal/ads/iD;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->FH:Lcom/google/android/gms/internal/ads/uB;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/iD;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/uB;->j6(Lcom/google/android/gms/internal/ads/Qz;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/Oz;

    move-result-object v6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    if-eqz v1, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/tB;->gn:J

    invoke-interface {v6, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Oz;->j6(JJ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v2

    move v1, v7

    :goto_1
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/tB;->Zo:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tB;->Hw:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ED;->j6()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    invoke-interface {v6, v0, v2}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/oB;->VH(Lcom/google/android/gms/internal/ads/oB;)J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-lez v1, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->Hw:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ED;->FH()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/oB;->u7(Lcom/google/android/gms/internal/ads/oB;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/oB;->gn(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    move v7, v0

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v1

    move v3, v7

    :goto_3
    move-object v1, v0

    :goto_4
    const/4 v0, 0x1

    if-eq v3, v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    throw v2

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v7

    goto :goto_4

    :cond_4
    return-void

    :catchall_2
    move-exception v2

    move v3, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v1

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move-wide v4, v2

    move v1, v7

    goto :goto_1
.end method

.method public final j6(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/tB;->gn:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    return-void
.end method
