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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

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

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z

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

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Zo()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final gn()J
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2e

    if-nez v0, :cond_b

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_b
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v2, v3

    add-int/2addr v0, v1

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    aget-wide v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    aget v0, v0, v2
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2e

    int-to-long v0, v0

    monitor-exit p0

    add-long/2addr v3, v0

    return-wide v3

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/DB;)I
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_20

    if-eqz p4, :cond_12

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zz;->j6(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_9e

    monitor-exit p0

    return v3

    :cond_12
    :try_start_12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    if-eqz p2, :cond_1e

    if-nez p3, :cond_1a

    if-eq p2, p5, :cond_1e

    :cond_1a
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_9e

    monitor-exit p0

    return v1

    :cond_1e
    monitor-exit p0

    return v2

    :cond_20
    if-nez p3, :cond_94

    :try_start_22
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget p4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_2b

    goto :goto_94

    :cond_2b
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_9e

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    if-eqz p1, :cond_38

    monitor-exit p0

    return v2

    :cond_38
    :try_start_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget p5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v0, p1, p5

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iget p5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget p1, p1, p5

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zz;->j6(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iget p5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget p1, p1, p5

    iput p1, p6, Lcom/google/android/gms/internal/ads/DB;->j6:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget p5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v0, p1, p5

    iput-wide v0, p6, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iget p5, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-object p1, p1, p5

    iput-object p1, p6, Lcom/google/android/gms/internal/ads/DB;->Hw:Lcom/google/android/gms/internal/ads/Zz;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget p5, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    add-int/2addr p5, p4

    iput p5, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iget p4, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    if-ne p2, p4, :cond_80

    iput p3, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    :cond_80
    if-lez p1, :cond_89

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide p2, p1, p2

    goto :goto_90

    :cond_89
    iget-wide p1, p6, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget p3, p6, Lcom/google/android/gms/internal/ads/DB;->j6:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    move-wide p2, p1

    :goto_90
    iput-wide p2, p6, Lcom/google/android/gms/internal/ads/DB;->FH:J
    :try_end_92
    .catchall {:try_start_38 .. :try_end_92} :catchall_9e

    monitor-exit p0

    return v3

    :cond_94
    :goto_94
    :try_start_94
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget p3, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9e

    monitor-exit p0

    return v1

    :catchall_9e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J0:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(I)J
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Hw()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-ltz v0, :cond_e

    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    if-gt v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    if-nez v0, :cond_32

    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    if-nez p1, :cond_1f

    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    if-nez p1, :cond_1f

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1f
    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    if-nez p1, :cond_25

    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    :cond_25
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_32
    iget v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    sub-int/2addr v1, p1

    :goto_45
    if-ltz v1, :cond_63

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    aget-wide v5, v4, v0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    aget v0, v2, v0

    and-int/2addr v0, p1

    if-nez v0, :cond_63

    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    :cond_63
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public final j6(JZ)J
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    aget-wide v4, v0, v3

    cmp-long v0, p1, v4

    if-gez v0, :cond_14

    goto :goto_5a

    :cond_14
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_5c

    cmp-long v0, p1, v4

    if-lez v0, :cond_1e

    if-nez p3, :cond_1e

    monitor-exit p0

    return-wide v1

    :cond_1e
    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    :goto_21
    :try_start_21
    iget v5, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    if-eq v3, v5, :cond_3e

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    aget-wide v6, v5, v3

    cmp-long v5, v6, p1

    if-gtz v5, :cond_3e

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    aget v5, v5, v3

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_36

    move v4, v0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr v3, v5
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_5c

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3e
    if-ne v4, p3, :cond_42

    monitor-exit p0

    return-wide v1

    :cond_42
    :try_start_42
    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    add-int/2addr p1, v4

    iget p2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    sub-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    aget-wide p1, p2, p1
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_5c

    monitor-exit p0

    return-wide p1

    :cond_5a
    :goto_5a
    monitor-exit p0

    return-wide v1

    :catchall_5c
    move-exception p1

    monitor-exit p0

    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method public final j6(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/CB;->J8:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(JIJILcom/google/android/gms/internal/ads/Zz;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_cb

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/CB;->Ws:Z

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/CB;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    aput-wide p1, v0, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    aput-wide p4, p1, v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    aput p6, p2, v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    aput p3, p2, v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    aput-object p7, p2, v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    aput-object p3, p2, v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    aput v1, p2, v2

    iget p2, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iget p3, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    if-ne p2, p3, :cond_c1

    add-int/lit16 p2, p3, 0x3e8

    new-array p4, p2, [I

    new-array p5, p2, [J

    new-array p6, p2, [J

    new-array p7, p2, [I

    new-array v0, p2, [I

    new-array v2, p2, [Lcom/google/android/gms/internal/ads/Zz;

    new-array v3, p2, [Lcom/google/android/gms/internal/ads/zzfs;

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    sub-int/2addr p3, v4

    invoke-static {p1, v4, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    invoke-static {p1, v4, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    invoke-static {p1, v4, p7, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    invoke-static {p1, v4, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    invoke-static {p1, v4, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    invoke-static {p1, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    invoke-static {p1, v4, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    invoke-static {v4, v1, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    invoke-static {v4, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    invoke-static {v4, v1, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    invoke-static {v4, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    invoke-static {v4, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    invoke-static {v4, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    invoke-static {v4, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/CB;->FH:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/CB;->Zo:[J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/CB;->v5:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/CB;->Hw:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->VH:[Lcom/google/android/gms/internal/ads/Zz;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/CB;->gn:[Lcom/google/android/gms/internal/ads/zzfs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/CB;->DW:[I

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->EQ:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/CB;->u7:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/CB;->j6:I
    :try_end_bf
    .catchall {:try_start_c .. :try_end_bf} :catchall_cb

    monitor-exit p0

    return-void

    :cond_c1
    add-int/lit8 v2, v2, 0x1

    :try_start_c3
    iput v2, p0, Lcom/google/android/gms/internal/ads/CB;->we:I

    if-ne v2, p3, :cond_c9

    iput v1, p0, Lcom/google/android/gms/internal/ads/CB;->we:I
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_cb

    :cond_c9
    monitor-exit p0

    return-void

    :catchall_cb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    monitor-exit p0

    return v1

    :cond_9
    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/CB;->QX:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_19

    if-eqz v2, :cond_15

    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CB;->XL:Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final v5()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/CB;->tp:I

    return v0
.end method
