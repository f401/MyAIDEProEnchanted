.class public final Lcom/google/android/gms/internal/ads/Wn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ly;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:J

.field private FH:J

.field private Hw:J

.field private VH:Z

.field private Zo:I

.field private final j6:Lcom/google/android/gms/internal/ads/oD;

.field private v5:J


# direct methods
.method constructor <init>()V
    .registers 9

    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Wn;-><init>(IIJJ)V

    return-void
.end method

.method private constructor <init>(IIJJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/oD;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/oD;-><init>(ZI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Wn;->j6:Lcom/google/android/gms/internal/ads/oD;

    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->DW:J

    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->FH:J

    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->Hw:J

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->v5:J

    return-void
.end method

.method private final j6(Z)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Wn;->Zo:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wn;->VH:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wn;->j6:Lcom/google/android/gms/internal/ads/oD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oD;->Hw()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Wn;->j6(Z)V

    return-void
.end method

.method public final DW(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->v5:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/gD;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wn;->j6:Lcom/google/android/gms/internal/ads/oD;

    return-object v0
.end method

.method public final FH(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->DW:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Hw()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Wn;->j6(Z)V

    return-void
.end method

.method public final Hw(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->FH:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Wn;->j6(Z)V

    return-void
.end method

.method public final j6(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->Hw:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Wn;->Zo:I

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Wn;->Zo:I

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oy;->v5()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/TD;->DW(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/Wn;->Zo:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wn;->j6:Lcom/google/android/gms/internal/ads/oD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Wn;->Zo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oD;->j6(I)V

    return-void
.end method

.method public final j6(J)Z
    .registers 10

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Wn;->FH:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    move v3, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Wn;->j6:Lcom/google/android/gms/internal/ads/oD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oD;->v5()I

    move-result v2

    iget v5, p0, Lcom/google/android/gms/internal/ads/Wn;->Zo:I

    if-lt v2, v5, :cond_4

    move v2, v1

    :goto_1
    if-eq v3, v4, :cond_0

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Wn;->VH:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wn;->VH:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wn;->VH:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Wn;->DW:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(JZ)Z
    .registers 9

    monitor-enter p0

    if-eqz p3, :cond_1

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->v5:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Wn;->Hw:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
