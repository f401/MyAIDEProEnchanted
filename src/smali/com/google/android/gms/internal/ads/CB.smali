.class final Lcom/google/android/gms/internal/ads/CB;
.super Ljava/lang/Object;


# instance fields
.field private DW:[I

.field private EQ:I

.field private FH:[J

.field private Hw:[I

.field private J0:J

.field private J8:J

.field private QX:Z

.field private VH:[Lcom/google/android/gms/internal/ads/Zz;

.field private Ws:Z

.field private XL:Lcom/google/android/gms/internal/ads/zzfs;

.field private Zo:[J

.field private gn:[Lcom/google/android/gms/internal/ads/zzfs;

.field private j6:I

.field private tp:I

.field private u7:I

.field private v5:[I

.field private we:I


# direct methods
.method public constructor <init>()V
    .registers 7

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/Zz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z

    return-void
.end method

.method public final FH()V
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    return-void
.end method

.method public final Hw()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final VH()Lcom/google/android/gms/internal/ads/zzfs;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Zo()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final gn()J
    .registers 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    aget v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    add-long/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/DB;)I
    .registers 13

    const/4 v3, 0x0

    const/4 v2, -0x3

    const/4 v0, -0x4

    const/4 v1, -0x5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p4, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zz;->j6(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    if-eq v0, p5, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_2
    monitor-exit p0

    move v0, v2

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget v5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-object v4, v4, v5

    if-eq v4, p5, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_5
    :try_start_3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_7

    monitor-exit p0

    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v2, v1, v2

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zz;->j6(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget v1, v1, v2

    iput v1, p6, Lcom/google/android/gms/internal/ads/DB;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v2, v1, v2

    iput-wide v2, p6, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-object v1, v1, v2

    iput-object v1, p6, Lcom/google/android/gms/internal/ads/DB;->Hw:Lcom/google/android/gms/internal/ads/Zz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v2, v1, v2

    :goto_2
    iput-wide v2, p6, Lcom/google/android/gms/internal/ads/DB;->FH:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    :try_start_5
    iget-wide v2, p6, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget v1, p6, Lcom/google/android/gms/internal/ads/DB;->j6:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()J
    .registers 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(I)J
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Hw()I

    move-result v0

    sub-int v1, v0, p1

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    if-nez v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    aget v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v1, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    aget-wide v4, v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    aget v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aget-wide v0, v0, v1

    goto :goto_1
.end method

.method public final j6(JZ)J
    .registers 13

    const/4 v4, -0x1

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-wide v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    if-nez p3, :cond_2

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_2
    iget v5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v3, 0x0

    move v2, v4

    :goto_1
    iget v6, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    if-eq v5, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    aget-wide v6, v6, v5

    cmp-long v6, v6, p1

    if-gtz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    aget v6, v6, v5

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    monitor-exit p0

    goto :goto_0

    :cond_5
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v0, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(J)V
    .registers 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(JIJILcom/google/android/gms/internal/ads/Zz;)V
    .registers 21

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/CB;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aput-wide p4, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aput p6, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aput-object p7, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    add-int/lit16 v0, v0, 0x3e8

    new-array v1, v0, [I

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v4, v0, [I

    new-array v5, v0, [I

    new-array v6, v0, [Lcom/google/android/gms/internal/ads/Zz;

    new-array v7, v0, [Lcom/google/android/gms/internal/ads/zzfs;

    iget v8, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    iget v10, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v5()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    return v0
.end method
