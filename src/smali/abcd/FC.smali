.class Labcd/FC;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:[J

.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Z

.field private j6:Labcd/cC$c;

.field private v5:I


# direct methods
.method constructor <init>(Labcd/cC$c;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/cC$c;",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Labcd/FC;->v5:I

    iput-object p1, p0, Labcd/FC;->j6:Labcd/cC$c;

    iput-object p2, p0, Labcd/FC;->DW:Ljava/util/List;

    iput-object p3, p0, Labcd/FC;->FH:Ljava/util/List;

    return-void
.end method

.method private static DW(I)I
    .registers 2

    const v0, 0xfffffff

    sub-int/2addr v0, p0

    return v0
.end method

.method static DW(J)I
    .registers 6

    const v0, 0xfffffff

    const/16 v1, 0x1c

    ushr-long v2, p0, v1

    long-to-int v1, v2

    and-int/2addr v0, v1

    invoke-static {v0}, Labcd/FC;->DW(I)I

    move-result v0

    return v0
.end method

.method private DW(Labcd/LE;)I
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Labcd/FC;->Hw:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v13, v2, [J

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v14, v2, [J

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v12, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v12, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->Hw:[J

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->sort([JII)V

    return v6

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Labcd/hC;

    iget-object v2, v3, Labcd/hC;->v5:Labcd/rE;

    invoke-static {v2}, Labcd/FC;->j6(Labcd/rE;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v7, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    iget-object v8, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v8}, Labcd/FC;->j6(Labcd/rE;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    move-object v2, v4

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object v4, v2

    goto :goto_2

    :cond_3
    iget-object v8, v3, Labcd/hC;->v5:Labcd/rE;

    iget-object v9, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v8, v9}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    move-object v2, v4

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    move-object v2, v4

    goto :goto_3

    :cond_5
    aget-wide v8, v13, v12

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    sget-object v8, Labcd/hC$b;->j6:Labcd/hC$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Labcd/FC;->DW(Labcd/hC$b;Labcd/hC;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    aput-wide v8, v13, v12

    :cond_6
    aget-wide v10, v14, v7

    const-wide/16 v16, 0x0

    cmp-long v15, v10, v16

    if-nez v15, :cond_7

    sget-object v10, Labcd/hC$b;->DW:Labcd/hC$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Labcd/FC;->DW(Labcd/hC$b;Labcd/hC;)J

    move-result-wide v10

    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    aput-wide v10, v14, v7

    :cond_7
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v8, v8, v16

    move-object/from16 v0, p0

    iget v10, v0, Labcd/FC;->v5:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    move-object v2, v4

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    :try_start_0
    sget-object v4, Labcd/hC$b;->j6:Labcd/hC$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Labcd/FC;->j6(Labcd/hC$b;Labcd/hC;)Labcd/EC;
    :try_end_0
    .catch Labcd/EC$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_9
    :try_start_1
    sget-object v8, Labcd/hC$b;->DW:Labcd/hC$b;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Labcd/FC;->j6(Labcd/hC$b;Labcd/hC;)Labcd/EC;
    :try_end_1
    .catch Labcd/EC$a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v4, v8, v9}, Labcd/EC;->j6(Labcd/EC;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x63

    iget-object v9, v3, Labcd/hC;->FH:Ljava/lang/String;

    iget-object v2, v2, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-static {v9, v2}, Labcd/FC;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    div-int/lit16 v2, v2, 0x2710

    move-object/from16 v0, p0

    iget v8, v0, Labcd/FC;->v5:I

    if-ge v2, v8, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    move-object v2, v4

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Labcd/FC;->Zo:Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/FC;->Hw:[J

    invoke-static {v2, v12, v7}, Labcd/FC;->j6(III)J

    move-result-wide v10

    aput-wide v10, v8, v6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    add-int/lit8 v6, v6, 0x1

    move-object v2, v4

    goto/16 :goto_3

    :catch_1
    move-exception v2

    if-nez v5, :cond_b

    new-instance v5, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/BitSet;-><init>(I)V

    :cond_b
    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Labcd/FC;->Zo:Z

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Labcd/LE;->update(I)V

    move-object v2, v4

    goto/16 :goto_3
.end method

.method private DW(Labcd/hC$b;Labcd/hC;)J
    .registers 5

    iget-object v0, p0, Labcd/FC;->j6:Labcd/cC$c;

    invoke-virtual {v0, p1, p2}, Labcd/cC$c;->DW(Labcd/hC$b;Labcd/hC;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static DW(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v3, v0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v4, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static FH(J)I
    .registers 4

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static FH(I)J
    .registers 3

    const v0, 0xfffffff

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method static j6(J)I
    .registers 4

    const v0, 0xfffffff

    long-to-int v1, p0

    and-int/2addr v0, v1

    invoke-static {v0}, Labcd/FC;->DW(I)I

    move-result v0

    return v0
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/16 v1, 0x64

    const/4 v2, 0x0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-nez v6, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v3, v6, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v4, v6, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    if-lt v2, v5, :cond_7

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x19

    mul-int/lit8 v1, v2, 0x64

    div-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_2
    move v0, v2

    :goto_2
    if-lt v0, v5, :cond_5

    :cond_3
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v6

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_3
    if-lt v1, v5, :cond_6

    :cond_4
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v4, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static j6(III)J
    .registers 8

    int-to-long v0, p0

    invoke-static {p1}, Labcd/FC;->FH(I)J

    move-result-wide v2

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {p2}, Labcd/FC;->FH(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private j6(Labcd/hC$b;Labcd/hC;)Labcd/EC;
    .registers 5

    new-instance v0, Labcd/EC;

    invoke-direct {v0}, Labcd/EC;-><init>()V

    iget-object v1, p0, Labcd/FC;->j6:Labcd/cC$c;

    invoke-virtual {v1, p1, p2}, Labcd/cC$c;->j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/EC;->j6(Labcd/FE;)V

    invoke-virtual {v0}, Labcd/EC;->j6()V

    return-object v0
.end method

.method private static j6(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static j6(Labcd/rE;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/rE;->DW()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/FC;->DW:Ljava/util/List;

    return-object v0
.end method

.method FH()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/FC;->VH:Ljava/util/List;

    return-object v0
.end method

.method Hw()Z
    .registers 2

    iget-boolean v0, p0, Labcd/FC;->Zo:Z

    return v0
.end method

.method j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/FC;->FH:Ljava/util/List;

    return-object v0
.end method

.method j6(I)V
    .registers 2

    iput p1, p0, Labcd/FC;->v5:I

    return-void
.end method

.method j6(Labcd/LE;)V
    .registers 11

    const/4 v8, 0x1

    if-nez p1, :cond_0

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_0
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->renamesFindingByContent:Ljava/lang/String;

    iget-object v1, p0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Labcd/FC;->DW(Labcd/LE;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Labcd/FC;->VH:Ljava/util/List;

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-gez v3, :cond_1

    iget-object v0, p0, Labcd/FC;->DW:Ljava/util/List;

    invoke-static {v0}, Labcd/FC;->DW(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/FC;->DW:Ljava/util/List;

    iget-object v0, p0, Labcd/FC;->FH:Ljava/util/List;

    invoke-static {v0}, Labcd/FC;->j6(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {p1}, Labcd/LE;->j6()V

    return-void

    :cond_1
    iget-object v0, p0, Labcd/FC;->Hw:[J

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Labcd/FC;->DW(J)I

    move-result v0

    invoke-static {v4, v5}, Labcd/FC;->j6(J)I

    move-result v6

    iget-object v1, p0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v1, p0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    if-nez v1, :cond_2

    invoke-interface {p1, v8}, Labcd/LE;->update(I)V

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, v0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v7, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v2, v7, :cond_3

    sget-object v2, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v2, v0, Labcd/hC;->VH:Labcd/hC$a;

    :goto_1
    iget-object v7, p0, Labcd/FC;->VH:Ljava/util/List;

    invoke-static {v4, v5}, Labcd/FC;->FH(J)I

    move-result v4

    invoke-static {v2, v0, v1, v4}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/FC;->FH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8}, Labcd/LE;->update(I)V

    move v0, v3

    goto :goto_0

    :cond_3
    sget-object v2, Labcd/hC$a;->v5:Labcd/hC$a;

    goto :goto_1
.end method
