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
        "Ljava/lang/Iterable<",
        "TV;>;"
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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/AE;->Hw:I

    iput v0, p0, Labcd/AE;->v5:I

    invoke-static {v0}, Labcd/AE;->v5(I)I

    move-result v1

    iput v1, p0, Labcd/AE;->FH:I

    const/16 v1, 0x400

    new-array v1, v1, [[Labcd/AE$a;

    iput-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    invoke-direct {p0}, Labcd/AE;->DW()[Labcd/AE$a;

    move-result-object v2

    aput-object v2, v1, v0

    return-void
.end method

.method private final DW()[Labcd/AE$a;
    .registers 2
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
    .registers 1

    iget-object p0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    return-object p0
.end method

.method static synthetic FH(Labcd/AE;)I
    .registers 1

    iget p0, p0, Labcd/AE;->Hw:I

    return p0
.end method

.method static synthetic j6(Labcd/AE;)I
    .registers 1

    iget p0, p0, Labcd/AE;->DW:I

    return p0
.end method

.method private j6()V
    .registers 12

    iget v0, p0, Labcd/AE;->Hw:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    add-int/2addr v0, v1

    iput v0, p0, Labcd/AE;->Hw:I

    shl-int v3, v1, v0

    sub-int/2addr v3, v1

    iput v3, p0, Labcd/AE;->v5:I

    invoke-static {v0}, Labcd/AE;->v5(I)I

    move-result v0

    iput v0, p0, Labcd/AE;->FH:I

    iget v0, p0, Labcd/AE;->Hw:I

    shl-int v0, v1, v0

    iget-object v3, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v4, v0, :cond_25

    shl-int/2addr v0, v1

    new-array v0, v0, [[Labcd/AE$a;

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-lt v0, v2, :cond_29

    return-void

    :cond_29
    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Labcd/AE;->DW()[Labcd/AE$a;

    move-result-object v3

    const/4 v4, 0x0

    :goto_32
    array-length v6, v1

    if-lt v4, v6, :cond_3e

    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    add-int v4, v2, v0

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3e
    aget-object v6, v1, v4

    const/4 v7, 0x0

    move-object v8, v7

    :goto_42
    if-nez v6, :cond_4b

    aput-object v7, v1, v4

    aput-object v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_4b
    iget-object v9, v6, Labcd/AE$a;->tp:Labcd/AE$a;

    iget v10, v6, Labcd/YD;->FH:I

    and-int/2addr v10, v2

    if-nez v10, :cond_56

    iput-object v7, v6, Labcd/AE$a;->tp:Labcd/AE$a;

    move-object v7, v6

    goto :goto_59

    :cond_56
    iput-object v8, v6, Labcd/AE$a;->tp:Labcd/AE$a;

    move-object v8, v6

    :goto_59
    move-object v6, v9

    goto :goto_42
.end method

.method private static final j6(Labcd/YD;Labcd/YD;)Z
    .registers 4

    iget v0, p0, Labcd/YD;->Hw:I

    iget v1, p1, Labcd/YD;->Hw:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Labcd/YD;->v5:I

    iget v1, p1, Labcd/YD;->v5:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Labcd/YD;->Zo:I

    iget v1, p1, Labcd/YD;->Zo:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Labcd/YD;->VH:I

    iget v1, p1, Labcd/YD;->VH:I

    if-ne v0, v1, :cond_20

    iget p0, p0, Labcd/YD;->FH:I

    iget p1, p1, Labcd/YD;->FH:I

    if-ne p0, p1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private static final v5(I)I
    .registers 2

    add-int/lit8 p0, p0, 0xb

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method


# virtual methods
.method public DW(Labcd/AE$a;)Labcd/AE$a;
    .registers 6
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

    ushr-int/lit8 v0, v0, 0x15

    aget-object v2, v1, v0

    :goto_d
    if-nez v2, :cond_23

    aget-object v2, v1, v0

    iput-object v2, p1, Labcd/AE$a;->tp:Labcd/AE$a;

    aput-object p1, v1, v0

    iget v0, p0, Labcd/AE;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AE;->DW:I

    iget v1, p0, Labcd/AE;->FH:I

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Labcd/AE;->j6()V

    :cond_22
    return-object p1

    :cond_23
    invoke-static {v2, p1}, Labcd/AE;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v2

    :cond_2a
    iget-object v2, v2, Labcd/AE$a;->tp:Labcd/AE$a;

    goto :goto_d
.end method

.method public DW(Labcd/YD;)Labcd/AE$a;
    .registers 5
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

    :goto_d
    if-nez v0, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    invoke-static {v0, p1}, Labcd/AE;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    iget-object v0, v0, Labcd/AE$a;->tp:Labcd/AE$a;

    goto :goto_d
.end method

.method public clear()V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Labcd/AE;->DW:I

    iget-object v1, p0, Labcd/AE;->j6:[[Labcd/AE$a;

    array-length v2, v1

    :goto_6
    if-lt v0, v2, :cond_9

    goto :goto_d

    :cond_9
    aget-object v3, v1, v0

    if-nez v3, :cond_e

    :goto_d
    return-void

    :cond_e
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Labcd/zE;

    invoke-direct {v0, p0}, Labcd/zE;-><init>(Labcd/AE;)V

    return-object v0
.end method

.method public j6(Labcd/AE$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:TV;>(TQ;)V"
        }
    .end annotation

    iget v0, p0, Labcd/AE;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AE;->DW:I

    iget v1, p0, Labcd/AE;->FH:I

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Labcd/AE;->j6()V

    :cond_d
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
    .registers 2

    invoke-virtual {p0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/AE;->DW:I

    return v0
.end method
