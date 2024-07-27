.class public final Labcd/yt;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private EQ:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/List",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/fs;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Labcd/yt;->gn:I

    iput-boolean p3, p0, Labcd/yt;->u7:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/yt;->J0:Z

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v0

    iput v0, p0, Labcd/yt;->VH:I

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Or;->BT()I

    move-result v0

    iput v0, p0, Labcd/yt;->Hw:I

    iget v0, p0, Labcd/yt;->Hw:I

    iput v0, p0, Labcd/yt;->v5:I

    return-void
.end method

.method public static DW(Labcd/Or;Labcd/au;)Labcd/au;
    .registers 6

    new-instance v1, Labcd/au;

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v0

    invoke-direct {v1, v0}, Labcd/au;-><init>(I)V

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/du;->Hw(I)I

    move-result v3

    invoke-virtual {v1, v3}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private DW(Labcd/vt;Labcd/cs;)V
    .registers 7

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "use not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic DW(Labcd/yt;)[Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private XL()V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Labcd/yt;->J0:Z

    if-nez v0, :cond_1

    iget v0, p0, Labcd/yt;->Hw:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    iget v2, p0, Labcd/yt;->Hw:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/xt;

    invoke-direct {v0, p0}, Labcd/xt;-><init>(Labcd/yt;)V

    invoke-virtual {p0, v0}, Labcd/yt;->j6(Labcd/vt$a;)V

    iget v0, p0, Labcd/yt;->Hw:I

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    :goto_1
    iget v0, p0, Labcd/yt;->Hw:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    iget-object v2, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
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

    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/du;->Hw(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private j6(Labcd/fs;)V
    .registers 6

    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0, p0}, Labcd/tt;->j6(Labcd/fs;ILabcd/yt;)Labcd/tt;

    move-result-object v2

    iget-object v3, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {p1}, Labcd/fs;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/du;->Hw(I)I

    move-result v0

    iget-object v1, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->QX()Labcd/tt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    iput v0, p0, Labcd/yt;->DW:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/yt;->FH:I

    return-void
.end method

