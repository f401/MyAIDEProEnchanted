.class public Labcd/lK;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/lK$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private v5:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0x100

    invoke-static {v0}, Labcd/lK;->VH(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    invoke-static {}, Labcd/lK;->j6()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    aget-object v0, v0, v2

    iput-object v0, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-static {p1}, Labcd/lK;->u7(I)I

    move-result v0

    and-int/lit16 v1, p1, 0x3ff

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {v0}, Labcd/lK;->VH(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    invoke-static {}, Labcd/lK;->j6()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    aget-object v0, v0, v2

    iput-object v0, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic DW(Labcd/lK;)I
    .registers 2

    iget v0, p0, Labcd/lK;->DW:I

    return v0
.end method

.method private DW()V
    .registers 3

    iget v0, p0, Labcd/lK;->DW:I

    invoke-static {v0}, Labcd/lK;->u7(I)I

    move-result v0

    iput v0, p0, Labcd/lK;->FH:I

    iget v0, p0, Labcd/lK;->DW:I

    invoke-static {v0}, Labcd/lK;->gn(I)I

    move-result v0

    iput v0, p0, Labcd/lK;->Hw:I

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    iget v1, p0, Labcd/lK;->FH:I

    aget-object v0, v0, v1

    iput-object v0, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    return-void
.end method

.method private static VH(I)[[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[[TT;"
        }
    .end annotation

    new-array v0, p0, [[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Zo(I)I
    .registers 2

    invoke-static {p0}, Labcd/lK;->gn(I)I

    move-result v0

    return v0
.end method

.method private static final gn(I)I
    .registers 2

    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private static j6()[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()[TT;"
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Labcd/lK;)[[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    return-object v0
.end method

.method private static final u7(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0xa

    return v0
.end method

.method static synthetic v5(I)I
    .registers 2

    invoke-static {p0}, Labcd/lK;->u7(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public FH(Labcd/lK;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LlK",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p1, Labcd/lK;->DW:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p1, Labcd/lK;->FH:I

    if-lt v0, v2, :cond_2

    iget v0, p1, Labcd/lK;->Hw:I

    if-eqz v0, :cond_0

    iget-object v2, p1, Labcd/lK;->v5:[Ljava/lang/Object;

    invoke-virtual {p0, v2, v1, v0}, Labcd/lK;->j6([Ljava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, Labcd/lK;->j6:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    const/16 v3, 0x400

    invoke-virtual {p0, v2, v1, v3}, Labcd/lK;->j6([Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public add(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Labcd/lK;->DW:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Labcd/lK;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_2

    if-lt v0, p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/lK;->add(Ljava/lang/Object;)Z

    iget v0, p0, Labcd/lK;->DW:I

    add-int/lit8 v0, v0, -0x2

    :goto_1
    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Labcd/lK;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Labcd/lK;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Labcd/lK;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Labcd/lK;->Hw:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/lK;->Hw:I

    iget v0, p0, Labcd/lK;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/lK;->DW:I

    :goto_0
    return v4

    :cond_0
    iget v0, p0, Labcd/lK;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/lK;->FH:I

    iget-object v1, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Labcd/lK;->VH(I)[[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    iget v1, p0, Labcd/lK;->FH:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    invoke-static {}, Labcd/lK;->j6()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    iget v2, p0, Labcd/lK;->FH:I

    aput-object v0, v1, v2

    :cond_2
    aput-object p1, v0, v3

    iput-object v0, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    iput v4, p0, Labcd/lK;->Hw:I

    iget v0, p0, Labcd/lK;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/lK;->DW:I

    goto :goto_0
.end method

.method public clear()V
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    iput v1, p0, Labcd/lK;->DW:I

    iput v1, p0, Labcd/lK;->FH:I

    iput v1, p0, Labcd/lK;->Hw:I

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    return-void

    :cond_0
    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Labcd/lK;->DW:I

    if-le v0, p1, :cond_0

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    invoke-static {p1}, Labcd/lK;->u7(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1}, Labcd/lK;->gn(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/lK$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/lK$a;-><init>(Labcd/lK;Labcd/lK$a;)V

    return-object v0
.end method

.method public j6([Ljava/lang/Object;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    :goto_0
    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Labcd/lK;->Hw:I

    rsub-int v1, v0, 0x400

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_1

    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/lK;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Labcd/lK;->v5:[Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/lK;->Hw:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/lK;->Hw:I

    iget v0, p0, Labcd/lK;->DW:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/lK;->DW:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Labcd/lK;->DW:I

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    invoke-static {p1}, Labcd/lK;->u7(I)I

    move-result v1

    aget-object v1, v0, v1

    invoke-static {p1}, Labcd/lK;->gn(I)I

    move-result v2

    aget-object v0, v1, v2

    aput-object v3, v1, v2

    iget v1, p0, Labcd/lK;->DW:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/lK;->DW:I

    iget v1, p0, Labcd/lK;->Hw:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/lK;->Hw:I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Labcd/lK;->DW()V

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    if-le v0, p1, :cond_3

    invoke-virtual {p0, p1}, Labcd/lK;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iget v0, p0, Labcd/lK;->DW:I

    add-int/lit8 v2, v0, -0x1

    if-lt p1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Labcd/lK;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Labcd/lK;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/lK;->DW:I

    invoke-direct {p0}, Labcd/lK;->DW()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Labcd/lK;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Labcd/lK;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Labcd/lK;->DW:I

    if-le v0, p1, :cond_0

    iget-object v0, p0, Labcd/lK;->j6:[[Ljava/lang/Object;

    invoke-static {p1}, Labcd/lK;->u7(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1}, Labcd/lK;->gn(I)I

    move-result v1

    aget-object v2, v0, v1

    aput-object p2, v0, v1

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/lK;->DW:I

    return v0
.end method
