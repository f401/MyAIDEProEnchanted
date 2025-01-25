.class public final Lcom/google/android/gms/internal/ads/oD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/gD;


# instance fields
.field private final DW:I

.field private final FH:[B

.field private final Hw:[Lcom/google/android/gms/internal/ads/fD;

.field private VH:I

.field private Zo:I

.field private gn:[Lcom/google/android/gms/internal/ads/fD;

.field private final j6:Z

.field private v5:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/high16 p1, 0x10000

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/oD;-><init>(ZII)V

    return-void
.end method

.method private constructor <init>(ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/oD;->j6:Z

    const/high16 p2, 0x10000

    iput p2, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    const/16 p2, 0x64

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/fD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oD;->FH:[B

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/fD;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oD;->Hw:[Lcom/google/android/gms/internal/ads/fD;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    return v0
.end method

.method public final FH()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->v5:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_21

    if-lt v0, v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Hw()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oD;->j6:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/oD;->j6(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/fD;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    if-lez v0, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_23

    aget-object v2, v1, v0

    const/4 v3, 0x0

    :try_start_14
    aput-object v3, v1, v0

    goto :goto_21

    :cond_17
    new-instance v2, Lcom/google/android/gms/internal/ads/fD;

    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/fD;-><init>([BI)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_23

    :goto_21
    monitor-exit p0

    return-object v2

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->v5:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput p1, p0, Lcom/google/android/gms/internal/ads/oD;->v5:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oD;->FH()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/fD;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->Hw:[Lcom/google/android/gms/internal/ads/fD;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/oD;->j6([Lcom/google/android/gms/internal/ads/fD;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/fD;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v1, v3, :cond_1b

    array-length v1, v2

    shl-int/2addr v1, v4

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/fD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    :cond_1b
    array-length v0, p1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_4c

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    :try_start_22
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    if-eqz v5, :cond_30

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    if-ne v5, v6, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v5, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v5, 0x1

    :goto_31
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    iget v6, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_4c

    aput-object v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_41
    :try_start_41
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    monitor-exit p0

    goto :goto_50

    :goto_4f
    throw p1

    :goto_50
    goto :goto_4f
.end method

.method public final v5()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    monitor-exit p0

    mul-int v0, v0, v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
