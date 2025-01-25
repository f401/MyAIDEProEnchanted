.class Labcd/FC;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:[J

.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;",
            "Ljava/util/List<",
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
    .registers 3

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    const p0, 0xfffffff

    and-int/2addr p0, p1

    invoke-static {p0}, Labcd/FC;->DW(I)I

    move-result p0

    return p0
.end method

.method private DW(Labcd/LE;)I
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, v1, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v0, v0, v3

    new-array v0, v0, [J

    iput-object v0, v1, Labcd/FC;->Hw:[J

    iget-object v0, v1, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    iget-object v0, v1, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2a
    iget-object v9, v1, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v7, v9, :cond_38

    iget-object v2, v1, Labcd/FC;->Hw:[J

    invoke-static {v2, v5, v0}, Ljava/util/Arrays;->sort([JII)V

    return v0

    :cond_38
    iget-object v9, v1, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/hC;

    iget-object v10, v9, Labcd/hC;->v5:Labcd/rE;

    invoke-static {v10}, Labcd/FC;->j6(Labcd/rE;)Z

    move-result v10

    if-nez v10, :cond_53

    iget-object v9, v1, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v2, v9}, Labcd/LE;->update(I)V

    goto/16 :goto_d9

    :cond_53
    move-object v10, v8

    const/4 v11, 0x0

    move v8, v0

    const/4 v0, 0x0

    :goto_57
    iget-object v12, v1, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v11, v12, :cond_61

    goto/16 :goto_d7

    :cond_61
    iget-object v12, v1, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Labcd/hC;

    iget-object v13, v12, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v13}, Labcd/FC;->j6(Labcd/rE;)Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_77

    :goto_72
    invoke-interface {v2, v14}, Labcd/LE;->update(I)V

    goto/16 :goto_12a

    :cond_77
    iget-object v13, v9, Labcd/hC;->v5:Labcd/rE;

    iget-object v15, v12, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v13, v15}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v13

    if-nez v13, :cond_82

    goto :goto_72

    :cond_82
    if-eqz v10, :cond_8b

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_8b

    goto :goto_72

    :cond_8b
    aget-wide v15, v3, v7

    const-wide/16 v17, 0x1

    const-wide/16 v19, 0x0

    cmp-long v13, v15, v19

    if-nez v13, :cond_9f

    sget-object v13, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-direct {v1, v13, v9}, Labcd/FC;->DW(Labcd/hC$b;Labcd/hC;)J

    move-result-wide v15

    add-long v15, v15, v17

    aput-wide v15, v3, v7

    :cond_9f
    move-wide v5, v15

    aget-wide v15, v4, v11

    cmp-long v21, v15, v19

    if-nez v21, :cond_b0

    sget-object v15, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-direct {v1, v15, v12}, Labcd/FC;->DW(Labcd/hC$b;Labcd/hC;)J

    move-result-wide v15

    add-long v15, v15, v17

    aput-wide v15, v4, v11

    :cond_b0
    move-wide v13, v15

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const-wide/16 v13, 0x64

    mul-long v5, v5, v13

    div-long/2addr v5, v15

    iget v13, v1, Labcd/FC;->v5:I

    int-to-long v13, v13

    cmp-long v15, v5, v13

    if-gez v15, :cond_ca

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Labcd/LE;->update(I)V

    goto :goto_12a

    :cond_ca
    if-nez v0, :cond_de

    :try_start_cc
    sget-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-direct {v1, v0, v9}, Labcd/FC;->j6(Labcd/hC$b;Labcd/hC;)Labcd/EC;

    move-result-object v0
    :try_end_d2
    .catch Labcd/EC$a; {:try_start_cc .. :try_end_d2} :catch_d3

    goto :goto_de

    :catch_d3
    move-exception v0

    const/4 v5, 0x1

    iput-boolean v5, v1, Labcd/FC;->Zo:Z

    :goto_d7
    move v0, v8

    move-object v8, v10

    :goto_d9
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2a

    :cond_de
    :goto_de
    move-object v5, v0

    :try_start_df
    sget-object v0, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-direct {v1, v0, v12}, Labcd/FC;->j6(Labcd/hC$b;Labcd/hC;)Labcd/EC;

    move-result-object v0
    :try_end_e5
    .catch Labcd/EC$a; {:try_start_df .. :try_end_e5} :catch_112

    const/16 v6, 0x2710

    invoke-virtual {v5, v0, v6}, Labcd/EC;->j6(Labcd/EC;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x63

    iget-object v13, v9, Labcd/hC;->FH:Ljava/lang/String;

    iget-object v12, v12, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-static {v13, v12}, Labcd/FC;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    const/4 v13, 0x1

    mul-int/lit8 v12, v12, 0x1

    add-int/2addr v0, v12

    div-int/2addr v0, v6

    iget v6, v1, Labcd/FC;->v5:I

    if-ge v0, v6, :cond_104

    invoke-interface {v2, v13}, Labcd/LE;->update(I)V

    goto :goto_129

    :cond_104
    iget-object v6, v1, Labcd/FC;->Hw:[J

    invoke-static {v0, v7, v11}, Labcd/FC;->j6(III)J

    move-result-wide v14

    aput-wide v14, v6, v8

    invoke-interface {v2, v13}, Labcd/LE;->update(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_129

    :catch_112
    move-exception v0

    if-nez v10, :cond_120

    new-instance v10, Ljava/util/BitSet;

    iget-object v0, v1, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    :cond_120
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    const/4 v6, 0x1

    iput-boolean v6, v1, Labcd/FC;->Zo:Z

    invoke-interface {v2, v6}, Labcd/LE;->update(I)V

    :goto_129
    move-object v0, v5

    :goto_12a
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto/16 :goto_57
.end method

.method private DW(Labcd/hC$b;Labcd/hC;)J
    .registers 4

    iget-object v0, p0, Labcd/FC;->j6:Labcd/cC$c;

    invoke-virtual {v0, p1, p2}, Labcd/cC$c;->DW(Labcd/hC$b;Labcd/hC;)J

    move-result-wide p1

    return-wide p1
.end method

.method private static DW(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;)",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    iget-object v2, v1, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v3, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v2, v3, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private static FH(J)I
    .registers 3

    const/16 v0, 0x38

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static FH(I)J
    .registers 3

    const v0, 0xfffffff

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method static j6(J)I
    .registers 3

    const v0, 0xfffffff

    long-to-int p1, p0

    and-int p0, p1, v0

    invoke-static {p0}, Labcd/FC;->DW(I)I

    move-result p0

    return p0
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-nez v3, :cond_1e

    const/16 v7, 0x64

    goto :goto_32

    :cond_1e
    const/4 v6, 0x0

    :goto_1f
    if-lt v6, v2, :cond_22

    goto :goto_2c

    :cond_22
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_97

    :goto_2c
    mul-int/lit8 v6, v6, 0x64

    div-int v7, v6, v3

    if-ne v7, v4, :cond_36

    :goto_32
    move v9, v7

    const/16 v8, 0x64

    goto :goto_4f

    :cond_36
    const/4 v6, 0x0

    :goto_37
    if-lt v6, v2, :cond_3a

    goto :goto_4a

    :cond_3a
    add-int/lit8 v8, v1, -0x1

    sub-int/2addr v8, v6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_94

    :goto_4a
    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    move v8, v6

    move v9, v7

    :goto_4f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    :goto_6b
    if-lt v5, v10, :cond_6e

    goto :goto_86

    :cond_6e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_91

    :goto_86
    add-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0x19

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v11

    mul-int/lit8 v5, v5, 0x32

    add-int/2addr v9, v5

    div-int/2addr v9, v4

    return v9

    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :cond_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f
.end method

.method static j6(III)J
    .registers 6

    int-to-long v0, p0

    invoke-static {p1}, Labcd/FC;->FH(I)J

    move-result-wide p0

    const/16 v2, 0x1c

    shl-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr p0, v0

    invoke-static {p2}, Labcd/FC;->FH(I)J

    move-result-wide v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private j6(Labcd/hC$b;Labcd/hC;)Labcd/EC;
    .registers 5

    new-instance v0, Labcd/EC;

    invoke-direct {v0}, Labcd/EC;-><init>()V

    iget-object v1, p0, Labcd/FC;->j6:Labcd/cC$c;

    invoke-virtual {v1, p1, p2}, Labcd/cC$c;->j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/EC;->j6(Labcd/FE;)V

    invoke-virtual {v0}, Labcd/EC;->j6()V

    return-object v0
.end method

.method private static j6(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;)",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private static j6(Labcd/rE;)Z
    .registers 2

    invoke-virtual {p0}, Labcd/rE;->DW()I

    move-result p0

    const v0, 0xf000

    and-int/2addr p0, v0

    const v0, 0x8000

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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

    if-nez p1, :cond_4

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_4
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

    mul-int v1, v1, v2

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

    :goto_32
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4a

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

    :cond_4a
    iget-object v1, p0, Labcd/FC;->Hw:[J

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Labcd/FC;->DW(J)I

    move-result v1

    invoke-static {v2, v3}, Labcd/FC;->j6(J)I

    move-result v4

    iget-object v5, p0, Labcd/FC;->DW:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    iget-object v5, p0, Labcd/FC;->FH:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hC;

    const/4 v6, 0x1

    if-nez v5, :cond_6d

    :goto_69
    invoke-interface {p1, v6}, Labcd/LE;->update(I)V

    goto :goto_32

    :cond_6d
    iget-object v7, v1, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v8, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v7, v8, :cond_78

    sget-object v7, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v7, v1, Labcd/hC;->VH:Labcd/hC$a;

    goto :goto_7a

    :cond_78
    sget-object v7, Labcd/hC$a;->v5:Labcd/hC$a;

    :goto_7a
    iget-object v8, p0, Labcd/FC;->VH:Ljava/util/List;

    invoke-static {v2, v3}, Labcd/FC;->FH(J)I

    move-result v2

    invoke-static {v7, v1, v5, v2}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/FC;->FH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_69
.end method
