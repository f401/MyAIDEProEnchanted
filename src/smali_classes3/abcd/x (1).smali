.class public Labcd/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static DW:I

.field static FH:[Ljava/lang/Object;

.field static Hw:I

.field static j6:[Ljava/lang/Object;


# instance fields
.field VH:I

.field Zo:[Ljava/lang/Object;

.field v5:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/n;->j6:[I

    iput-object v0, p0, Labcd/x;->v5:[I

    sget-object v0, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Labcd/x;->VH:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    sget-object p1, Labcd/n;->j6:[I

    iput-object p1, p0, Labcd/x;->v5:[I

    sget-object p1, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object p1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Labcd/x;->v5(I)V

    :goto_11
    const/4 p1, 0x0

    iput p1, p0, Labcd/x;->VH:I

    return-void
.end method

.method private static j6([III)I
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Labcd/n;->j6([III)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static j6([I[Ljava/lang/Object;I)V
    .registers 10

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_32

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_e
    sget v0, Labcd/x;->Hw:I

    if-ge v0, v5, :cond_29

    sget-object v0, Labcd/x;->FH:[Ljava/lang/Object;

    aput-object v0, p1, v4
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_2d

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1b
    if-lt p0, v3, :cond_22

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    :cond_22
    :try_start_22
    sput-object p1, Labcd/x;->FH:[Ljava/lang/Object;

    sget p0, Labcd/x;->Hw:I

    add-int/2addr p0, v6

    sput p0, Labcd/x;->Hw:I

    :cond_29
    const-class p0, Labcd/k;

    monitor-exit p0

    goto :goto_5d

    :catchall_2d
    move-exception p0

    const-class p1, Labcd/k;

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2d

    throw p0

    :cond_32
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5d

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_39
    sget v0, Labcd/x;->DW:I

    if-ge v0, v5, :cond_54

    sget-object v0, Labcd/x;->j6:[Ljava/lang/Object;

    aput-object v0, p1, v4
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_58

    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_46
    if-lt p0, v3, :cond_4d

    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_46

    :cond_4d
    :try_start_4d
    sput-object p1, Labcd/x;->j6:[Ljava/lang/Object;

    sget p0, Labcd/x;->DW:I

    add-int/2addr p0, v6

    sput p0, Labcd/x;->DW:I

    :cond_54
    const-class p0, Labcd/k;

    monitor-exit p0

    goto :goto_5d

    :catchall_58
    move-exception p0

    const-class p1, Labcd/k;

    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_58

    throw p0

    :cond_5d
    :goto_5d
    return-void
.end method

.method private v5(I)V
    .registers 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_32

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_a
    sget-object v0, Labcd/x;->FH:[Ljava/lang/Object;

    if-eqz v0, :cond_29

    iput-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    aget-object p1, v0, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Labcd/x;->FH:[Ljava/lang/Object;

    aget-object p1, v0, v3

    check-cast p1, [I

    iput-object p1, p0, Labcd/x;->v5:[I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2d

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    :try_start_20
    sget p1, Labcd/x;->Hw:I

    sub-int/2addr p1, v3

    sput p1, Labcd/x;->Hw:I

    const-class p1, Labcd/k;

    monitor-exit p1

    return-void

    :cond_29
    const-class v0, Labcd/k;

    monitor-exit v0

    goto :goto_60

    :catchall_2d
    move-exception p1

    const-class v0, Labcd/k;

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2d

    throw p1

    :cond_32
    const/4 v0, 0x4

    if-ne p1, v0, :cond_60

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_38
    sget-object v0, Labcd/x;->j6:[Ljava/lang/Object;

    if-eqz v0, :cond_57

    iput-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    aget-object p1, v0, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Labcd/x;->j6:[Ljava/lang/Object;

    aget-object p1, v0, v3

    check-cast p1, [I

    iput-object p1, p0, Labcd/x;->v5:[I
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_5b

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    :try_start_4e
    sget p1, Labcd/x;->DW:I

    sub-int/2addr p1, v3

    sput p1, Labcd/x;->DW:I

    const-class p1, Labcd/k;

    monitor-exit p1

    return-void

    :cond_57
    const-class v0, Labcd/k;

    monitor-exit v0

    goto :goto_60

    :catchall_5b
    move-exception p1

    const-class v0, Labcd/k;

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_5b

    throw p1

    :cond_60
    :goto_60
    new-array v0, p1, [I

    iput-object v0, p0, Labcd/x;->v5:[I

    shl-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method DW(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Labcd/x;->VH:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    :goto_a
    if-ge p1, v0, :cond_26

    aget-object v3, v1, p1

    if-nez v3, :cond_12

    shr-int/2addr p1, v2

    return p1

    :cond_12
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    :cond_15
    const/4 v3, 0x1

    :goto_16
    if-ge v3, v0, :cond_26

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_16

    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method public DW(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public FH(I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Labcd/x;->VH:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1c

    iget-object p1, p0, Labcd/x;->v5:[I

    invoke-static {p1, v0, v3}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    sget-object p1, Labcd/n;->j6:[I

    iput-object p1, p0, Labcd/x;->v5:[I

    sget-object p1, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object p1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    goto :goto_79

    :cond_1c
    add-int/lit8 v6, v3, -0x1

    iget-object v7, p0, Labcd/x;->v5:[I

    array-length v8, v7

    const/16 v9, 0x8

    if-le v8, v9, :cond_5e

    array-length v8, v7

    div-int/lit8 v8, v8, 0x3

    if-ge v3, v8, :cond_5e

    if-le v3, v9, :cond_30

    shr-int/lit8 v8, v3, 0x1

    add-int v9, v3, v8

    :cond_30
    invoke-direct {p0, v9}, Labcd/x;->v5(I)V

    iget v8, p0, Labcd/x;->VH:I

    if-ne v3, v8, :cond_58

    if-lez p1, :cond_43

    iget-object v8, p0, Labcd/x;->v5:[I

    invoke-static {v7, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_43
    if-ge p1, v6, :cond_78

    add-int/lit8 v4, p1, 0x1

    iget-object v8, p0, Labcd/x;->v5:[I

    sub-int v9, v6, p1

    invoke-static {v7, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v4, 0x1

    iget-object v4, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v5, v9, 0x1

    invoke-static {v0, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_78

    :cond_58
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_5e
    if-ge p1, v6, :cond_6e

    add-int/lit8 v0, p1, 0x1

    sub-int v4, v6, p1

    invoke-static {v7, v0, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/2addr v0, v5

    shl-int/2addr v4, v5

    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6e
    iget-object p1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/2addr v0, v5

    aput-object v1, p1, v0

    :cond_78
    :goto_78
    move v4, v6

    :goto_79
    iget p1, p0, Labcd/x;->VH:I

    if-ne v3, p1, :cond_80

    iput v4, p0, Labcd/x;->VH:I

    return-object v2

    :cond_80
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public Hw(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public clear()V
    .registers 5

    iget v0, p0, Labcd/x;->VH:I

    if-lez v0, :cond_16

    iget-object v1, p0, Labcd/x;->v5:[I

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    sget-object v3, Labcd/n;->j6:[I

    iput-object v3, p0, Labcd/x;->v5:[I

    sget-object v3, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Labcd/x;->VH:I

    invoke-static {v1, v2, v0}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    :cond_16
    iget v0, p0, Labcd/x;->VH:I

    if-gtz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/x;->DW(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Labcd/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    check-cast p1, Labcd/x;

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/x;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x0

    :goto_17
    :try_start_17
    iget v3, p0, Labcd/x;->VH:I

    if-ge v1, v3, :cond_3c

    invoke-virtual {p0, v1}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_32

    if-nez v5, :cond_31

    invoke-virtual {p1, v3}, Labcd/x;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_31
    return v2

    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_36} :catch_3d

    if-nez v3, :cond_39

    return v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3c
    return v0

    :catch_3d
    move-exception p1

    goto :goto_40

    :catch_3f
    move-exception p1

    :goto_40
    return v2

    :cond_41
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_7c

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_52

    return v2

    :cond_52
    const/4 v1, 0x0

    :goto_53
    :try_start_53
    iget v3, p0, Labcd/x;->VH:I

    if-ge v1, v3, :cond_78

    invoke-virtual {p0, v1}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_6e

    if-nez v5, :cond_6d

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    :cond_6d
    return v2

    :cond_6e
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_72} :catch_7b
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_72} :catch_79

    if-nez v3, :cond_75

    return v2

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_78
    return v0

    :catch_79
    move-exception p1

    goto :goto_7c

    :catch_7b
    move-exception p1

    :cond_7c
    :goto_7c
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public hashCode()I
    .registers 10

    iget-object v0, p0, Labcd/x;->v5:[I

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    iget v2, p0, Labcd/x;->VH:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v5, v2, :cond_1f

    aget-object v7, v1, v4

    aget v8, v0, v5

    if-nez v7, :cond_14

    const/4 v7, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_18
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_a

    :cond_1f
    return v6
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Labcd/x;->VH:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method j6()I
    .registers 7

    iget v0, p0, Labcd/x;->VH:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Labcd/x;->v5:[I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Labcd/x;->j6([III)I

    move-result v2

    if-gez v2, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_19

    return v2

    :cond_19
    add-int/lit8 v3, v2, 0x1

    :goto_1b
    if-ge v3, v0, :cond_2f

    iget-object v4, p0, Labcd/x;->v5:[I

    aget v4, v4, v3

    if-nez v4, :cond_2f

    iget-object v4, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2c

    return v3

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    :goto_31
    if-ltz v2, :cond_45

    iget-object v0, p0, Labcd/x;->v5:[I

    aget v0, v0, v2

    if-nez v0, :cond_45

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v0, v0, v4

    if-nez v0, :cond_42

    return v2

    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    :cond_45
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Labcd/x;->j6()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Labcd/x;->j6(Ljava/lang/Object;I)I

    move-result p1

    :goto_f
    return p1
.end method

.method j6(Ljava/lang/Object;I)I
    .registers 9

    iget v0, p0, Labcd/x;->VH:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Labcd/x;->v5:[I

    invoke-static {v2, v0, p2}, Labcd/x;->j6([III)I

    move-result v2

    if-gez v2, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 v3, v2, 0x1

    :goto_1e
    if-ge v3, v0, :cond_36

    iget-object v4, p0, Labcd/x;->v5:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_36

    iget-object v4, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    return v3

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_36
    add-int/2addr v2, v1

    :goto_37
    if-ltz v2, :cond_4f

    iget-object v0, p0, Labcd/x;->v5:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_4f

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    return v2

    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    :cond_4f
    xor-int/lit8 p1, v3, -0x1

    return p1
.end method

.method public j6(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public j6(I)V
    .registers 7

    iget v0, p0, Labcd/x;->VH:I

    iget-object v1, p0, Labcd/x;->v5:[I

    array-length v2, v1

    if-ge v2, p1, :cond_20

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Labcd/x;->v5(I)V

    iget p1, p0, Labcd/x;->VH:I

    if-lez p1, :cond_1d

    iget-object p1, p0, Labcd/x;->v5:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    invoke-static {v1, v2, v0}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    :cond_20
    iget p1, p0, Labcd/x;->VH:I

    if-ne p1, v0, :cond_25

    return-void

    :cond_25
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget v0, p0, Labcd/x;->VH:I

    const/4 v1, 0x0

    if-nez p1, :cond_b

    invoke-virtual {p0}, Labcd/x;->j6()I

    move-result v2

    const/4 v3, 0x0

    goto :goto_16

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Labcd/x;->j6(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_16
    if-ltz v2, :cond_23

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_23
    xor-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Labcd/x;->v5:[I

    array-length v5, v4

    if-lt v0, v5, :cond_59

    const/16 v5, 0x8

    if-lt v0, v5, :cond_32

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    goto :goto_37

    :cond_32
    const/4 v6, 0x4

    if-lt v0, v6, :cond_36

    goto :goto_37

    :cond_36
    const/4 v5, 0x4

    :goto_37
    iget-object v6, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-direct {p0, v5}, Labcd/x;->v5(I)V

    iget v5, p0, Labcd/x;->VH:I

    if-ne v0, v5, :cond_53

    iget-object v5, p0, Labcd/x;->v5:[I

    array-length v7, v5

    if-lez v7, :cond_4f

    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4f
    invoke-static {v4, v6, v0}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    goto :goto_59

    :cond_53
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_59
    :goto_59
    if-ge v2, v0, :cond_72

    iget-object v1, p0, Labcd/x;->v5:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Labcd/x;->VH:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_72
    iget v1, p0, Labcd/x;->VH:I

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Labcd/x;->v5:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8d

    aput v3, v0, v2

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/x;->VH:I

    const/4 p1, 0x0

    return-object p1

    :cond_8d
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1}, Labcd/x;->FH(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/x;->VH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Labcd/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/x;->VH:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Labcd/x;->VH:I

    if-ge v1, v2, :cond_47

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_47
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