.method static synthetic j6(Labcd/yt;)[Labcd/vt;
    .registers 2

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    return-object v0
.end method


# virtual methods
.method public DW(I)I
    .registers 5

    iget v0, p0, Labcd/yt;->v5:I

    iget v1, p0, Labcd/yt;->Zo:I

    add-int/2addr v0, v1

    add-int/2addr v1, p1

    iput v1, p0, Labcd/yt;->Zo:I

    iget v1, p0, Labcd/yt;->Hw:I

    add-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Labcd/yt;->Hw:I

    return v0
.end method

.method public DW()Ljava/util/ArrayList;
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

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    return-object v0
.end method

.method DW(Labcd/vt;)V
    .registers 5

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/yt;->DW(Labcd/vt;Labcd/cs;)V

    :cond_0
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    iget-object v1, p0, Labcd/yt;->tp:[Labcd/vt;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    return-void
.end method

.method EQ()V
    .registers 4

    iget v0, p0, Labcd/yt;->FH:I

    if-gez v0, :cond_2

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Labcd/yt;->FH:I

    iget v0, p0, Labcd/yt;->FH:I

    iget v1, p0, Labcd/yt;->VH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/yt;->VH:I

    new-instance v2, Labcd/tt;

    invoke-direct {v2, v0, v1, p0}, Labcd/tt;-><init>(IILabcd/yt;)V

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0, v2}, Labcd/tt;->FH(Labcd/tt;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    iget v1, p0, Labcd/yt;->FH:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Labcd/yt;->FH:I

    iget v0, p0, Labcd/yt;->VH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/yt;->VH:I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH()I
    .registers 4

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->aM()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public FH(I)Labcd/vt;
    .registers 4

    iget-boolean v0, p0, Labcd/yt;->J0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/yt;->u7()I

    move-result v0

    new-array v0, v0, [Labcd/vt;

    iput-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    new-instance v0, Labcd/wt;

    invoke-direct {v0, p0}, Labcd/wt;-><init>(Labcd/yt;)V

    invoke-virtual {p0, v0}, Labcd/yt;->j6(Labcd/vt$a;)V

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No def list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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
            "Ljava/util/List",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/yt;->XL()V

    :cond_0
    iget-object v0, p0, Labcd/yt;->we:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public J0()I
    .registers 3

    iget v0, p0, Labcd/yt;->Hw:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Labcd/yt;->Hw:I

    iget v1, p0, Labcd/yt;->Hw:I

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
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/yt;->J0:Z

    iput-object v1, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    iput-object v1, p0, Labcd/yt;->tp:[Labcd/vt;

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

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    goto :goto_0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/yt;->gn:I

    return v0
.end method

.method public j6(I)I
    .registers 3

    if-gez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->EQ()I

    move-result v0

    goto :goto_0
.end method

.method public j6()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0, v4}, Labcd/tt;->v5(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->aM()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Labcd/tt;->v5(I)V

    invoke-virtual {v0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    iget-object v3, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public j6(Labcd/qt;)V
    .registers 5

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0, p1}, Labcd/vt;->j6(Labcd/qt;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Labcd/qt;->j6()I

    move-result v0

    iput v0, p0, Labcd/yt;->Hw:I

    iget v0, p0, Labcd/yt;->Hw:I

    iput v0, p0, Labcd/yt;->v5:I

    return-void
.end method

.method public j6(Labcd/tt$b;)V
    .registers 8

    new-instance v3, Ljava/util/BitSet;

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->j6()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Labcd/tt$b;->j6(Labcd/tt;Labcd/tt;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j6(Labcd/vt$a;)V
    .registers 4

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0, p1}, Labcd/tt;->j6(Labcd/vt$a;)V

    goto :goto_0

    :cond_0
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
    .registers 6

    iget-object v0, p0, Labcd/yt;->tp:[Labcd/vt;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/yt;->tp:[Labcd/vt;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_2
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v1

    iget-object v2, p0, Labcd/yt;->tp:[Labcd/vt;

    aget-object v1, v2, v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    aput-object p1, v2, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Duplicate add of insn"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Labcd/vt;Labcd/bs;Labcd/bs;)V
    .registers 7

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p3}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    array-length v2, v1

    if-gt v2, v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method j6(Labcd/vt;Labcd/cs;)V
    .registers 8

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Labcd/yt;->DW(Labcd/vt;Labcd/cs;)V

    :cond_2
    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    iget-object v4, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v3, v4, v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/vt;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v1}, Labcd/yt;->DW(Labcd/vt;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v2

    :goto_1
    invoke-virtual {p0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v6

    if-eq v0, v6, :cond_0

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {v1}, Labcd/es;->DW()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :cond_3
    new-instance v1, Labcd/Zr;

    sget-object v3, Labcd/gs;->j3:Labcd/es;

    sget-object v6, Labcd/hs;->j6:Labcd/hs;

    sget-object v7, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v3, v6, v2, v7}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-static {v1, v0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_2
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Labcd/tt;->u7()I

    move-result v5

    if-eq v1, v5, :cond_4

    invoke-virtual {v0, v1}, Labcd/tt;->Hw(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    goto :goto_1

    :cond_6
    return-void
.end method

.method public j6(ZLabcd/tt$b;)V
    .registers 10

    new-instance v4, Ljava/util/BitSet;

    iget-object v0, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/yt;->Hw()Labcd/tt;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v2

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_3
    if-ltz v3, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Labcd/yt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    invoke-interface {p2, v0, v1}, Labcd/tt$b;->j6(Labcd/tt;Labcd/tt;)V

    goto :goto_1
.end method

.method public j6(Labcd/bs;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v4, 0x36

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public tp()[Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/yt;->XL()V

    :cond_0
    iget v0, p0, Labcd/yt;->Hw:I

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Labcd/yt;->Hw:I

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Labcd/yt;->EQ:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
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
    .registers 3

    iput p1, p0, Labcd/yt;->Hw:I

    iget v0, p0, Labcd/yt;->Hw:I

    iput v0, p0, Labcd/yt;->v5:I

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
