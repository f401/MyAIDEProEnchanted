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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/LB;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v0, 0x0

    :goto_1d
    array-length v2, p2

    if-ge v0, v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/LB;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v0, Lcom/google/android/gms/internal/ads/TC;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/TC;-><init>(Lcom/google/android/gms/internal/ads/SC;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    :goto_3e
    iget p2, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    if-ge v1, p2, :cond_51

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/LB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_51
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/RC;->v5:[J

    return-void
.end method

.method private final DW(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->v5:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final DW(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    aget p1, v0, p1

    return p1
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

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_11

    goto :goto_24

    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/ads/RC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_24

    return v0

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->Zo:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->j6:Lcom/google/android/gms/internal/ads/LB;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/RC;->Zo:I

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/ads/RC;->Zo:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->Hw:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j6(IJ)Z
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/RC;->DW(IJ)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lcom/google/android/gms/internal/ads/RC;->DW:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1f

    if-nez v0, :cond_1f

    if-eq v2, p1, :cond_1b

    invoke-direct {p0, v2, p2, p3}, Lcom/google/android/gms/internal/ads/RC;->DW(IJ)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    if-nez v0, :cond_22

    return v1

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->v5:[J

    aget-wide v1, v0, p1

    const-wide/32 v5, 0xea60

    add-long/2addr p2, v5

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v0, p1

    return v4
.end method

.method public final length()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RC;->FH:[I

    array-length v0, v0

    return v0
.end method
