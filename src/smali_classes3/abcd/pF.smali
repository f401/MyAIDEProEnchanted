.class public final Labcd/pF;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Labcd/jC;


# instance fields
.field private final DW:Labcd/eC;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/jC;

    const v1, 0x7fffffff

    invoke-direct {v0, v1, v1}, Labcd/jC;-><init>(II)V

    sput-object v0, Labcd/pF;->j6:Labcd/jC;

    return-void
.end method

.method public constructor <init>(Labcd/eC;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/pF;->DW:Labcd/eC;

    return-void
.end method

.method private static j6(Ljava/util/Iterator;)Labcd/jC;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Labcd/jC;",
            ">;)",
            "Labcd/jC;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/jC;

    goto :goto_f

    :cond_d
    sget-object p0, Labcd/pF;->j6:Labcd/jC;

    :goto_f
    return-object p0
.end method


# virtual methods
.method public j6(Labcd/DC;Labcd/CC;Labcd/CC;Labcd/CC;)Labcd/uF;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "LDC<",
            "TS;>;TS;TS;TS;)",
            "LuF<",
            "TS;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Labcd/uF;

    invoke-direct {v6, v5}, Labcd/uF;-><init>(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Labcd/CC;->j6()I

    move-result v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_4e

    invoke-virtual/range {p4 .. p4}, Labcd/CC;->j6()I

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v0, Labcd/pF;->DW:Labcd/eC;

    invoke-virtual {v3, v1, v2, v4}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v6, v8, v9, v9, v1}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    invoke-virtual/range {p4 .. p4}, Labcd/CC;->j6()I

    move-result v1

    sget-object v2, Labcd/qF$a;->FH:Labcd/qF$a;

    invoke-virtual {v6, v7, v9, v1, v2}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    goto :goto_4d

    :cond_48
    sget-object v1, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v8, v9, v9, v1}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :goto_4d
    return-object v6

    :cond_4e
    invoke-virtual/range {p4 .. p4}, Labcd/CC;->j6()I

    move-result v5

    if-nez v5, :cond_72

    iget-object v4, v0, Labcd/pF;->DW:Labcd/eC;

    invoke-virtual {v4, v1, v2, v3}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual/range {p3 .. p3}, Labcd/CC;->j6()I

    move-result v1

    sget-object v2, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v6, v8, v9, v1, v2}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    sget-object v1, Labcd/qF$a;->FH:Labcd/qF$a;

    goto :goto_6e

    :cond_6c
    sget-object v1, Labcd/qF$a;->j6:Labcd/qF$a;

    :goto_6e
    invoke-virtual {v6, v7, v9, v9, v1}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    return-object v6

    :cond_72
    iget-object v5, v0, Labcd/pF;->DW:Labcd/eC;

    invoke-virtual {v5, v1, v2, v3}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v10, v0, Labcd/pF;->DW:Labcd/eC;

    invoke-virtual {v10, v1, v2, v4}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-static {v5}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v11

    invoke-static {v10}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v12

    const/4 v13, 0x0

    :goto_8f
    sget-object v14, Labcd/pF;->j6:Labcd/jC;

    if-ne v12, v14, :cond_a5

    if-ne v11, v14, :cond_a5

    invoke-virtual/range {p2 .. p2}, Labcd/CC;->j6()I

    move-result v1

    if-ge v13, v1, :cond_a4

    invoke-virtual/range {p2 .. p2}, Labcd/CC;->j6()I

    move-result v1

    sget-object v2, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v9, v13, v1, v2}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_a4
    return-object v6

    :cond_a5
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v14

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v15

    if-ge v14, v15, :cond_d4

    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v14

    if-eq v13, v14, :cond_be

    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v14

    sget-object v15, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v9, v13, v14, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_be
    invoke-virtual {v11}, Labcd/jC;->Hw()I

    move-result v13

    invoke-virtual {v11}, Labcd/jC;->Zo()I

    move-result v14

    sget-object v15, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v8, v13, v14, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v13

    invoke-static {v5}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v11

    goto :goto_8f

    :cond_d4
    invoke-virtual {v12}, Labcd/jC;->v5()I

    move-result v14

    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v15

    if-ge v14, v15, :cond_103

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v14

    if-eq v13, v14, :cond_ed

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v14

    sget-object v15, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v9, v13, v14, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_ed
    invoke-virtual {v12}, Labcd/jC;->Hw()I

    move-result v13

    invoke-virtual {v12}, Labcd/jC;->Zo()I

    move-result v14

    sget-object v15, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v7, v13, v14, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    invoke-virtual {v12}, Labcd/jC;->v5()I

    move-result v13

    invoke-static {v10}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v12

    goto :goto_8f

    :cond_103
    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v14

    if-eq v14, v13, :cond_120

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v14

    if-eq v14, v13, :cond_120

    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v14

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    sget-object v15, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v9, v13, v14, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_120
    invoke-virtual {v11}, Labcd/jC;->Hw()I

    move-result v13

    invoke-virtual {v12}, Labcd/jC;->Hw()I

    move-result v14

    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v15

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v9

    if-ge v15, v9, :cond_13d

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v9

    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v15

    sub-int/2addr v9, v15

    sub-int/2addr v14, v9

    goto :goto_147

    :cond_13d
    invoke-virtual {v11}, Labcd/jC;->FH()I

    move-result v9

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v15

    sub-int/2addr v9, v15

    sub-int/2addr v13, v9

    :goto_147
    invoke-static {v5}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v9

    invoke-static {v10}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v15

    move-object/from16 v22, v15

    move-object v15, v12

    move-object/from16 v12, v22

    :goto_154
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v7

    invoke-virtual {v12}, Labcd/jC;->FH()I

    move-result v8

    if-lt v7, v8, :cond_166

    invoke-static {v10}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v7

    move-object v15, v12

    const/4 v8, 0x1

    move-object v12, v7

    goto :goto_154

    :cond_166
    invoke-virtual {v15}, Labcd/jC;->v5()I

    move-result v7

    invoke-virtual {v9}, Labcd/jC;->FH()I

    move-result v8

    if-lt v7, v8, :cond_178

    invoke-static {v5}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v7

    move-object v11, v9

    const/4 v8, 0x1

    move-object v9, v7

    goto :goto_154

    :cond_178
    invoke-virtual {v11}, Labcd/jC;->Zo()I

    move-result v7

    invoke-virtual {v15}, Labcd/jC;->Zo()I

    move-result v8

    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v0

    invoke-virtual {v15}, Labcd/jC;->v5()I

    move-result v2

    if-ge v0, v2, :cond_195

    invoke-virtual {v15}, Labcd/jC;->v5()I

    move-result v0

    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v7, v0

    goto :goto_19f

    :cond_195
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v0

    invoke-virtual {v15}, Labcd/jC;->v5()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v8, v0

    :goto_19f
    sub-int v0, v7, v13

    sub-int v2, v8, v14

    sub-int v2, v0, v2

    if-lez v2, :cond_1a8

    sub-int/2addr v0, v2

    :cond_1a8
    move-object/from16 v17, v5

    const/4 v5, 0x0

    :goto_1ab
    move-object/from16 v18, v9

    if-ge v5, v0, :cond_1c3

    add-int v9, v13, v5

    move-object/from16 v19, v10

    add-int v10, v14, v5

    invoke-virtual {v1, v3, v9, v4, v10}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v9

    if-nez v9, :cond_1bc

    goto :goto_1c5

    :cond_1bc
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_1ab

    :cond_1c3
    move-object/from16 v19, v10

    :goto_1c5
    sub-int/2addr v0, v5

    const/4 v9, 0x0

    :goto_1c7
    if-ge v9, v0, :cond_1e3

    sub-int v10, v7, v9

    move-object/from16 v20, v12

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    sub-int v16, v8, v9

    move-object/from16 v21, v15

    add-int/lit8 v15, v16, -0x1

    invoke-virtual {v1, v3, v10, v4, v15}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v10

    if-nez v10, :cond_1dc

    goto :goto_1e8

    :cond_1dc
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v20

    move-object/from16 v15, v21

    goto :goto_1c7

    :cond_1e3
    move-object/from16 v20, v12

    move-object/from16 v21, v15

    const/4 v12, 0x1

    :goto_1e8
    if-lez v5, :cond_1f1

    add-int v10, v13, v5

    sget-object v15, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v12, v13, v10, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_1f1
    sub-int/2addr v0, v9

    if-gtz v0, :cond_1fa

    if-eqz v2, :cond_1f7

    goto :goto_1fa

    :cond_1f7
    const/4 v2, 0x2

    const/4 v10, 0x1

    goto :goto_20b

    :cond_1fa
    :goto_1fa
    add-int/2addr v13, v5

    sub-int v0, v7, v9

    sget-object v2, Labcd/qF$a;->DW:Labcd/qF$a;

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v13, v0, v2}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    add-int/2addr v14, v5

    sub-int/2addr v8, v9

    sget-object v0, Labcd/qF$a;->FH:Labcd/qF$a;

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v14, v8, v0}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :goto_20b
    if-lez v9, :cond_214

    sub-int v0, v7, v9

    sget-object v5, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v6, v10, v0, v7, v5}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_214
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v0

    invoke-virtual/range {v21 .. v21}, Labcd/jC;->v5()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, v17

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_8f
.end method
