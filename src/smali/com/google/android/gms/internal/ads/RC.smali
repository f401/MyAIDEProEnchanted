.class public abstract Lcom/google/android/gms/internal/ads/RC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/_C;


# instance fields
.field private final DW:I

.field private final FH:[I

.field private final Hw:[Lcom/google/android/gms/internal/ads/zzfs;

.field private Zo:I

.field private final j6:Lcom/google/android/gms/internal/ads/LB;

.field private final v5:[J


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/LB;[I)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/LB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    move v0, v1

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v2, Lcom/google/android/gms/internal/ads/TC;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/TC;-><init>(Lcom/google/android/gms/internal/ads/SC;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/LB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->v5:[J

    return-void
.end method

.method private final DW(IJ)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->v5:[J

    aget-wide v0, v0, p1

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DW(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    aget v0, v0, p1

    return v0
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/LB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    return-object v0
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/zzfs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_C;->j6()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/RC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->Zo:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/RC;->Zo:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->Zo:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final j6(IJ)Z
    .registers 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/RC;->DW(IJ)Z

    move-result v0

    move v1, v2

    :goto_0
    iget v6, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    if-ge v1, v6, :cond_1

    if-nez v0, :cond_1

    if-eq v1, p1, :cond_0

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/RC;->DW(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    :goto_2
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->v5:[J

    aget-wide v6, v0, p1

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v0, p1

    move v2, v3

    goto :goto_2
.end method

.method public final length()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    array-length v0, v0

    return v0
.end method
