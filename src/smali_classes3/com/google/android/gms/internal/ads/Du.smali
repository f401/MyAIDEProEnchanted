.class final Lcom/google/android/gms/internal/ads/Du;
.super Lcom/google/android/gms/internal/ads/st;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ou;
.implements Lcom/google/android/gms/internal/ads/_u;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/st<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ou<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/ads/_u;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/Du;


# instance fields
.field private FH:[J

.field private Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Du;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Du;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Du;->DW:Lcom/google/android/gms/internal/ads/Du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/st;->Mr()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Du;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/st;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    iput p2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    return-void
.end method

.method private final VH(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final Zo(I)V
    .registers 3

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Du;->VH(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final j6(IJ)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    if-gt p1, v0, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aput-wide p2, v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_3e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Du;->VH(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Du;->j6(IJ)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Du;

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/st;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v0, p1, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget v2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3f

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    array-length v3, v0

    if-le v2, v3, :cond_2b

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/Du;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/st;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/ads/Du;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    const/4 v1, 0x0

    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Du;->v5(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final synthetic j6(I)Lcom/google/android/gms/internal/ads/ou;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    if-lt p1, v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/Du;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Du;-><init>([JI)V

    return-object v0

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final j6(J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/Du;->j6(IJ)V

    return-void
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Du;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aget-wide v1, v0, p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_16

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    iget p1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_30
    return v0
.end method

.method protected final removeRange(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    if-lt p2, p1, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/st;->j6()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Du;->Zo(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aget-wide v2, p2, p1

    aput-wide v0, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Du;->Hw:I

    return v0
.end method

.method public final v5(I)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Du;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Du;->FH:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
