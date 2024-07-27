.class public final Labcd/tt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/tt$a;
    }
.end annotation


# static fields
.field public static final j6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private EQ:I

.field private FH:Ljava/util/BitSet;

.field private Hw:Ljava/util/BitSet;

.field private J0:I

.field private J8:Labcd/bu;

.field private VH:I

.field private Ws:Labcd/bu;

.field private Zo:I

.field private gn:Labcd/yt;

.field private final tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private u7:I

.field private v5:Labcd/au;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/tt$a;

    invoke-direct {v0}, Labcd/tt$a;-><init>()V

    sput-object v0, Labcd/tt;->j6:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILabcd/yt;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Labcd/tt;->Zo:I

    iput v1, p0, Labcd/tt;->EQ:I

    iput v1, p0, Labcd/tt;->we:I

    iput v0, p0, Labcd/tt;->J0:I

    iput-object p3, p0, Labcd/tt;->gn:Labcd/yt;

    iput p1, p0, Labcd/tt;->u7:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    iput p2, p0, Labcd/tt;->VH:I

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    new-instance v0, Labcd/au;

    invoke-direct {v0}, Labcd/au;-><init>()V

    iput-object v0, p0, Labcd/tt;->v5:Labcd/au;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/tt;->tp:Ljava/util/ArrayList;

    return-void
.end method

.method private static DW(Ljava/util/BitSet;Labcd/bs;)V
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method private U2()I
    .registers 4

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    instance-of v0, v0, Labcd/ot;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/tt;)I
    .registers 2

    iget v0, p0, Labcd/tt;->VH:I

    return v0
.end method

