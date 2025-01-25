.class public final Labcd/_s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_s$a;,
        Labcd/_s$b;
    }
.end annotation


# instance fields
.field private final DW:Labcd/yt;

.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:[Labcd/_s$a;

.field private final Zo:[Labcd/Ys$a;

.field private final j6:Z

.field private final v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/yt;[Labcd/Ys$a;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_s;->DW:Labcd/yt;

    iput-object p2, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    iput-boolean p3, p0, Labcd/_s;->j6:Z

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Labcd/_s;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Labcd/_s$a;

    iput-object p1, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    return-void
.end method

.method private DW(Labcd/tt;)Labcd/tt;
    .registers 4

    iget-object v0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Labcd/_s$a;->Hw:Labcd/tt;

    if-nez v1, :cond_d

    return-object p1

    :cond_d
    invoke-direct {p0, p1}, Labcd/_s;->j6(Labcd/tt;)V

    iget-object p1, v0, Labcd/_s$a;->FH:Labcd/tt;

    return-object p1
.end method

.method static synthetic DW(Labcd/_s;)[Labcd/_s$a;
    .registers 1

    iget-object p0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    return-object p0
.end method

.method private FH(Labcd/tt;)Ljava/util/BitSet;
    .registers 3

    iget-boolean v0, p0, Labcd/_s;->j6:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public static j6(Labcd/yt;[Labcd/Ys$a;Z)Labcd/_s;
    .registers 4

    new-instance v0, Labcd/_s;

    invoke-direct {v0, p0, p1, p2}, Labcd/_s;-><init>(Labcd/yt;[Labcd/Ys$a;Z)V

    invoke-direct {v0}, Labcd/_s;->j6()V

    return-object v0
.end method

.method static synthetic j6(Labcd/_s;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    return-object p0
.end method

.method private j6()V
    .registers 10

    iget-boolean v0, p0, Labcd/_s;->j6:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/_s;->DW:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Labcd/_s;->DW:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_26

    iget-object v1, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    iput v0, v1, Labcd/Ys$a;->DW:I

    :cond_26
    new-instance v0, Labcd/_s$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/_s$b;-><init>(Labcd/_s;Labcd/Zs;)V

    iget-object v1, p0, Labcd/_s;->DW:Labcd/yt;

    iget-boolean v2, p0, Labcd/_s;->j6:Z

    invoke-virtual {v1, v2, v0}, Labcd/yt;->j6(ZLabcd/tt$b;)V

    iget-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3c
    const/4 v2, 0x2

    if-lt v1, v2, :cond_f2

    iget-object v2, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    iget-object v3, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v2}, Labcd/_s;->FH(Labcd/tt;)Ljava/util/BitSet;

    move-result-object v4

    const/4 v5, 0x0

    :goto_54
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    if-ltz v5, :cond_83

    iget-object v6, p0, Labcd/_s;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/tt;

    iget-object v7, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v6}, Labcd/tt;->DW()I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_80

    iget-object v7, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-direct {p0, v6}, Labcd/_s;->DW(Labcd/tt;)Labcd/tt;

    move-result-object v6

    invoke-virtual {v6}, Labcd/tt;->DW()I

    move-result v6

    aget-object v6, v7, v6

    iget v6, v6, Labcd/_s$a;->j6:I

    iget v7, v3, Labcd/_s$a;->j6:I

    if-ge v6, v7, :cond_80

    iput v6, v3, Labcd/_s$a;->j6:I

    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_83
    iget-object v4, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    iget-object v5, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    iget v6, v3, Labcd/_s$a;->j6:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/tt;

    invoke-virtual {v5}, Labcd/tt;->DW()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v4, v4, Labcd/_s$a;->v5:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Labcd/_s$a;->DW:Labcd/tt;

    iput-object v2, v3, Labcd/_s$a;->Hw:Labcd/tt;

    iget-object v4, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v2

    aget-object v2, v4, v2

    iget-object v2, v2, Labcd/_s$a;->v5:Ljava/util/ArrayList;

    :goto_a8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ee

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/tt;

    invoke-direct {p0, v4}, Labcd/_s;->DW(Labcd/tt;)Labcd/tt;

    move-result-object v5

    iget-object v6, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v5}, Labcd/tt;->DW()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Labcd/_s$a;->j6:I

    iget-object v7, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v4}, Labcd/tt;->DW()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Labcd/_s$a;->j6:I

    if-ge v6, v7, :cond_dd

    iget-object v6, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v4}, Labcd/tt;->DW()I

    move-result v4

    aget-object v4, v6, v4

    goto :goto_e7

    :cond_dd
    iget-object v5, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v4}, Labcd/tt;->DW()I

    move-result v4

    aget-object v4, v5, v4

    iget-object v5, v3, Labcd/_s$a;->DW:Labcd/tt;

    :goto_e7
    invoke-virtual {v5}, Labcd/tt;->DW()I

    move-result v5

    iput v5, v4, Labcd/Ys$a;->DW:I

    goto :goto_a8

    :cond_ee
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3c

    :cond_f2
    :goto_f2
    if-gt v2, v0, :cond_139

    iget-object v1, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    iget-object v3, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Labcd/Ys$a;->DW:I

    iget-object v4, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    iget-object v5, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Labcd/_s$a;->j6:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/tt;

    invoke-virtual {v4}, Labcd/tt;->DW()I

    move-result v4

    if-eq v3, v4, :cond_136

    iget-object v3, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v1

    aget-object v1, v4, v1

    iget v1, v1, Labcd/Ys$a;->DW:I

    aget-object v1, v4, v1

    iget v1, v1, Labcd/Ys$a;->DW:I

    iput v1, v3, Labcd/Ys$a;->DW:I

    :cond_136
    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    :cond_139
    return-void
.end method

.method private j6(Labcd/tt;)V
    .registers 9

    iget-object v0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    iget-object v0, v0, Labcd/_s$a;->Hw:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v1, v0

    iget-object v0, v0, Labcd/_s$a;->Hw:Labcd/tt;

    if-eqz v0, :cond_7e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    iget-object v3, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v2

    aget-object v2, v3, v2

    iget-object v3, v2, Labcd/_s$a;->Hw:Labcd/tt;

    iget-object v4, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v3}, Labcd/tt;->DW()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, v4, Labcd/_s$a;->Hw:Labcd/tt;

    if-eqz v5, :cond_55

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, v4, Labcd/_s$a;->Hw:Labcd/tt;

    if-nez p1, :cond_5d

    goto :goto_23

    :cond_5d
    iget-object p1, v4, Labcd/_s$a;->FH:Labcd/tt;

    iget-object v3, v2, Labcd/_s$a;->FH:Labcd/tt;

    iget-object v5, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Labcd/_s$a;->j6:I

    iget-object v6, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v3}, Labcd/tt;->DW()I

    move-result v3

    aget-object v3, v6, v3

    iget v3, v3, Labcd/_s$a;->j6:I

    if-ge v5, v3, :cond_79

    iput-object p1, v2, Labcd/_s$a;->FH:Labcd/tt;

    :cond_79
    iget-object p1, v4, Labcd/_s$a;->Hw:Labcd/tt;

    iput-object p1, v2, Labcd/_s$a;->Hw:Labcd/tt;

    goto :goto_23

    :cond_7e
    return-void
.end method
