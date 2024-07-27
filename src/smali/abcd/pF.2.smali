.class public final Labcd/pF;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Labcd/jC;


# instance fields
.field private final DW:Labcd/eC;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v1, 0x7fffffff

    new-instance v0, Labcd/jC;

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
            "Ljava/util/Iterator",
            "<",
            "Labcd/jC;",
            ">;)",
            "Labcd/jC;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/pF;->j6:Labcd/jC;

    goto :goto_0
.end method


# virtual methods
.method public j6(Labcd/DC;Labcd/CC;Labcd/CC;Labcd/CC;)Labcd/uF;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "LDC",
            "<TS;>;TS;TS;TS;)",
            "LuF",
            "<TS;>;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Labcd/uF;

    invoke-direct {v12, v5}, Labcd/uF;-><init>(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Labcd/CC;->j6()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual/range {p4 .. p4}, Labcd/CC;->j6()I

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/pF;->DW:Labcd/eC;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {p4 .. p4}, Labcd/CC;->j6()I

    move-result v7

    sget-object v8, Labcd/qF$a;->FH:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :goto_0
    move-object v5, v12

    :goto_1
    return-object v5

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p4 .. p4}, Labcd/CC;->j6()I

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/pF;->DW:Labcd/eC;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Labcd/CC;->j6()I

    move-result v7

    sget-object v8, Labcd/qF$a;->DW:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Labcd/qF$a;->FH:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :goto_2
    move-object v5, v12

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v5, v6, v7, v8}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/pF;->DW:Labcd/eC;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/pF;->DW:Labcd/eC;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, v6

    move v9, v8

    :goto_3
    sget-object v6, Labcd/pF;->j6:Labcd/jC;

    if-ne v7, v6, :cond_6

    if-ne v5, v6, :cond_6

    invoke-virtual/range {p2 .. p2}, Labcd/CC;->j6()I

    move-result v5

    if-ge v9, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Labcd/CC;->j6()I

    move-result v6

    sget-object v7, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v5, v9, v6, v7}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_5
    move-object v5, v12

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Labcd/jC;->v5()I

    move-result v6

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v8

    if-ge v6, v8, :cond_8

    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v6

    if-eq v9, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v8

    sget-object v10, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v6, v9, v8, v10}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_7
    const/4 v6, 0x1

    invoke-virtual {v5}, Labcd/jC;->Hw()I

    move-result v8

    invoke-virtual {v5}, Labcd/jC;->Zo()I

    move-result v9

    sget-object v10, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v6, v8, v9, v10}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    invoke-virtual {v5}, Labcd/jC;->v5()I

    move-result v6

    invoke-static/range {v16 .. v16}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v5

    move v9, v6

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v6

    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v8

    if-ge v6, v8, :cond_a

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v6

    if-eq v9, v6, :cond_9

    const/4 v6, 0x0

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v8

    sget-object v10, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v6, v9, v8, v10}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_9
    const/4 v6, 0x2

    invoke-virtual {v7}, Labcd/jC;->Hw()I

    move-result v8

    invoke-virtual {v7}, Labcd/jC;->Zo()I

    move-result v9

    sget-object v10, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v6, v8, v9, v10}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v8

    invoke-static/range {v17 .. v17}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v6

    move-object v7, v6

    move v9, v8

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v6

    if-eq v6, v9, :cond_b

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v6

    if-eq v6, v9, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v8

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    sget-object v10, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v6, v9, v8, v10}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_b
    invoke-virtual {v5}, Labcd/jC;->Hw()I

    move-result v6

    invoke-virtual {v7}, Labcd/jC;->Hw()I

    move-result v8

    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v9

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v9

    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v9, v6

    move v10, v8

    :goto_4
    invoke-static/range {v16 .. v16}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v8

    move-object v11, v5

    :goto_5
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v5

    invoke-virtual {v8}, Labcd/jC;->FH()I

    move-result v13

    if-lt v5, v13, :cond_d

    invoke-static/range {v17 .. v17}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v5

    move-object v7, v8

    move-object v8, v5

    goto :goto_5

    :cond_c
    invoke-virtual {v5}, Labcd/jC;->FH()I

    move-result v9

    invoke-virtual {v7}, Labcd/jC;->FH()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v6, v9

    move v9, v6

    move v10, v8

    goto :goto_4

    :cond_d
    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v5

    invoke-virtual {v6}, Labcd/jC;->FH()I

    move-result v13

    if-lt v5, v13, :cond_e

    invoke-static/range {v16 .. v16}, Labcd/pF;->j6(Ljava/util/Iterator;)Labcd/jC;

    move-result-object v5

    move-object v11, v6

    move-object v6, v5

    goto :goto_5

    :cond_e
    invoke-virtual {v11}, Labcd/jC;->Zo()I

    move-result v5

    invoke-virtual {v7}, Labcd/jC;->Zo()I

    move-result v13

    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v14

    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v15

    if-ge v14, v15, :cond_16

    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v14

    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v5, v14

    move v14, v5

    move v15, v13

    :goto_6
    sub-int v5, v14, v9

    sub-int v13, v15, v10

    sub-int v18, v5, v13

    if-lez v18, :cond_f

    sub-int v5, v5, v18

    :cond_f
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v5, :cond_10

    add-int v19, v9, v13

    add-int v20, v10, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v19

    move-object/from16 v3, p4

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v19

    if-nez v19, :cond_17

    :cond_10
    sub-int v19, v5, v13

    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v5, v0, :cond_11

    sub-int v20, v14, v5

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v15, v5

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v20

    move-object/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v20

    if-nez v20, :cond_18

    :cond_11
    if-lez v13, :cond_12

    const/16 v20, 0x1

    add-int v21, v9, v13

    sget-object v22, Labcd/qF$a;->j6:Labcd/qF$a;

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v12, v0, v9, v1, v2}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_12
    sub-int v19, v19, v5

    if-gtz v19, :cond_13

    if-eqz v18, :cond_14

    :cond_13
    const/16 v18, 0x1

    add-int/2addr v9, v13

    sub-int v19, v14, v5

    sget-object v20, Labcd/qF$a;->DW:Labcd/qF$a;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v12, v0, v9, v1, v2}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    const/4 v9, 0x2

    add-int/2addr v10, v13

    sub-int v13, v15, v5

    sget-object v15, Labcd/qF$a;->FH:Labcd/qF$a;

    invoke-virtual {v12, v9, v10, v13, v15}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_14
    if-lez v5, :cond_15

    const/4 v9, 0x1

    sub-int v5, v14, v5

    sget-object v10, Labcd/qF$a;->j6:Labcd/qF$a;

    invoke-virtual {v12, v9, v5, v14, v10}, Labcd/uF;->j6(IIILabcd/qF$a;)V

    :cond_15
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v5

    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v5, v6

    move-object v7, v8

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v11}, Labcd/jC;->v5()I

    move-result v14

    invoke-virtual {v7}, Labcd/jC;->v5()I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v14, v5

    move v15, v13

    goto/16 :goto_6

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_8
.end method
