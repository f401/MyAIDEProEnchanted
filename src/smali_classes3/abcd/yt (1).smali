.class public final Labcd/yt;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private EQ:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private FH:I

.field private Hw:I

.field private J0:Z

.field private VH:I

.field private Zo:I

.field private final gn:I

.field private j6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private tp:[Labcd/vt;

.field private final u7:Z

.field private v5:I

.field private we:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/fs;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Labcd/yt;->gn:I

    iput-boolean p3, p0, Labcd/yt;->u7:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Labcd/yt;->J0:Z

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p2

    invoke-virtual {p2}, Labcd/du;->rN()I

    move-result p2

    iput p2, p0, Labcd/yt;->VH:I

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Or;->BT()I

    move-result p1

    iput p1, p0, Labcd/yt;->Hw:I

    iput p1, p0, Labcd/yt;->v5:I

    return-void
.end method

.method public static DW(Labcd/Or;Labcd/au;)Labcd/au;
    .registers 6

    new-instance v0, Labcd/au;

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    invoke-virtual {p1, v2}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/du;->Hw(I)I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v0
.end method

.method private DW(Labcd/vt;Labcd/cs;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "use not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    return-void
.end method

.method static synthetic DW(Labcd/yt;)[Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    return-object p0
.end method

.method private XL()V
    .registers 5

    iget-boolean v0, p0, Labcd/yt;->J0:Z

    if-nez v0, :cond_3e

    iget v0, p0, Labcd/yt;->Hw:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    iget v2, p0, Labcd/yt;->Hw:I

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    new-instance v1, Labcd/xt;

    invoke-direct {v1, p0}, Labcd/xt;-><init>(Labcd/yt;)V

    invoke-virtual {p0, v1}, Labcd/yt;->j6(Labcd/vt$a;)V

    iget v1, p0, Labcd/yt;->Hw:I

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Labcd/yt;->we:[Ljava/util/List;

    :goto_2a
    iget v1, p0, Labcd/yt;->Hw:I

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Labcd/yt;->we:[Ljava/util/List;

    iget-object v2, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3d
    return-void

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method private static j6(Labcd/tt;)Labcd/vt;
    .registers 7

    new-instance v0, Labcd/mt;

    new-instance v1, Labcd/Zr;

    sget-object v2, Labcd/gs;->j3:Labcd/es;

    sget-object v3, Labcd/hs;->j6:Labcd/hs;

    const/4 v4, 0x0

    sget-object v5, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-direct {v0, v1, p0}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    return-object v0
.end method

.method public static j6(Labcd/fs;IZ)Labcd/yt;
    .registers 4

    new-instance v0, Labcd/yt;

    invoke-direct {v0, p0, p1, p2}, Labcd/yt;-><init>(Labcd/fs;IZ)V

    invoke-direct {v0, p0}, Labcd/yt;->j6(Labcd/fs;)V

    return-object v0
.end method

.method static j6(Labcd/Or;Labcd/au;)Ljava/util/BitSet;
    .registers 6

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    invoke-virtual {p1, v2}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/du;->Hw(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v0
.end method

.method private j6(Labcd/fs;)V
    .registers 6

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    invoke-static {p1, v1, p0}, Labcd/tt;->j6(Labcd/fs;ILabcd/yt;)Labcd/tt;

    move-result-object v2

    iget-object v3, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {p1}, Labcd/fs;->DW()I

    move-result p1

    invoke-virtual {v0, p1}, Labcd/du;->Hw(I)I

    move-result p1

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/tt;

    invoke-virtual {p1}, Labcd/tt;->QX()Labcd/tt;

    move-result-object p1

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result p1

    iput p1, p0, Labcd/yt;->DW:I

    const/4 p1, -0x1

    iput p1, p0, Labcd/yt;->FH:I

    return-void
.end method

.method static synthetic j6(Labcd/yt;)[Labcd/vt;
    .registers 1

    iget-object p0, p0, Labcd/yt;->tp:[Labcd/vt;

    return-object p0
.end method


# virtual methods
.method public DW(I)I
    .registers 4

    iget v0, p0, Labcd/yt;->v5:I

    iget v1, p0, Labcd/yt;->Zo:I

    add-int/2addr v0, v1

    add-int/2addr v1, p1

    iput v1, p0, Labcd/yt;->Zo:I

    iget v1, p0, Labcd/yt;->Hw:I

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Labcd/yt;->Hw:I

    return v0
.end method

.method public DW()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    return-object v0
.end method

.method DW(Labcd/vt;)V
    .registers 4

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/yt;->DW(Labcd/vt;Labcd/cs;)V

    :cond_b
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p1

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1c
    return-void
.end method

.method EQ()V
    .registers 4

    iget v0, p0, Labcd/yt;->FH:I

    if-gez v0, :cond_4d

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Labcd/yt;->FH:I

    iget v1, p0, Labcd/yt;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/yt;->VH:I

    new-instance v2, Labcd/tt;

    invoke-direct {v2, v0, v1, p0}, Labcd/tt;-><init>(IILabcd/yt;)V

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, v2}, Labcd/tt;->FH(Labcd/tt;)V

    goto :goto_22

    :cond_32
    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    iget v1, p0, Labcd/yt;->FH:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Labcd/yt;->FH:I

    iget v0, p0, Labcd/yt;->VH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/yt;->VH:I

    :cond_4c
    return-void

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public FH()I
    .registers 4

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->aM()Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method public FH(I)Labcd/vt;
    .registers 3

    iget-boolean v0, p0, Labcd/yt;->J0:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    if-eqz v0, :cond_b

    aget-object p1, v0, p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Labcd/yt;->u7()I

    move-result v0

    new-array v0, v0, [Labcd/vt;

    iput-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    new-instance v0, Labcd/wt;

    invoke-direct {v0, p0}, Labcd/wt;-><init>(Labcd/yt;)V

    invoke-virtual {p0, v0}, Labcd/yt;->j6(Labcd/vt$a;)V

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    aget-object p1, v0, p1

    return-object p1

    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No def list in back mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw()Labcd/tt;
    .registers 3

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    iget v1, p0, Labcd/yt;->DW:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    return-object v0
.end method

.method public Hw(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    if-nez v0, :cond_7

    invoke-direct {p0}, Labcd/yt;->XL()V

    :cond_7
    iget-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public J0()I
    .registers 3

    iget v0, p0, Labcd/yt;->Hw:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Labcd/yt;->Hw:I

    iput v1, p0, Labcd/yt;->v5:I

    invoke-virtual {p0}, Labcd/yt;->J8()V

    return v0
.end method

.method public J8()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    iput-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    iput-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    return-void
.end method

.method public QX()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/yt;->J0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    iput-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    return-void
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Labcd/yt;->FH:I

    return v0
.end method

.method public Ws()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/yt;->Zo:I

    return-void
.end method

.method public Zo()Labcd/tt;
    .registers 3

    iget v0, p0, Labcd/yt;->FH:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    :goto_e
    return-object v0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/yt;->gn:I

    return v0
.end method

.method public j6(I)I
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/tt;

    invoke-virtual {p1}, Labcd/tt;->EQ()I

    move-result p1

    return p1
.end method

.method public j6()V
    .registers 6

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, v2}, Labcd/tt;->v5(I)V

    goto :goto_6

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->aM()Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_23

    :cond_36
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Labcd/tt;->v5(I)V

    invoke-virtual {v1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_42
    if-ltz v3, :cond_23

    iget-object v4, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_42

    :cond_54
    return-void
.end method

.method public j6(Labcd/qt;)V
    .registers 5

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    invoke-virtual {v2, p1}, Labcd/vt;->j6(Labcd/qt;)V

    goto :goto_1c

    :cond_2c
    invoke-virtual {p1}, Labcd/qt;->j6()I

    move-result p1

    iput p1, p0, Labcd/yt;->Hw:I

    iput p1, p0, Labcd/yt;->v5:I

    return-void
.end method

.method public j6(Labcd/tt$b;)V
    .registers 8

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_19
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_53

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->j6()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_39
    if-ltz v4, :cond_47

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/tt;

    invoke-virtual {v1, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    :cond_47
    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Labcd/tt$b;->j6(Labcd/tt;Labcd/tt;)V

    goto :goto_19

    :cond_53
    return-void
.end method

.method public j6(Labcd/vt$a;)V
    .registers 4

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1, p1}, Labcd/tt;->j6(Labcd/vt$a;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method j6(Labcd/vt;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/cs;)V

    invoke-virtual {p0, p1, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/bs;)V

    return-void
.end method

.method j6(Labcd/vt;Labcd/bs;)V
    .registers 5

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result p2

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    :cond_10
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p2

    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/yt;->tp:[Labcd/vt;

    aget-object v0, v1, v0

    if-nez v0, :cond_27

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result p2

    aput-object p1, v1, p2

    goto :goto_2f

    :cond_27
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Duplicate add of insn"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_2f
    return-void
.end method

.method j6(Labcd/vt;Labcd/bs;Labcd/bs;)V
    .registers 5

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result p2

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p3}, Labcd/bs;->we()I

    move-result p2

    iget-object p3, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    array-length v0, p3

    if-gt v0, p2, :cond_1f

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    return-void

    :cond_1f
    aget-object p2, p3, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method j6(Labcd/vt;Labcd/cs;)V
    .registers 7

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_a

    invoke-direct {p0, p1, p2}, Labcd/yt;->DW(Labcd/vt;Labcd/cs;)V

    :cond_a
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_27

    invoke-virtual {p2, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    iget-object v3, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v2, v3, v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public j6(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/vt;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1e
    if-ltz v3, :cond_35

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/vt;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p0, v5}, Labcd/yt;->DW(Labcd/vt;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_3e

    move-object v6, v5

    goto :goto_46

    :cond_3e
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/vt;

    :goto_46
    invoke-virtual {p0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v7

    if-eq v1, v7, :cond_8

    if-eqz v3, :cond_62

    invoke-virtual {v6}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-virtual {v6}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v3

    invoke-virtual {v3}, Labcd/es;->DW()I

    move-result v3

    if-ne v3, v4, :cond_8

    :cond_62
    new-instance v3, Labcd/Zr;

    sget-object v4, Labcd/gs;->j3:Labcd/es;

    sget-object v6, Labcd/hs;->j6:Labcd/hs;

    sget-object v7, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v3, v4, v6, v5, v7}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-static {v3, v1}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v2

    const/4 v3, 0x0

    :goto_79
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-ltz v3, :cond_8

    invoke-virtual {v1}, Labcd/tt;->u7()I

    move-result v4

    if-eq v3, v4, :cond_88

    invoke-virtual {v1, v3}, Labcd/tt;->Hw(I)V

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_8b
    return-void
.end method

.method public j6(ZLabcd/tt$b;)V
    .registers 10

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v2

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v2

    :goto_1b
    if-nez v2, :cond_1e

    return-void

    :cond_1e
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_6d

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_25

    if-eqz p1, :cond_48

    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v4

    goto :goto_4c

    :cond_48
    invoke-virtual {v2}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v4

    :goto_4c
    const/4 v5, 0x0

    :goto_4d
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    if-ltz v5, :cond_62

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_62
    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    invoke-interface {p2, v2, v3}, Labcd/tt$b;->j6(Labcd/tt;Labcd/tt;)V

    goto :goto_25

    :cond_6d
    return-void
.end method

.method public j6(Labcd/bs;)Z
    .registers 6

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {v0}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    :cond_14
    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v3, 0x36

    if-ne v0, v3, :cond_20

    return v2

    :cond_3f
    return v1
.end method

.method public tp()[Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-nez v0, :cond_7

    invoke-direct {p0}, Labcd/yt;->XL()V

    :cond_7
    iget v0, p0, Labcd/yt;->Hw:I

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_c
    iget v2, p0, Labcd/yt;->Hw:I

    if-ge v1, v2, :cond_1e

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Labcd/yt;->Hw:I

    return v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/yt;->DW:I

    return v0
.end method

.method v5(I)V
    .registers 2

    iput p1, p0, Labcd/yt;->Hw:I

    iput p1, p0, Labcd/yt;->v5:I

    invoke-virtual {p0}, Labcd/yt;->J8()V

    return-void
.end method

.method public we()Labcd/tt;
    .registers 4

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Labcd/yt;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/yt;->VH:I

    new-instance v2, Labcd/tt;

    invoke-direct {v2, v0, v1, p0}, Labcd/tt;-><init>(IILabcd/yt;)V

    invoke-virtual {v2}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Labcd/yt;->j6(Labcd/tt;)Labcd/vt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
