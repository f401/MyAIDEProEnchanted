.class public final Lcom/google/android/gms/internal/ads/yv;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/yv;


# instance fields
.field private DW:I

.field private FH:[I

.field private Hw:[Ljava/lang/Object;

.field private Zo:Z

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/yv;

    new-array v1, v3, [I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/google/android/gms/internal/ads/yv;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yv;->j6:Lcom/google/android/gms/internal/ads/yv;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v2, 0x8

    const/4 v0, 0x0

    new-array v1, v2, [I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/yv;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/yv;->Zo:Z

    return-void
.end method

.method public static FH()Lcom/google/android/gms/internal/ads/yv;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yv;->j6:Lcom/google/android/gms/internal/ads/yv;

    return-object v0
.end method

.method static Hw()Lcom/google/android/gms/internal/ads/yv;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/yv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yv;-><init>()V

    return-object v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/yv;)Lcom/google/android/gms/internal/ads/yv;
    .registers 9

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    invoke-static {v2, v6, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v5, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/google/android/gms/internal/ads/yv;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/yv;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method private static j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 7

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 v1, p0, 0x7

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->we:I

    if-ne v1, v2, :cond_2

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(I)V

    check-cast p1, Lcom/google/android/gms/internal/ads/yv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/yv;->DW(Lcom/google/android/gms/internal/ads/Tv;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(I)V

    check-cast p1, Lcom/google/android/gms/internal/ads/yv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/yv;->DW(Lcom/google/android/gms/internal/ads/Tv;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(I)V

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto :goto_0

    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto :goto_0
.end method


# virtual methods
.method public final DW()I
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v0, v0, v2

    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/yv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->DW()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ot;->v5(IJ)I

    move-result v0

    goto :goto_2

    :cond_6
    iput v1, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    goto :goto_0
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->we:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/yv;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/yv;

    iget v3, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ne v3, v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget v6, v4, v2

    aget v7, v5, v2

    if-eq v6, v7, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v1

    :goto_4
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 8

    const/16 v0, 0x11

    const/4 v1, 0x0

    iget v4, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v4, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    aget v6, v5, v2

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    :goto_1
    if-ge v1, v5, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit16 v1, v4, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv;->Zo:Z

    return-void
.end method

.method final j6(ILjava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv;->Zo:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aput-object p2, v0, v1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    return-void

    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->J0:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final j6(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/Su;->j6(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v5()I
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v0, v0, v2

    ushr-int/lit8 v3, v0, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/Ot;->Hw(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    goto :goto_0
.end method
