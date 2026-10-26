.class public Labcd/AE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/AE$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Labcd/AE$a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:[[Labcd/AE$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private v5:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Labcd/AE;->Hw:I

    iput v2, p0, Labcd/AE;->v5:I

    invoke-static {v2}, Labcd/AE;->v5(I)I

    move-result v0

    iput v0, p0, Labcd/AE;->FH:I

    const/16 v0, 0x400

    new-array v0, v0, [[Labcd/AE$a;

    iput-object v0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    invoke-direct {p0}, Labcd/AE;->DW()[Labcd/AE$a;

    move-result-object v1

    aput-object v1, v0, v2

    return-void
.end method

.method private final DW()[Labcd/AE$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [Labcd/AE$a;

    return-object v0
.end method

.method static synthetic DW(Labcd/AE;)[[Labcd/AE$a;
    .locals 1

    iget-object v0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    return-object v0
.end method

.method static synthetic FH(Labcd/AE;)I
    .locals 1

    iget v0, p0, Labcd/AE;->Hw:I

    return v0
.end method

.method static synthetic j6(Labcd/AE;)I
    .locals 1

    iget v0, p0, Labcd/AE;->DW:I

    return v0
.end method

.method private j6()V
    .locals 12

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Labcd/AE;->Hw:I

    shl-int v8, v3, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AE;->Hw:I

    shl-int v2, v3, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/AE;->v5:I

    invoke-static {v0}, Labcd/AE;->v5(I)I

    move-result v0

    iput v0, p0, Labcd/AE;->FH:I

    iget v0, p0, Labcd/AE;->Hw:I

    shl-int v0, v3, v0

    iget-object v2, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    array-length v3, v2

    if-ge v3, v0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Labcd/AE$a;

    invoke-static {v2, v1, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    :cond_0
    move v7, v1

    :goto_0
    if-lt v7, v8, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    aget-object v9, v0, v7

    invoke-direct {p0}, Labcd/AE;->DW()[Labcd/AE$a;

    move-result-object v10

    move v0, v1

    :goto_1
    array-length v2, v9

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    add-int v2, v8, v7

    aput-object v10, v0, v2

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    aget-object v3, v9, v0

    move-object v2, v5

    move-object v4, v5

    :goto_2
    if-nez v3, :cond_3

    aput-object v2, v9, v0

    aput-object v4, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v3, Labcd/AE$a;->tp:Labcd/AE$a;

    iget v11, v3, Labcd/YD;->FH:I

    and-int/2addr v11, v8

    if-nez v11, :cond_4

    iput-object v2, v3, Labcd/AE$a;->tp:Labcd/AE$a;

    move-object v2, v3

    :goto_3
    move-object v3, v6

    goto :goto_2

    :cond_4
    iput-object v4, v3, Labcd/AE$a;->tp:Labcd/AE$a;

    move-object v4, v3

    goto :goto_3
.end method

.method private static final j6(Labcd/YD;Labcd/YD;)Z
    .locals 2

    iget v0, p0, Labcd/YD;->Hw:I

    iget v1, p1, Labcd/YD;->Hw:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/YD;->v5:I

    iget v1, p1, Labcd/YD;->v5:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/YD;->Zo:I

    iget v1, p1, Labcd/YD;->Zo:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/YD;->VH:I

    iget v1, p1, Labcd/YD;->VH:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/YD;->FH:I

    iget v1, p1, Labcd/YD;->FH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final v5(I)I
    .locals 2

    const/4 v0, 0x1

    add-int/lit8 v1, p0, 0xb

    shl-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public DW(Labcd/AE$a;)Labcd/AE$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:TV;>(TQ;)TV;"
        }
    .end annotation

    iget v0, p1, Labcd/YD;->FH:I

    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    iget v2, p0, Labcd/AE;->v5:I

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    ushr-int/lit8 v2, v0, 0x15

    aget-object v0, v1, v2

    :goto_0
    if-nez v0, :cond_1

    aget-object v0, v1, v2

    iput-object v0, p1, Labcd/AE$a;->tp:Labcd/AE$a;

    aput-object p1, v1, v2

    iget v0, p0, Labcd/AE;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AE;->DW:I

    iget v1, p0, Labcd/AE;->FH:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Labcd/AE;->j6()V

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-static {v0, p1}, Labcd/AE;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Labcd/AE$a;->tp:Labcd/AE$a;

    goto :goto_0
.end method

.method public DW(Labcd/YD;)Labcd/AE$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YD;",
            ")TV;"
        }
    .end annotation

    iget v0, p1, Labcd/YD;->FH:I

    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    iget v2, p0, Labcd/AE;->v5:I

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    ushr-int/lit8 v0, v0, 0x15

    aget-object v0, v1, v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {v0, p1}, Labcd/AE;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Labcd/AE$a;->tp:Labcd/AE$a;

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Labcd/AE;->DW:I

    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Labcd/zE;

    invoke-direct {v0, p0}, Labcd/zE;-><init>(Labcd/AE;)V

    return-object v0
.end method

.method public j6(Labcd/AE$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:TV;>(TQ;)V"
        }
    .end annotation

    iget v0, p0, Labcd/AE;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AE;->DW:I

    iget v1, p0, Labcd/AE;->FH:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Labcd/AE;->j6()V

    :cond_0
    iget v0, p1, Labcd/YD;->FH:I

    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    iget v2, p0, Labcd/AE;->v5:I

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    ushr-int/lit8 v0, v0, 0x15

    aget-object v2, v1, v0

    iput-object v2, p1, Labcd/AE$a;->tp:Labcd/AE$a;

    aput-object p1, v1, v0

    return-void
.end method

.method public j6(Labcd/YD;)Z
    .locals 1

    invoke-virtual {p0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Labcd/AE;->DW:I

    return v0
.end method
