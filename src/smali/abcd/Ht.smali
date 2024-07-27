.class public Labcd/Ht;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ht$a;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/BitSet;

.field private final FH:I

.field private final Hw:Labcd/yt;

.field private VH:I

.field private Zo:Labcd/tt;

.field private gn:Labcd/Ht$a;

.field private final j6:Ljava/util/BitSet;

.field private final v5:Labcd/Ft;


# direct methods
.method private constructor <init>(Labcd/yt;ILabcd/Ft;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-object p1, p0, Labcd/Ht;->Hw:Labcd/yt;

    iput p2, p0, Labcd/Ht;->FH:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Labcd/Ht;->j6:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    iput-object p3, p0, Labcd/Ht;->v5:Labcd/Ft;

    return-void
.end method

.method private DW()V
    .registers 3

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    sget-object v1, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    if-eq v0, v1, :cond_3

    sget-object v1, Labcd/Gt;->j6:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->Hw()V

    goto :goto_0

    :cond_1
    sget-object v0, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->v5()V

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->FH()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private FH()V
    .registers 3

    iget v0, p0, Labcd/Ht;->VH:I

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    iget v1, p0, Labcd/Ht;->FH:I

    invoke-virtual {v0, v1}, Labcd/tt;->j6(I)V

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ht;->VH:I

    sget-object v0, Labcd/Ht$a;->DW:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    goto :goto_0
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/Ht;->j6:Ljava/util/BitSet;

    iget-object v1, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Ht;->j6:Ljava/util/BitSet;

    iget-object v1, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    iget v1, p0, Labcd/Ht;->FH:I

    invoke-virtual {v0, v1}, Labcd/tt;->DW(I)V

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ht;->VH:I

    sget-object v0, Labcd/Ht$a;->DW:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    :cond_0
    return-void
.end method

.method public static j6(Labcd/yt;)Labcd/Ft;
    .registers 5

    invoke-virtual {p0}, Labcd/yt;->u7()I

    move-result v1

    new-instance v2, Labcd/Ft;

    invoke-direct {v2, v1}, Labcd/Ft;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v3, Labcd/Ht;

    invoke-direct {v3, p0, v0, v2}, Labcd/Ht;-><init>(Labcd/yt;ILabcd/Ft;)V

    invoke-virtual {v3}, Labcd/Ht;->j6()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Labcd/Ht;->j6(Labcd/yt;Labcd/Ft;)V

    return-object v2
.end method

.method private static j6(Labcd/yt;Labcd/Ft;)V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->Zo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    if-ne v3, v1, :cond_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1, v7, v0}, Labcd/Ft;->j6(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private v5()V
    .registers 4

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Labcd/Ht;->VH:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    iget v2, p0, Labcd/Ht;->FH:I

    invoke-virtual {v0, v2}, Labcd/vt;->DW(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Labcd/Ht;->v5:Labcd/Ft;

    iget v2, p0, Labcd/Ht;->FH:I

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Labcd/Ft;->j6(II)V

    :cond_0
    sget-object v0, Labcd/Ht$a;->j6:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    :cond_1
    return-void
.end method


# virtual methods
.method public j6()V
    .registers 5

    iget-object v0, p0, Labcd/Ht;->Hw:Labcd/yt;

    iget v1, p0, Labcd/Ht;->FH:I

    invoke-virtual {v0, v1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    sget-object v2, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v2, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    instance-of v2, v0, Labcd/ot;

    if-eqz v2, :cond_1

    check-cast v0, Labcd/ot;

    iget v2, p0, Labcd/Ht;->FH:I

    iget-object v3, p0, Labcd/Ht;->Hw:Labcd/yt;

    invoke-virtual {v0, v2, v3}, Labcd/ot;->j6(ILabcd/yt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iput-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    sget-object v0, Labcd/Ht$a;->FH:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->DW()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    iput-object v2, p0, Labcd/Ht;->Zo:Labcd/tt;

    iget-object v2, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Labcd/Ht;->VH:I

    iget v0, p0, Labcd/Ht;->VH:I

    if-ltz v0, :cond_2

    sget-object v0, Labcd/Ht$a;->j6:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->DW()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insn not found in it\'s own block"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v0, p0, Labcd/Ht;->Hw:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iput-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    iget-object v0, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Labcd/Ht$a;->FH:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->DW()V

    goto :goto_2

    :cond_4
    return-void
.end method
