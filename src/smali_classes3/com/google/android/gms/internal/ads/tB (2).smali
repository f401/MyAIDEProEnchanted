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
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tB;->j6:Landroid/net/Uri;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/iD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/internal/ads/uB;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tB;->FH:Lcom/google/android/gms/internal/ads/uB;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tB;->Hw:Lcom/google/android/gms/internal/ads/ED;

    new-instance p1, Lcom/google/android/gms/internal/ads/Vz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Vz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

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
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_b3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/tB;->Zo:Z

    if-nez v2, :cond_b3

    const/4 v2, 0x1

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    new-instance v13, Lcom/google/android/gms/internal/ads/mD;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->j6:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/oB;->Zo(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v13

    move-wide v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v3, v13}, Lcom/google/android/gms/internal/ads/iD;->j6(Lcom/google/android/gms/internal/ads/mD;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2f

    add-long/2addr v3, v11

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    :cond_2f
    new-instance v3, Lcom/google/android/gms/internal/ads/Mz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/tB;->u7:J

    move-object v4, v3

    move-wide v6, v11

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Mz;-><init>(Lcom/google/android/gms/internal/ads/iD;JJ)V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_9f

    :try_start_3a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tB;->FH:Lcom/google/android/gms/internal/ads/uB;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/iD;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/uB;->j6(Lcom/google/android/gms/internal/ads/Qz;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/Oz;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    if-eqz v5, :cond_51

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/tB;->gn:J

    invoke-interface {v4, v11, v12, v5, v6}, Lcom/google/android/gms/internal/ads/Oz;->j6(JJ)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    :cond_51
    :goto_51
    if-nez v1, :cond_8a

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/tB;->Zo:Z

    if-nez v5, :cond_8a

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->Hw:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ED;->j6()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/ads/Oz;->j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I

    move-result v1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/oB;->VH(Lcom/google/android/gms/internal/ads/oB;)J

    move-result-wide v7

    add-long/2addr v7, v11

    cmp-long v9, v5, v7

    if-lez v9, :cond_51

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v11

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->Hw:Lcom/google/android/gms/internal/ads/ED;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ED;->FH()Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/oB;->u7(Lcom/google/android/gms/internal/ads/oB;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/tB;->tp:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/oB;->gn(Lcom/google/android/gms/internal/ads/oB;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_89
    .catchall {:try_start_3a .. :try_end_89} :catchall_9d

    goto :goto_51

    :cond_8a
    if-ne v1, v2, :cond_8e

    const/4 v1, 0x0

    goto :goto_96

    :cond_8e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    :goto_96
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    goto/16 :goto_2

    :catchall_9d
    move-exception v0

    goto :goto_a1

    :catchall_9f
    move-exception v0

    const/4 v3, 0x0

    :goto_a1
    if-eq v1, v2, :cond_ad

    if-eqz v3, :cond_ad

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    :cond_ad
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tB;->DW:Lcom/google/android/gms/internal/ads/iD;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Lcom/google/android/gms/internal/ads/iD;)V

    throw v0

    :cond_b3
    return-void
.end method

.method public final j6(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tB;->v5:Lcom/google/android/gms/internal/ads/Vz;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/tB;->gn:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tB;->VH:Z

    return-void
.end method
