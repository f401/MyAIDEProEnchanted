.class public final Lcom/google/android/gms/internal/measurement/ud;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/vd;


# instance fields
.field private DW:Z

.field private FH:[I

.field private Hw:[Lcom/google/android/gms/internal/measurement/vd;

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/vd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/vd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ud;->j6:Lcom/google/android/gms/internal/measurement/vd;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ud;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/ud;->DW:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ud;->FH(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/vd;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    iput v2, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    return-void
.end method

.method private static FH(I)I
    .registers 4

    shl-int/lit8 v1, p0, 0x2

    const/4 v0, 0x4

    move v2, v0

    :goto_0
    const/16 v0, 0x20

    if-ge v2, v0, :cond_1

    const/4 v0, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xc

    if-gt v1, v0, :cond_0

    :goto_1
    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private final Hw(I)I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    move v1, v0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    aget v3, v3, v0

    if-ge v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v0, v2, -0x1

    :cond_2
    return v0
.end method


# virtual methods
.method final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    return v0
.end method

.method final DW(I)Lcom/google/android/gms/internal/measurement/vd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    new-instance v3, Lcom/google/android/gms/internal/measurement/ud;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/ud;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/vd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/vd;

    aput-object v0, v4, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput v2, v3, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/ud;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/ud;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget v6, v4, v2

    aget v7, v5, v2

    if-eq v6, v7, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    iget v5, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/vd;->equals(Ljava/lang/Object;)Z

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
    .registers 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/vd;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method final j6(I)Lcom/google/android/gms/internal/measurement/vd;
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ud;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aget-object v2, v1, v0

    sget-object v3, Lcom/google/android/gms/internal/measurement/ud;->j6:Lcom/google/android/gms/internal/measurement/vd;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v1, v0

    goto :goto_0
.end method

.method final j6(ILcom/google/android/gms/internal/measurement/vd;)V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ud;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aget-object v2, v1, v0

    sget-object v3, Lcom/google/android/gms/internal/measurement/ud;->j6:Lcom/google/android/gms/internal/measurement/vd;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    aput p1, v2, v0

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ud;->FH(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/vd;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->FH:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ud;->Hw:[Lcom/google/android/gms/internal/measurement/vd;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    goto :goto_0
.end method

.method public final j6()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ud;->v5:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
