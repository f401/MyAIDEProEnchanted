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
            "Ljava/util/Comparator<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/tt;->Zo:I

    const/4 v1, 0x0

    iput v1, p0, Labcd/tt;->EQ:I

    iput v1, p0, Labcd/tt;->we:I

    iput v0, p0, Labcd/tt;->J0:I

    iput-object p3, p0, Labcd/tt;->gn:Labcd/yt;

    iput p1, p0, Labcd/tt;->u7:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    iput p2, p0, Labcd/tt;->VH:I

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {p3}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {p3}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    new-instance p1, Labcd/au;

    invoke-direct {p1}, Labcd/au;-><init>()V

    iput-object p1, p0, Labcd/tt;->v5:Labcd/au;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/tt;->tp:Ljava/util/ArrayList;

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

    if-le v0, v1, :cond_16

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_16
    return-void
.end method

.method private U2()I
    .registers 4

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    instance-of v2, v2, Labcd/ot;

    if-nez v2, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    :goto_19
    return v1
.end method

.method static synthetic j6(Labcd/tt;)I
    .registers 1

    iget p0, p0, Labcd/tt;->VH:I

    return p0
.end method

.method public static j6(Labcd/fs;ILabcd/yt;)Labcd/tt;
    .registers 10

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v1

    new-instance v2, Labcd/tt;

    invoke-virtual {v1}, Labcd/Nr;->DW()I

    move-result v3

    invoke-direct {v2, p1, v3, p2}, Labcd/tt;-><init>(IILabcd/yt;)V

    invoke-virtual {v1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object p1

    iget-object p2, v2, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result p2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, p2, :cond_36

    iget-object v4, v2, Labcd/tt;->DW:Ljava/util/ArrayList;

    new-instance v5, Labcd/mt;

    invoke-virtual {p1, v3}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    invoke-virtual {v1}, Labcd/Nr;->DW()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/fs;->j6(I)Labcd/au;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/yt;->j6(Labcd/Or;Labcd/au;)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, v2, Labcd/tt;->FH:Ljava/util/BitSet;

    invoke-virtual {v1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/yt;->j6(Labcd/Or;Labcd/au;)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, v2, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/yt;->DW(Labcd/Or;Labcd/au;)Labcd/au;

    move-result-object p0

    iput-object p0, v2, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result p0

    if-eqz p0, :cond_6c

    invoke-virtual {v1}, Labcd/Nr;->Zo()I

    move-result p0

    if-gez p0, :cond_66

    const/4 p0, -0x1

    goto :goto_6a

    :cond_66
    invoke-virtual {v0, p0}, Labcd/du;->Hw(I)I

    move-result p0

    :goto_6a
    iput p0, v2, Labcd/tt;->Zo:I

    :cond_6c
    return-object v2
.end method

.method private j6(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/vt;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->u7()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->u7()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_e2

    move v5, v4

    :goto_1f
    if-ge v5, v2, :cond_42

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/vt;

    invoke-virtual {v6}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v6

    invoke-virtual {v6, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    invoke-static {v0, v6}, Labcd/tt;->DW(Ljava/util/BitSet;Labcd/bs;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/vt;

    invoke-virtual {v6}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v6

    invoke-static {v1, v6}, Labcd/tt;->DW(Ljava/util/BitSet;Labcd/bs;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_42
    move v5, v4

    move v6, v5

    :goto_44
    if-ge v5, v2, :cond_5e

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/vt;

    invoke-virtual {v7}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v7

    invoke-static {v0, v7}, Labcd/tt;->j6(Ljava/util/BitSet;Labcd/bs;)Z

    move-result v7

    if-nez v7, :cond_5b

    invoke-static {p1, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v6, v6, 0x1

    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_5e
    if-ne v4, v6, :cond_d9

    move v4, v6

    :goto_61
    if-ge v4, v2, :cond_88

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/vt;

    invoke-virtual {v5}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v7

    invoke-static {v0, v7}, Labcd/tt;->j6(Ljava/util/BitSet;Labcd/bs;)Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-virtual {v5}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v7

    invoke-virtual {v7, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v7

    invoke-static {v1, v7}, Labcd/tt;->j6(Ljava/util/BitSet;Labcd/bs;)Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-static {p1, v6, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_89

    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_88
    const/4 v5, 0x0

    :goto_89
    invoke-virtual {v5}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    iget-object v4, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v2}, Labcd/bs;->Hw()I

    move-result v7

    invoke-virtual {v4, v7}, Labcd/yt;->DW(I)I

    move-result v4

    invoke-virtual {v2, v4}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v4

    new-instance v7, Labcd/mt;

    new-instance v8, Labcd/Zr;

    invoke-virtual {v2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v9

    invoke-static {v9}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v9

    sget-object v10, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {v5}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v5

    invoke-direct {v8, v9, v10, v4, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v7, v8, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    add-int/lit8 v5, v6, 0x1

    invoke-interface {p1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v4}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v4

    new-instance v6, Labcd/mt;

    new-instance v7, Labcd/Zr;

    invoke-virtual {v2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v8

    invoke-static {v8}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v8

    sget-object v9, Labcd/hs;->j6:Labcd/hs;

    invoke-direct {v7, v8, v9, v2, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v6, v7, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    invoke-interface {p1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v5

    goto :goto_da

    :cond_d9
    move v4, v6

    :goto_da
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    goto/16 :goto_1c

    :cond_e2
    return-void
.end method

.method private static j6(Ljava/util/BitSet;Labcd/bs;)Z
    .registers 5

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1a

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    :goto_1b
    return v2
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

    if-nez v0, :cond_10

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-static {v0}, Labcd/st;->FH(I)Labcd/bu;

    move-result-object v0

    iput-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    :cond_10
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

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-static {p1, p0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object p1

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1, v0}, Labcd/yt;->DW(Labcd/vt;)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0, p1}, Labcd/yt;->j6(Labcd/vt;)V

    return-void

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "last insn must branch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Labcd/bs;Labcd/bs;)V
    .registers 7

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/mt;

    invoke-virtual {v0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    if-nez v1, :cond_54

    invoke-virtual {v0}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-lez v0, :cond_2a

    goto :goto_54

    :cond_2a
    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object p2

    new-instance v0, Labcd/mt;

    new-instance v1, Labcd/Zr;

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-static {v2}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v3, Labcd/hs;->j6:Labcd/hs;

    invoke-direct {v1, v2, v3, p1, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v0, v1, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    iget-object p1, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Labcd/tt;->EQ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/tt;->EQ:I

    goto :goto_75

    :cond_54
    :goto_54
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_5b
    if-ltz v0, :cond_75

    iget-object v1, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, p1, p2}, Labcd/tt;->j6(Labcd/bs;Labcd/bs;)V

    iget-object v1, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_5b

    :cond_75
    :goto_75
    return-void
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
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    return-object v0
.end method

.method public FH(I)V
    .registers 4

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    new-instance v1, Labcd/ot;

    invoke-direct {v1, p1, p0}, Labcd/ot;-><init>(ILabcd/tt;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public FH(Labcd/tt;)V
    .registers 4

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v1, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    iget v1, p1, Labcd/tt;->u7:I

    invoke-virtual {v0, v1}, Labcd/au;->DW(I)V

    iget v0, p1, Labcd/tt;->u7:I

    iput v0, p0, Labcd/tt;->Zo:I

    iget-object p1, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v0, p0, Labcd/tt;->u7:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_24
    return-void
.end method

.method public Hw()Labcd/bu;
    .registers 2

    iget-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    if-nez v0, :cond_10

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-static {v0}, Labcd/st;->FH(I)Labcd/bu;

    move-result-object v0

    iput-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    :cond_10
    iget-object v0, p0, Labcd/tt;->Ws:Labcd/bu;

    return-object v0
.end method

.method public Hw(Labcd/tt;)Labcd/tt;
    .registers 6

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->we()Labcd/tt;

    move-result-object v0

    iget-object v1, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, p0, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Labcd/tt;->v5:Labcd/au;

    iget v2, p1, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Labcd/au;->DW(I)V

    iget v1, p1, Labcd/tt;->u7:I

    iput v1, v0, Labcd/tt;->Zo:I

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_47

    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v2, v1}, Labcd/au;->get(I)I

    move-result v2

    iget v3, p1, Labcd/tt;->u7:I

    if-ne v2, v3, :cond_44

    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    iget v3, v0, Labcd/tt;->u7:I

    invoke-virtual {v2, v1, v3}, Labcd/au;->FH(II)V

    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_47
    iget v1, p0, Labcd/tt;->Zo:I

    iget v2, p1, Labcd/tt;->u7:I

    if-ne v1, v2, :cond_51

    iget v1, v0, Labcd/tt;->u7:I

    iput v1, p0, Labcd/tt;->Zo:I

    :cond_51
    iget-object v1, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v1, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, v0, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, v0, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, p0, Labcd/tt;->u7:I

    iget-object v3, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget p1, p1, Labcd/tt;->u7:I

    invoke-virtual {v3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/tt;->we()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not successor of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/tt;->we()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9c

    :goto_9b
    throw p1

    :goto_9c
    goto :goto_9b
.end method

.method public Hw(I)V
    .registers 5

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_20

    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_15

    move v1, v0

    goto :goto_1d

    :cond_15
    iget-object v2, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v2

    iput v2, p0, Labcd/tt;->Zo:I

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_20
    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0, v1}, Labcd/au;->VH(I)V

    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/tt;

    iget-object p1, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v0, p0, Labcd/tt;->u7:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public J0()Labcd/au;
    .registers 6

    new-instance v0, Labcd/au;

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_26

    iget-object v3, p0, Labcd/tt;->gn:Labcd/yt;

    iget-object v4, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v4, v2}, Labcd/au;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/yt;->j6(I)I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_26
    return-object v0
.end method

.method public J8()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    return-object v0
.end method

.method public Mr()V
    .registers 5

    iget v0, p0, Labcd/tt;->we:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/tt;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    iget v2, p0, Labcd/tt;->we:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->J0()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_28

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    iget v0, p0, Labcd/tt;->EQ:I

    if-le v0, v1, :cond_44

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Labcd/tt;->EQ:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/tt;->j6(Ljava/util/List;)V

    :cond_44
    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Ws()V

    return-void
.end method

.method public QX()Labcd/tt;
    .registers 6

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->we()Labcd/tt;

    move-result-object v0

    iget-object v1, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    iput-object v1, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget-object v1, v0, Labcd/tt;->Hw:Ljava/util/BitSet;

    iget v2, p0, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Labcd/tt;->v5:Labcd/au;

    iget v2, p0, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Labcd/au;->DW(I)V

    iget v1, p0, Labcd/tt;->u7:I

    iput v1, v0, Labcd/tt;->Zo:I

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v2, v0, Labcd/tt;->u7:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_39
    if-ltz v1, :cond_57

    iget-object v2, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    iget v3, p0, Labcd/tt;->u7:I

    iget v4, v0, Labcd/tt;->u7:I

    invoke-virtual {v2, v3, v4}, Labcd/tt;->j6(II)V

    iget-object v2, v0, Labcd/tt;->FH:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_39

    :cond_57
    return-object v0
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

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public Zo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
    .registers 3

    iget v0, p0, Labcd/tt;->J0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->j6()V

    :cond_a
    iget v0, p0, Labcd/tt;->J0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public gn()Labcd/tt;
    .registers 3

    iget v0, p0, Labcd/tt;->Zo:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Labcd/tt;->Zo:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    return-object v0
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
            "Ljava/util/ArrayList<",
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

    if-nez v0, :cond_10

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-static {v0}, Labcd/st;->FH(I)Labcd/bu;

    move-result-object v0

    iput-object v0, p0, Labcd/tt;->J8:Labcd/bu;

    :cond_10
    iget-object v0, p0, Labcd/tt;->J8:Labcd/bu;

    invoke-interface {v0, p1}, Labcd/bu;->add(I)V

    return-void
.end method

.method public j6(II)V
    .registers 5

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    iget v0, p0, Labcd/tt;->Zo:I

    if-ne v0, p1, :cond_e

    iput p2, p0, Labcd/tt;->Zo:I

    :cond_e
    iget-object v0, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_28

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_25

    iget-object v1, p0, Labcd/tt;->v5:Labcd/au;

    invoke-virtual {v1, v0, p2}, Labcd/au;->FH(II)V

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_28
    iget-object v0, p0, Labcd/tt;->Hw:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/tt;

    iget-object p2, p2, Labcd/tt;->FH:Ljava/util/BitSet;

    iget v0, p0, Labcd/tt;->u7:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p2, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {p2}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/tt;

    iget-object p1, p1, Labcd/tt;->FH:Ljava/util/BitSet;

    iget p2, p0, Labcd/tt;->u7:I

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public j6(Labcd/Tr;)V
    .registers 4

    invoke-static {p1, p0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object p1

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-direct {p0}, Labcd/tt;->U2()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Labcd/tt;->gn:Labcd/yt;

    invoke-virtual {v0, p1}, Labcd/yt;->j6(Labcd/vt;)V

    return-void
.end method

.method public j6(Labcd/bs;)V
    .registers 4

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    new-instance v1, Labcd/ot;

    invoke-direct {v1, p1, p0}, Labcd/ot;-><init>(Labcd/bs;Labcd/tt;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(Labcd/bs;Labcd/bs;)V
    .registers 7

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    invoke-static {p2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object p2

    new-instance v0, Labcd/mt;

    new-instance v1, Labcd/Zr;

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-static {v2}, Labcd/gs;->u7(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v3, Labcd/hs;->j6:Labcd/hs;

    invoke-direct {v1, v2, v3, p1, p2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v0, v1, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    iget-object p1, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-direct {p0}, Labcd/tt;->U2()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Labcd/tt;->we:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/tt;->we:I

    return-void
.end method

.method public j6(Labcd/ot$b;)V
    .registers 6

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    instance-of v3, v2, Labcd/ot;

    if-eqz v3, :cond_1d

    check-cast v2, Labcd/ot;

    invoke-interface {p1, v2}, Labcd/ot$b;->j6(Labcd/ot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public j6(Labcd/vt$a;)V
    .registers 5

    iget-object v0, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Labcd/tt;->DW:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    invoke-virtual {v2, p1}, Labcd/vt;->j6(Labcd/vt$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
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
