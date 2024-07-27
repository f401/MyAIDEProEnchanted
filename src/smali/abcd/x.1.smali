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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Labcd/n;->j6:[I

    iput-object v0, p0, Labcd/x;->v5:[I

    sget-object v0, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/x;->VH:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Labcd/x;->v5(I)V

    goto :goto_0
.end method

.method private static j6([III)I
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Labcd/n;->j6([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static j6([I[Ljava/lang/Object;I)V
    .registers 9

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x1

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_0
    sget v0, Labcd/x;->Hw:I

    if-ge v0, v4, :cond_1

    const/4 v0, 0x0

    sget-object v1, Labcd/x;->FH:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object p0, p1, v2

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    aput-object v5, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    sput-object p1, Labcd/x;->FH:[Ljava/lang/Object;

    sget v0, Labcd/x;->Hw:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Labcd/x;->Hw:I

    :cond_1
    const-class v0, Labcd/k;

    monitor-exit v0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    const-class v1, Labcd/k;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_2
    sget v0, Labcd/x;->DW:I

    if-ge v0, v4, :cond_5

    const/4 v0, 0x0

    sget-object v1, Labcd/x;->j6:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object p0, p1, v2

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    aput-object v5, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :try_start_3
    sput-object p1, Labcd/x;->j6:[Ljava/lang/Object;

    sget v0, Labcd/x;->DW:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Labcd/x;->DW:I

    :cond_5
    const-class v0, Labcd/k;

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const-class v1, Labcd/k;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private v5(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_0
    sget-object v0, Labcd/x;->FH:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Labcd/x;->FH:[Ljava/lang/Object;

    iput-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Labcd/x;->FH:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Labcd/x;->v5:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    :try_start_1
    sget v0, Labcd/x;->Hw:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Labcd/x;->Hw:I

    const-class v0, Labcd/k;

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const-class v0, Labcd/k;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Labcd/x;->v5:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-class v1, Labcd/k;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-class v0, Labcd/k;

    monitor-enter v0

    :try_start_3
    sget-object v0, Labcd/x;->j6:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v1, Labcd/x;->j6:[Ljava/lang/Object;

    iput-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Labcd/x;->j6:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Labcd/x;->v5:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    :try_start_4
    sget v0, Labcd/x;->DW:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Labcd/x;->DW:I

    const-class v0, Labcd/k;

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const-class v1, Labcd/k;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_3
    :try_start_5
    const-class v0, Labcd/k;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method DW(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Labcd/x;->VH:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    if-nez p1, :cond_2

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    shr-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    :cond_2
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public DW(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public FH(I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v2, v4

    iget v5, p0, Labcd/x;->VH:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    iget-object v0, p0, Labcd/x;->v5:[I

    invoke-static {v0, v2, v5}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    sget-object v0, Labcd/n;->j6:[I

    iput-object v0, p0, Labcd/x;->v5:[I

    sget-object v0, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    move v0, v1

    :goto_0
    iget v1, p0, Labcd/x;->VH:I

    if-ne v5, v1, :cond_6

    iput v0, p0, Labcd/x;->VH:I

    return-object v4

    :cond_0
    add-int/lit8 v2, v5, -0x1

    iget-object v6, p0, Labcd/x;->v5:[I

    array-length v7, v6

    if-le v7, v0, :cond_4

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_4

    if-le v5, v0, :cond_1

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    :cond_1
    iget-object v6, p0, Labcd/x;->v5:[I

    iget-object v7, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Labcd/x;->v5(I)V

    iget v0, p0, Labcd/x;->VH:I

    if-ne v5, v0, :cond_3

    if-lez p1, :cond_2

    iget-object v0, p0, Labcd/x;->v5:[I

    invoke-static {v6, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-static {v7, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-ge p1, v2, :cond_7

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Labcd/x;->v5:[I

    sub-int v8, v2, p1

    invoke-static {v6, v0, v1, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v6, v8, 0x1

    invoke-static {v7, v0, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_4
    if-ge p1, v2, :cond_5

    iget-object v0, p0, Labcd/x;->v5:[I

    add-int/lit8 v1, p1, 0x1

    sub-int v6, v2, p1

    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v1, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object v8, v0, v1

    move v0, v2

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public Hw(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .registers 5

    iget v0, p0, Labcd/x;->VH:I

    if-lez v0, :cond_0

    iget-object v1, p0, Labcd/x;->v5:[I

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    sget-object v3, Labcd/n;->j6:[I

    iput-object v3, p0, Labcd/x;->v5:[I

    sget-object v3, Labcd/n;->FH:[Ljava/lang/Object;

    iput-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Labcd/x;->VH:I

    invoke-static {v1, v2, v0}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    :cond_0
    iget v0, p0, Labcd/x;->VH:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/x;->DW(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Labcd/x;

    if-eqz v2, :cond_6

    check-cast p1, Labcd/x;

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v2

    invoke-virtual {p1}, Labcd/x;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    :try_start_0
    iget v3, p0, Labcd/x;->VH:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Labcd/x;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_b

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Labcd/x;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_3
    :try_start_1
    iget v3, p0, Labcd/x;->VH:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-nez v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    :cond_b
    :goto_4
    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 10

    const/4 v1, 0x0

    iget-object v5, p0, Labcd/x;->v5:[I

    iget-object v6, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    iget v7, p0, Labcd/x;->VH:I

    const/4 v0, 0x1

    move v2, v1

    move v3, v1

    move v4, v0

    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v0, v6, v4

    aget v8, v5, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, v8

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v4, v4, 0x2

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Labcd/x;->VH:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6()I
    .registers 6

    iget v2, p0, Labcd/x;->VH:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/x;->v5:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Labcd/x;->j6([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Labcd/x;->v5:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Labcd/x;->v5:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Labcd/x;->j6()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Labcd/x;->j6(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method j6(Ljava/lang/Object;I)I
    .registers 8

    iget v2, p0, Labcd/x;->VH:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/x;->v5:[I

    invoke-static {v0, v2, p2}, Labcd/x;->j6([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Labcd/x;->v5:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Labcd/x;->v5:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public j6(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p2, v1, v0

    return-object v2
.end method

.method public j6(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Labcd/x;->VH:I

    iget-object v1, p0, Labcd/x;->v5:[I

    array-length v2, v1

    if-ge v2, p1, :cond_1

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Labcd/x;->v5(I)V

    iget v3, p0, Labcd/x;->VH:I

    if-lez v3, :cond_0

    iget-object v3, p0, Labcd/x;->v5:[I

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v1, v2, v0}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    :cond_1
    iget v1, p0, Labcd/x;->VH:I

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v3, 0x0

    iget v5, p0, Labcd/x;->VH:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Labcd/x;->j6()I

    move-result v4

    move v2, v3

    :goto_0
    if-ltz v4, :cond_1

    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    aget-object v0, v2, v1

    aput-object p2, v2, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Labcd/x;->j6(Ljava/lang/Object;I)I

    move-result v4

    goto :goto_0

    :cond_1
    xor-int/lit8 v4, v4, -0x1

    iget-object v6, p0, Labcd/x;->v5:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    if-lt v5, v0, :cond_6

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    :cond_2
    :goto_2
    iget-object v1, p0, Labcd/x;->v5:[I

    iget-object v6, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Labcd/x;->v5(I)V

    iget v0, p0, Labcd/x;->VH:I

    if-ne v5, v0, :cond_7

    iget-object v0, p0, Labcd/x;->v5:[I

    array-length v7, v0

    if-lez v7, :cond_3

    array-length v7, v1

    invoke-static {v1, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-static {v1, v6, v5}, Labcd/x;->j6([I[Ljava/lang/Object;I)V

    :cond_4
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Labcd/x;->v5:[I

    add-int/lit8 v1, v4, 0x1

    sub-int v3, v5, v4

    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v3, v4, 0x1

    shl-int/lit8 v1, v1, 0x1

    iget v6, p0, Labcd/x;->VH:I

    sub-int/2addr v6, v4

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget v0, p0, Labcd/x;->VH:I

    if-ne v5, v0, :cond_8

    iget-object v1, p0, Labcd/x;->v5:[I

    array-length v3, v1

    if-ge v4, v3, :cond_8

    aput v2, v1, v4

    iget-object v1, p0, Labcd/x;->Zo:[Ljava/lang/Object;

    shl-int/lit8 v2, v4, 0x1

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/x;->VH:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Labcd/x;->j6(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Labcd/x;->FH(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/x;->VH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/x;->VH:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Labcd/x;->VH:I

    if-ge v0, v2, :cond_4

    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Labcd/x;->Hw(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
