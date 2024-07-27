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
    .registers 6

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/oD;-><init>(ZII)V

    return-void
.end method

.method private constructor <init>(ZII)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oD;->j6:Z

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    const/16 v0, 0x64

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/fD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->FH:[B

    new-array v0, v1, [Lcom/google/android/gms/internal/ads/fD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->Hw:[Lcom/google/android/gms/internal/ads/fD;

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

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->v5:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    iget v2, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Hw()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oD;->j6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/oD;->j6(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/fD;
    .registers 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget-object v0, v0, v1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    iget v2, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/fD;

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/fD;-><init>([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(I)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->v5:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/oD;->v5:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oD;->FH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/fD;)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->Hw:[Lcom/google/android/gms/internal/ads/fD;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->Hw:[Lcom/google/android/gms/internal/ads/fD;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/oD;->j6([Lcom/google/android/gms/internal/ads/fD;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6([Lcom/google/android/gms/internal/ads/fD;)V
    .registers 9

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    array-length v2, p1

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/fD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    :cond_0
    array-length v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    :try_start_1
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    array-length v0, v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I

    if-ne v0, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oD;->gn:[Lcom/google/android/gms/internal/ads/fD;

    iget v5, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/oD;->VH:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-object v4, v0, v5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v5()I
    .registers 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/oD;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/oD;->DW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    mul-int/2addr v0, v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