.method public static j6(Labcd/fs;ILabcd/yt;)Labcd/tt;
    .registers 12

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v2

    new-instance v3, Labcd/tt;

    invoke-virtual {v2}, Labcd/Nr;->DW()I

    move-result v0

    invoke-direct {v3, p1, v0, p2}, Labcd/tt;-><init>(IILabcd/yt;)V

    invoke-virtual {v2}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v4

    iget-object v0, v3, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v6, v3, Labcd/tt;->DW:Ljava/util/ArrayList;

    new-instance v7, Labcd/mt;

    invoke-virtual {v4, v0}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yt;->j6(Labcd/Or;Labcd/au;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Labcd/tt;->FH:Ljava/util/BitSet;

    invoke-virtual {v2}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yt;->j6(Labcd/Or;Labcd/au;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v2}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yt;->DW(Labcd/Or;Labcd/au;)Labcd/au;

    move-result-object v0

    iput-object v0, v3, Labcd/tt;->v5:Labcd/au;

    iget-object v0, v3, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Labcd/Nr;->Zo()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    iput v0, v3, Labcd/tt;->Zo:I

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {v1, v0}, Labcd/du;->Hw(I)I

    move-result v0

    goto :goto_1
.end method

.method private j6(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/vt;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v6, Ljava/util/BitSet;

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v7, Ljava/util/BitSet;

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_4

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-static {v6, v0}, Labcd/tt;->DW(Ljava/util/BitSet;Labcd/bs;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-static {v7, v0}, Labcd/tt;->DW(Ljava/util/BitSet;Labcd/bs;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v2, v4

    move v1, v4

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-static {v6, v0}, Labcd/tt;->j6(Ljava/util/BitSet;Labcd/bs;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1, v2, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    if-ne v4, v1, :cond_3

    const/4 v2, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v8

    invoke-static {v6, v8}, Labcd/tt;->j6(Ljava/util/BitSet;Labcd/bs;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v8

    invoke-virtual {v8, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v8

    invoke-static {v7, v8}, Labcd/tt;->j6(Ljava/util/BitSet;Labcd/bs;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :goto_5
    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    iget-object v2, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v4

    invoke-virtual {v2, v4}, Labcd/yt;->DW(I)I

    move-result v2

    invoke-virtual {v3, v2}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v4

    new-instance v8, Labcd/mt;

    new-instance v2, Labcd/Zr;

    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v9

    invoke-static {v9}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v9

    sget-object v10, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {v0}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-direct {v2, v9, v10, v4, v0}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v8, v2, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v4}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v0

    new-instance v1, Labcd/mt;

    new-instance v4, Labcd/Zr;

    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v8

    invoke-static {v8}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v8

    sget-object v9, Labcd/hs;->j6:Labcd/hs;

    invoke-direct {v4, v8, v9, v3, v0}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v1, v4, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_6
    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    move v3, v0

    move v4, v1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_3
    move v0, v3

    goto :goto_6

    :cond_4
    return-void

    :cond_5
    move-object v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    goto/16 :goto_3
.end method

.method private static j6(Ljava/util/BitSet;Labcd/bs;)Z
    .registers 6

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/4 v0, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/tt;->u7:I

    return v0
.end method

.method public DW(I)V
    .registers 3

    iget-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-static {v0}, Labcd/st;->FH(I)Labcd/bu;

    move-result-object v0

    iput-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    :cond_0
    iget-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    invoke-interface {v0, p1}, Labcd/bu;->add(I)V

    return-void
.end method

.method public DW(Labcd/Tr;)V
    .registers 6

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-static {p1, p0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v1

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v2, v0}, Labcd/yt;->DW(Labcd/vt;)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/vt;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "last insn must branch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Labcd/bs;Labcd/bs;)V
    .registers 8

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/mt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0, p1, p2}, Labcd/tt;->j6(Labcd/bs;Labcd/bs;)V

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v0

    new-instance v1, Labcd/mt;

    new-instance v2, Labcd/Zr;

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v3

    invoke-static {v3}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v3

    sget-object v4, Labcd/hs;->j6:Labcd/hs;

    invoke-direct {v2, v3, v4, p1, v0}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v1, v2, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Labcd/tt;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/tt;->EQ:I

    goto :goto_0
.end method

.method public DW(Labcd/tt;)V
    .registers 3

    iget-object v0, p0, Labcd/tt;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public EQ()I
    .registers 2

    iget v0, p0, Labcd/tt;->VH:I

    return v0
.end method

.method public FH()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    return-object v0
.end method

.method public FH(I)V
    .registers 5

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Labcd/ot;

    invoke-direct {v2, p1, p0}, Labcd/ot;-><init>(ILabcd/tt;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public FH(Labcd/tt;)V
    .registers 4

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v1, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    iget v1, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Labcd/au;->DW(I)V

    iget v0, p1, Labcd/tt;->u7:I

    iput v0, p0, Labcd/tt;->Zo:I

    iget-object v0, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public Hw()Labcd/bu;
    .registers 2

    iget-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-static {v0}, Labcd/st;->FH(I)Labcd/bu;

    move-result-object v0

    iput-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    :cond_0
    iget-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    return-object v0
.end method

.method public Hw(Labcd/tt;)Labcd/tt;
    .registers 7

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->we()Labcd/tt;

    move-result-object v1

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Labcd/tt;->v5:Labcd/au;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Labcd/au;->DW(I)V

    iget v0, p1, Labcd/tt;->u7:I

    iput v0, v1, Labcd/tt;->Zo:I

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v2

    iget v3, p1, Labcd/tt;->u7:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    iget v3, v1, Labcd/tt;->u7:I

    invoke-virtual {v2, v0, v3}, Labcd/au;->FH(II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/tt;->Zo:I

    iget v2, p1, Labcd/tt;->u7:I

    if-ne v0, v2, :cond_2

    iget v0, v1, Labcd/tt;->u7:I

    iput v0, p0, Labcd/tt;->Zo:I

    :cond_2
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, v1, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, v1, Labcd/tt;->u7:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, p0, Labcd/tt;->u7:I

    iget-object v3, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v4, p1, Labcd/tt;->u7:I

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/tt;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not successor of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/tt;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Hw(I)V
    .registers 5

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v2, v1}, Labcd/au;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v2, v1}, Labcd/au;->get(I)I

    move-result v2

    iput v2, p0, Labcd/tt;->Zo:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->VH(I)V

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v0, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public J0()Labcd/au;
    .registers 6

    new-instance v1, Labcd/au;

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    invoke-direct {v1, v0}, Labcd/au;-><init>(I)V

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Labcd/tt;->gn:Labcd/yt;

    iget-object v4, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v4, v0}, Labcd/au;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/yt;->j6(I)I

    move-result v3

    invoke-virtual {v1, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public J8()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    return-object v0
.end method

.method public Mr()V
    .registers 5

    const/4 v3, 0x1

    iget v0, p0, Labcd/tt;->we:I

    if-le v0, v3, :cond_0

    iget-object v1, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/tt;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    iget v1, p0, Labcd/tt;->we:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->J0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Labcd/tt;->EQ:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Labcd/tt;->EQ:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/tt;->j6(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Ws()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public QX()Labcd/tt;
    .registers 6

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->we()Labcd/tt;

    move-result-object v2

    iget-object v0, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    iput-object v0, v2, Labcd/tt;->FH:Ljava/util/BitSet;

    iget-object v0, v2, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v2, Labcd/tt;->v5:Labcd/au;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Labcd/au;->DW(I)V

    iget v0, p0, Labcd/tt;->u7:I

    iput v0, v2, Labcd/tt;->Zo:I

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget-object v0, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v1, v2, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v2, Labcd/tt;->FH:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget v3, p0, Labcd/tt;->u7:I

    iget v4, v2, Labcd/tt;->u7:I

    invoke-virtual {v0, v3, v4}, Labcd/tt;->j6(II)V

    iget-object v0, v2, Labcd/tt;->FH:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public VH()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    return-object v0
.end method

.method public Ws()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    return-object v0
.end method

.method public XL()Z
    .registers 3

    iget v0, p0, Labcd/tt;->u7:I

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->VH()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Zo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/tt;->U2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aM()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Labcd/tt;->J0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->j6()V

    :cond_0
    iget v1, p0, Labcd/tt;->J0:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gn()Labcd/tt;
    .registers 3

    iget v0, p0, Labcd/tt;->Zo:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Labcd/tt;->Zo:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    goto :goto_0
.end method

.method public j3()V
    .registers 4

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/tt;->U2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public j6()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/tt;->tp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/tt;->J8:Labcd/bu;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-static {v0}, Labcd/st;->FH(I)Labcd/bu;

    move-result-object v0

    iput-object v0, p0, Labcd/tt;->J8:Labcd/bu;

    :cond_0
    iget-object v0, p0, Labcd/tt;->J8:Labcd/bu;

    invoke-interface {v0, p1}, Labcd/bu;->add(I)V

    return-void
.end method

.method public j6(II)V
    .registers 5

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    iget v0, p0, Labcd/tt;->Zo:I

    if-ne v0, p1, :cond_1

    iput p2, p0, Labcd/tt;->Zo:I

    :cond_1
    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1, v0, p2}, Labcd/au;->FH(II)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v0, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v0, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public j6(Labcd/Tr;)V
    .registers 5

    invoke-static {p1, p0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v0

    iget-object v1, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-direct {p0}, Labcd/tt;->U2()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1, v0}, Labcd/yt;->j6(Labcd/vt;)V

    return-void
.end method

.method public j6(Labcd/bs;)V
    .registers 5

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Labcd/ot;

    invoke-direct {v2, p1, p0}, Labcd/ot;-><init>(Labcd/bs;Labcd/tt;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(Labcd/bs;Labcd/bs;)V
    .registers 8

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v0

    new-instance v1, Labcd/mt;

    new-instance v2, Labcd/Zr;

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v3

    invoke-static {v3}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v3

    sget-object v4, Labcd/hs;->j6:Labcd/hs;

    invoke-direct {v2, v3, v4, p1, v0}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v1, v2, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-direct {p0}, Labcd/tt;->U2()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Labcd/tt;->we:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/tt;->we:I

    goto :goto_0
.end method

.method public j6(Labcd/ot$b;)V
    .registers 6

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    instance-of v3, v0, Labcd/ot;

    if-eqz v3, :cond_0

    check-cast v0, Labcd/ot;

    invoke-interface {p1, v0}, Labcd/ot$b;->j6(Labcd/ot;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Labcd/vt$a;)V
    .registers 5

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0, p1}, Labcd/vt;->j6(Labcd/vt$a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/tt;->VH:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 3

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    iget v1, p0, Labcd/tt;->Zo:I

    invoke-virtual {v0, v1}, Labcd/yt;->j6(I)I

    move-result v0

    return v0
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Labcd/tt;->Zo:I

    return v0
.end method

.method public v5()Labcd/yt;
    .registers 2

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    return-object v0
.end method

.method public v5(I)V
    .registers 2

    iput p1, p0, Labcd/tt;->J0:I

    return-void
.end method

.method public we()Ljava/lang/String;
    .registers 2

    iget v0, p0, Labcd/tt;->VH:I

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
