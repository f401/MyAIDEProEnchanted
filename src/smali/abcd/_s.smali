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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/yt;[Labcd/Ys$a;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_s;->DW:Labcd/yt;

    iput-object p2, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    iput-boolean p3, p0, Labcd/_s;->j6:Z

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Labcd/_s;->FH:Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/_s;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Labcd/_s$a;

    iput-object v0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    return-void
.end method

.method private DW(Labcd/tt;)Labcd/tt;
    .registers 4

    iget-object v0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Labcd/_s$a;->Hw:Labcd/tt;

    if-nez v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Labcd/_s;->j6(Labcd/tt;)V

    iget-object p1, v0, Labcd/_s$a;->FH:Labcd/tt;

    goto :goto_0
.end method

.method static synthetic DW(Labcd/_s;)[Labcd/_s$a;
    .registers 2

    iget-object v0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    return-object v0
.end method

.method private FH(Labcd/tt;)Ljava/util/BitSet;
    .registers 3

    iget-boolean v0, p0, Labcd/_s;->j6:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static j6(Labcd/yt;[Labcd/Ys$a;Z)Labcd/_s;
    .registers 4

    new-instance v0, Labcd/_s;

    invoke-direct {v0, p0, p1, p2}, Labcd/_s;-><init>(Labcd/yt;[Labcd/Ys$a;Z)V

    invoke-direct {v0}, Labcd/_s;->j6()V

    return-object v0
.end method

.method static synthetic j6(Labcd/_s;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j6()V
    .registers 11

    const/4 v2, 0x2

    iget-boolean v0, p0, Labcd/_s;->j6:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/_s;->DW:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    iput v0, v1, Labcd/Ys$a;->DW:I

    :cond_0
    new-instance v0, Labcd/_s$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/_s$b;-><init>(Labcd/_s;Labcd/Zs;)V

    iget-object v1, p0, Labcd/_s;->DW:Labcd/yt;

    iget-boolean v3, p0, Labcd/_s;->j6:Z

    invoke-virtual {v1, v3, v0}, Labcd/yt;->j6(ZLabcd/tt$b;)V

    iget-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v3, v4

    :goto_1
    if-lt v3, v2, :cond_6

    iget-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/tt;

    iget-object v0, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v5

    aget-object v6, v0, v5

    invoke-direct {p0, v1}, Labcd/_s;->FH(Labcd/tt;)Ljava/util/BitSet;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    :goto_2
    if-ltz v5, :cond_3

    iget-object v0, p0, Labcd/_s;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v8, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v9

    aget-object v8, v8, v9

    if-eqz v8, :cond_1

    iget-object v8, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-direct {p0, v0}, Labcd/_s;->DW(Labcd/tt;)Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v8, v0

    iget v0, v0, Labcd/_s$a;->j6:I

    iget v8, v6, Labcd/_s$a;->j6:I

    if-ge v0, v8, :cond_1

    iput v0, v6, Labcd/_s$a;->j6:I

    :cond_1
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Labcd/_s;->DW:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    iget-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    iget v7, v6, Labcd/_s$a;->j6:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v5, v0

    iget-object v0, v0, Labcd/_s$a;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Labcd/_s$a;->DW:Labcd/tt;

    iput-object v0, v6, Labcd/_s$a;->Hw:Labcd/tt;

    iget-object v1, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v1, v0

    iget-object v1, v0, Labcd/_s$a;->v5:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-direct {p0, v0}, Labcd/_s;->DW(Labcd/tt;)Labcd/tt;

    move-result-object v5

    iget-object v7, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v5}, Labcd/tt;->DW()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Labcd/_s$a;->j6:I

    iget-object v8, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v9

    aget-object v8, v8, v9

    iget v8, v8, Labcd/_s$a;->j6:I

    if-ge v7, v8, :cond_4

    iget-object v7, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v7, v0

    invoke-virtual {v5}, Labcd/tt;->DW()I

    move-result v5

    iput v5, v0, Labcd/Ys$a;->DW:I

    goto :goto_3

    :cond_4
    iget-object v5, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v5, v0

    iget-object v5, v6, Labcd/_s$a;->DW:Labcd/tt;

    invoke-virtual {v5}, Labcd/tt;->DW()I

    move-result v5

    iput v5, v0, Labcd/Ys$a;->DW:I

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_1

    :cond_6
    :goto_4
    if-gt v2, v4, :cond_8

    iget-object v0, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v1, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v3

    aget-object v1, v1, v3

    iget v3, v1, Labcd/Ys$a;->DW:I

    iget-object v1, p0, Labcd/_s;->v5:Ljava/util/ArrayList;

    iget-object v5, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Labcd/_s$a;->j6:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v1

    if-eq v3, v1, :cond_7

    iget-object v1, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v3

    aget-object v1, v1, v3

    iget-object v3, p0, Labcd/_s;->Zo:[Labcd/Ys$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v3, v0

    iget v0, v0, Labcd/Ys$a;->DW:I

    aget-object v0, v3, v0

    iget v0, v0, Labcd/Ys$a;->DW:I

    iput v0, v1, Labcd/Ys$a;->DW:I

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    return-void
.end method

.method private j6(Labcd/tt;)V
    .registers 10

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

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v4, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aget-object v0, v4, v0

    iget-object v4, v0, Labcd/_s$a;->Hw:Labcd/tt;

    iget-object v5, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v4}, Labcd/tt;->DW()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Labcd/_s$a;->Hw:Labcd/tt;

    if-eqz v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v5, Labcd/_s$a;->Hw:Labcd/tt;

    if-eqz v3, :cond_0

    iget-object v3, v5, Labcd/_s$a;->FH:Labcd/tt;

    iget-object v4, v0, Labcd/_s$a;->FH:Labcd/tt;

    iget-object v6, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v3}, Labcd/tt;->DW()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Labcd/_s$a;->j6:I

    iget-object v7, p0, Labcd/_s;->Hw:[Labcd/_s$a;

    invoke-virtual {v4}, Labcd/tt;->DW()I

    move-result v4

    aget-object v4, v7, v4

    iget v4, v4, Labcd/_s$a;->j6:I

    if-ge v6, v4, :cond_2

    iput-object v3, v0, Labcd/_s$a;->FH:Labcd/tt;

    :cond_2
    iget-object v3, v5, Labcd/_s$a;->Hw:Labcd/tt;

    iput-object v3, v0, Labcd/_s$a;->Hw:Labcd/tt;

    goto :goto_0

    :cond_3
    return-void
.end method
