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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-object p1, p0, Labcd/Ht;->Hw:Labcd/yt;

    iput p2, p0, Labcd/Ht;->FH:I

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Labcd/Ht;->j6:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    iput-object p3, p0, Labcd/Ht;->v5:Labcd/Ft;

    return-void
.end method

.method private DW()V
    .registers 3

    :goto_0
    iget-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    sget-object v1, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    if-eq v0, v1, :cond_30

    sget-object v1, Labcd/Gt;->j6:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    goto :goto_0

    :cond_18
    sget-object v0, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->Hw()V

    goto :goto_0

    :cond_20
    sget-object v0, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->v5()V

    goto :goto_0

    :cond_28
    sget-object v0, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->FH()V

    goto :goto_0

    :cond_30
    return-void
.end method

.method private FH()V
    .registers 3

    iget v0, p0, Labcd/Ht;->VH:I

    if-nez v0, :cond_17

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    iget v1, p0, Labcd/Ht;->FH:I

    invoke-virtual {v0, v1}, Labcd/tt;->j6(I)V

    iget-object v0, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_1f

    :cond_17
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Ht;->VH:I

    sget-object v0, Labcd/Ht$a;->DW:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    :goto_1f
    return-void
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/Ht;->j6:Ljava/util/BitSet;

    iget-object v1, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_32

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

    :cond_32
    return-void
.end method

.method public static j6(Labcd/yt;)Labcd/Ft;
    .registers 5

    invoke-virtual {p0}, Labcd/yt;->u7()I

    move-result v0

    new-instance v1, Labcd/Ft;

    invoke-direct {v1, v0}, Labcd/Ft;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    new-instance v3, Labcd/Ht;

    invoke-direct {v3, p0, v2, v1}, Labcd/Ht;-><init>(Labcd/yt;ILabcd/Ft;)V

    invoke-virtual {v3}, Labcd/Ht;->j6()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    invoke-static {p0, v1}, Labcd/Ht;->j6(Labcd/yt;Labcd/Ft;)V

    return-object v1
.end method

.method private static j6(Labcd/yt;Labcd/Ft;)V
    .registers 9

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->Zo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_8

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v1, :cond_48

    if-ne v3, v4, :cond_26

    goto :goto_45

    :cond_26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/vt;

    invoke-virtual {v5}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v5

    invoke-virtual {v5}, Labcd/bs;->we()I

    move-result v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/vt;

    invoke-virtual {v6}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v6

    invoke-virtual {v6}, Labcd/bs;->we()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Labcd/Ft;->j6(II)V

    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_4b
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

    if-nez v0, :cond_2b

    if-eqz v1, :cond_27

    iget-object v0, p0, Labcd/Ht;->v5:Labcd/Ft;

    iget v2, p0, Labcd/Ht;->FH:I

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Labcd/Ft;->j6(II)V

    :cond_27
    sget-object v0, Labcd/Ht$a;->j6:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    :cond_2b
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

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    sget-object v2, Labcd/Ht$a;->Hw:Labcd/Ht$a;

    iput-object v2, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    instance-of v2, v1, Labcd/ot;

    if-eqz v2, :cond_44

    check-cast v1, Labcd/ot;

    iget v2, p0, Labcd/Ht;->FH:I

    iget-object v3, p0, Labcd/Ht;->Hw:Labcd/yt;

    invoke-virtual {v1, v2, v3}, Labcd/ot;->j6(ILabcd/yt;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    iput-object v2, p0, Labcd/Ht;->Zo:Labcd/tt;

    sget-object v2, Labcd/Ht$a;->FH:Labcd/Ht$a;

    iput-object v2, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->DW()V

    goto :goto_2e

    :cond_44
    invoke-virtual {v1}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v2

    iput-object v2, p0, Labcd/Ht;->Zo:Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Labcd/Ht;->VH:I

    if-ltz v1, :cond_5e

    sget-object v1, Labcd/Ht$a;->j6:Labcd/Ht$a;

    iput-object v1, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->DW()V

    goto :goto_c

    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insn not found in it\'s own block"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    :goto_66
    iget-object v0, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_8a

    iget-object v1, p0, Labcd/Ht;->Hw:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    iput-object v1, p0, Labcd/Ht;->Zo:Labcd/tt;

    iget-object v1, p0, Labcd/Ht;->DW:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Labcd/Ht$a;->FH:Labcd/Ht$a;

    iput-object v0, p0, Labcd/Ht;->gn:Labcd/Ht$a;

    invoke-direct {p0}, Labcd/Ht;->DW()V

    goto :goto_66

    :cond_8a
    return-void
.end method
