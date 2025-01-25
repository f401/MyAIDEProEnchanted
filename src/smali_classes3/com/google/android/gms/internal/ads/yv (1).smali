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

    new-instance v0, Lcom/google/android/gms/internal/ads/yv;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/yv;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yv;->j6:Lcom/google/android/gms/internal/ads/yv;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/yv;-><init>(I[I[Ljava/lang/Object;Z)V

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
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/ads/yv;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 5

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_56

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_46

    const/4 v1, 0x3

    if-eq p0, v1, :cond_26

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1c

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    return-void

    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_26
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->we:I

    if-ne p0, v1, :cond_3a

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(I)V

    check-cast p1, Lcom/google/android/gms/internal/ads/yv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/yv;->DW(Lcom/google/android/gms/internal/ads/Tv;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(I)V

    return-void

    :cond_3a
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(I)V

    check-cast p1, Lcom/google/android/gms/internal/ads/yv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/yv;->DW(Lcom/google/android/gms/internal/ads/Tv;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(I)V

    return-void

    :cond_46
    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    return-void

    :cond_4c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    return-void

    :cond_56
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v2, :cond_78

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_66

    const/4 v4, 0x1

    if-eq v2, v4, :cond_57

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4c

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3b

    const/4 v4, 0x5

    if-ne v2, v4, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v2

    goto :goto_74

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Zo()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/yv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yv;->DW()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_74

    :cond_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v2

    goto :goto_74

    :cond_57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v2

    goto :goto_74

    :cond_66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ot;->v5(IJ)I

    move-result v2

    :goto_74
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_78
    iput v1, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    return v1
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->we:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void

    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/yv;

    if-nez v2, :cond_d

    return v1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/ads/yv;

    iget v2, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ne v2, v3, :cond_47

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_27

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_24

    const/4 v2, 0x0

    goto :goto_28

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 p1, 0x0

    goto :goto_43

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_42
    const/4 p1, 0x1

    :goto_43
    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public final hashCode()I
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/16 v5, 0x11

    :goto_a
    if-ge v4, v0, :cond_14

    mul-int/lit8 v5, v5, 0x1f

    aget v6, v1, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    :goto_18
    if-ge v2, v4, :cond_26

    mul-int/lit8 v3, v3, 0x1f

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_26
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    return v0
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv;->Zo:Z

    return-void
.end method

.method final j6(ILjava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yv;->Zo:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    array-length v2, v1

    if-ne v0, v2, :cond_22

    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    const/16 v2, 0x8

    goto :goto_13

    :cond_11
    shr-int/lit8 v2, v0, 0x1

    :goto_13
    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    return-void

    :cond_31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->J0:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method final j6(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/Su;->j6(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final v5()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/ads/yv;->DW:I

    if-ge v0, v2, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv;->FH:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yv;->Hw:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Ot;->Hw(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    iput v1, p0, Lcom/google/android/gms/internal/ads/yv;->v5:I

    return v1
.end method
