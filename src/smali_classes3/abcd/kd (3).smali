.class public Labcd/kd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x7c1a40361da4c20L
    .end annotation
.end field

.field private final Hw:Labcd/yd;
    .annotation runtime Labcd/ru;
        field = -0x192f554d5d476071L
    .end annotation
.end field

.field private v5:Labcd/nb;
    .annotation runtime Labcd/ru;
        field = -0xed53e930f935408L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/kd;

    const-wide v1, 0x7e7318a9027a9b0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/yd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1247c514a1d3aa9fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/kd;->FH:Labcd/La;

    iput-object p2, p0, Labcd/kd;->Hw:Labcd/yd;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x1247c514a1d3aa9fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW(Labcd/Sa;IILjava/util/List;)Ljava/util/List;
    .registers 29
    .annotation runtime Labcd/su;
        method = 0xf92e2fc464eea0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Labcd/Za;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    :try_start_a
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_26

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x44ee42bcba4610ecL  # 1.1432166308321398E24

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v11, v10, v11}, Labcd/Sa;->v5(IIII)I

    move-result v1

    invoke-virtual {v8, v10, v11, v10, v11}, Labcd/Sa;->j6(IIII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    if-eq v1, v3, :cond_48

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    check-cast v2, Labcd/dd;

    invoke-virtual {v2, v8, v1}, Labcd/dd;->DW(Labcd/Sa;I)V

    goto :goto_55

    :cond_48
    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    check-cast v2, Labcd/dd;

    invoke-virtual {v2, v8}, Labcd/dd;->FH(Labcd/Sa;)V

    :goto_55
    new-instance v2, Labcd/bc;

    invoke-direct {v2}, Labcd/bc;-><init>()V

    move v4, v1

    :goto_5b
    if-eq v1, v3, :cond_2d1

    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x85

    const/16 v7, 0x97

    const/4 v13, 0x0

    const/4 v15, 0x1

    if-ne v5, v6, :cond_f3

    invoke-virtual {v8, v1}, Labcd/Sa;->we(I)I

    move-result v5

    sub-int/2addr v5, v15

    :goto_6e
    if-ltz v5, :cond_7a

    invoke-virtual {v8, v1, v5}, Labcd/Sa;->Zo(II)I

    move-result v6

    if-ne v6, v4, :cond_77

    goto :goto_7a

    :cond_77
    add-int/lit8 v5, v5, -0x1

    goto :goto_6e

    :cond_7a
    :goto_7a
    add-int/lit8 v5, v5, -0x1

    :goto_7c
    if-ltz v5, :cond_2c1

    invoke-virtual {v8, v1, v5}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v8, v4}, Labcd/Sa;->P8(I)I

    move-result v6

    if-ne v6, v7, :cond_ec

    invoke-virtual {v8, v4}, Labcd/Sa;->we(I)I

    move-result v6

    const/4 v15, 0x3

    :goto_8d
    if-ge v15, v6, :cond_ec

    invoke-virtual {v8, v4, v15}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3, v13}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->XL(I)I

    move-result v7

    invoke-virtual {v2, v7}, Labcd/bc;->j6(I)Z

    move-result v16

    if-nez v16, :cond_e5

    invoke-virtual {v8, v3}, Labcd/Sa;->ro(I)Z

    move-result v16

    if-eqz v16, :cond_e5

    invoke-virtual {v8, v3}, Labcd/Sa;->vy(I)I

    move-result v13

    if-ne v13, v10, :cond_b9

    invoke-virtual {v8, v3}, Labcd/Sa;->BT(I)I

    move-result v13

    if-gt v13, v11, :cond_b9

    invoke-virtual {v8, v3}, Labcd/Sa;->Ws(I)I

    move-result v13

    if-ge v13, v11, :cond_e5

    :cond_b9
    invoke-virtual {v8, v3}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v13

    invoke-direct {v9, v13, v12}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_e5

    new-instance v14, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v18

    invoke-virtual {v8, v3}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual {v8, v3}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual {v8, v3}, Labcd/Sa;->Ws(I)I

    move-result v21

    move-object/from16 v16, v14

    move/from16 v22, v7

    move-object/from16 v23, v13

    invoke-direct/range {v16 .. v23}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e5
    add-int/lit8 v15, v15, 0x2

    const/4 v3, -0x1

    const/16 v7, 0x97

    const/4 v13, 0x0

    goto :goto_8d

    :cond_ec
    add-int/lit8 v5, v5, -0x1

    const/4 v3, -0x1

    const/16 v7, 0x97

    const/4 v13, 0x0

    goto :goto_7c

    :cond_f3
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x7c

    const/16 v5, 0x10

    const/4 v6, 0x5

    if-ne v3, v4, :cond_15b

    invoke-virtual {v8, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v6, 0x1

    :goto_107
    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_2c1

    invoke-virtual {v8, v3, v6}, Labcd/Sa;->Zo(II)I

    move-result v7

    invoke-virtual {v8, v7}, Labcd/Sa;->P8(I)I

    move-result v13

    if-eq v13, v5, :cond_156

    const/4 v13, 0x3

    invoke-virtual {v8, v7, v13}, Labcd/Sa;->Zo(II)I

    move-result v7

    invoke-virtual {v8, v7}, Labcd/Sa;->XL(I)I

    move-result v13

    invoke-virtual {v2, v13}, Labcd/bc;->j6(I)Z

    move-result v14

    if-nez v14, :cond_156

    invoke-virtual {v8, v7}, Labcd/Sa;->ro(I)Z

    move-result v14

    if-eqz v14, :cond_156

    invoke-virtual {v8, v7}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v14

    invoke-direct {v9, v14, v12}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_156

    new-instance v5, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v18

    invoke-virtual {v8, v7}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual {v8, v7}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual {v8, v7}, Labcd/Sa;->Ws(I)I

    move-result v21

    move-object/from16 v16, v5

    move/from16 v22, v13

    move-object/from16 v23, v14

    invoke-direct/range {v16 .. v23}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_156
    add-int/lit8 v6, v6, 0x2

    const/16 v5, 0x10

    goto :goto_107

    :cond_15b
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_1c1

    const/4 v3, 0x3

    invoke-virtual {v8, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v8, v4}, Labcd/Sa;->we(I)I

    move-result v5

    const/4 v6, 0x1

    :goto_16d
    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_2c1

    invoke-virtual {v8, v4, v6}, Labcd/Sa;->Zo(II)I

    move-result v7

    invoke-virtual {v8, v7, v3}, Labcd/Sa;->Zo(II)I

    move-result v13

    invoke-virtual {v8, v7}, Labcd/Sa;->P8(I)I

    move-result v7

    const/16 v14, 0x10

    if-eq v7, v14, :cond_1bd

    invoke-virtual {v8, v13}, Labcd/Sa;->XL(I)I

    move-result v7

    invoke-virtual {v2, v7}, Labcd/bc;->j6(I)Z

    move-result v16

    if-nez v16, :cond_1bd

    invoke-virtual {v8, v13}, Labcd/Sa;->ro(I)Z

    move-result v16

    if-eqz v16, :cond_1bd

    invoke-virtual {v8, v13}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v3

    invoke-direct {v9, v3, v12}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_1bd

    new-instance v14, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v18

    invoke-virtual {v8, v13}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual {v8, v13}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual {v8, v13}, Labcd/Sa;->Ws(I)I

    move-result v21

    move-object/from16 v16, v14

    move/from16 v22, v7

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1bd
    add-int/lit8 v6, v6, 0x2

    const/4 v3, 0x3

    goto :goto_16d

    :cond_1c1
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_213

    invoke-virtual {v8, v1}, Labcd/Sa;->we(I)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_213

    const/4 v3, 0x4

    invoke-virtual {v8, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->XL(I)I

    move-result v4

    invoke-virtual {v2, v4}, Labcd/bc;->j6(I)Z

    move-result v5

    if-nez v5, :cond_2c1

    invoke-virtual {v8, v3}, Labcd/Sa;->ro(I)Z

    move-result v5

    if-eqz v5, :cond_2c1

    invoke-virtual {v8, v3}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v5

    invoke-direct {v9, v5, v12}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2c1

    new-instance v6, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v18

    invoke-virtual {v8, v3}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual {v8, v3}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual {v8, v3}, Labcd/Sa;->Ws(I)I

    move-result v21

    move-object/from16 v16, v6

    move/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v23}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    :goto_20e
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c1

    :cond_213
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xd3

    if-ne v3, v4, :cond_259

    invoke-virtual {v8, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->XL(I)I

    move-result v4

    invoke-virtual {v2, v4}, Labcd/bc;->j6(I)Z

    move-result v5

    if-nez v5, :cond_2c1

    invoke-virtual {v8, v3}, Labcd/Sa;->ro(I)Z

    move-result v5

    if-eqz v5, :cond_2c1

    invoke-virtual {v8, v3}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v5

    invoke-direct {v9, v5, v12}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2c1

    new-instance v6, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v18

    invoke-virtual {v8, v3}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual {v8, v3}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual {v8, v3}, Labcd/Sa;->Ws(I)I

    move-result v21

    move-object/from16 v16, v6

    move/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v23}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    goto :goto_20e

    :cond_259
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x95

    if-ne v3, v4, :cond_2c1

    const/4 v3, 0x2

    invoke-virtual {v8, v1, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x97

    if-ne v5, v6, :cond_2c1

    invoke-virtual {v8, v3}, Labcd/Sa;->we(I)I

    move-result v5

    const/4 v14, 0x3

    :goto_278
    if-ge v14, v5, :cond_2c1

    invoke-virtual {v8, v3, v14}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v8, v6, v4}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v8, v6}, Labcd/Sa;->XL(I)I

    move-result v7

    invoke-virtual {v2, v7}, Labcd/bc;->j6(I)Z

    move-result v13

    if-nez v13, :cond_2be

    invoke-virtual {v8, v6}, Labcd/Sa;->ro(I)Z

    move-result v13

    if-eqz v13, :cond_2be

    invoke-virtual {v8, v6}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v13

    invoke-direct {v9, v13, v12}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_2be

    new-instance v15, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v18

    invoke-virtual {v8, v6}, Labcd/Sa;->vy(I)I

    move-result v19

    invoke-virtual {v8, v6}, Labcd/Sa;->BT(I)I

    move-result v20

    invoke-virtual {v8, v6}, Labcd/Sa;->Ws(I)I

    move-result v21

    move-object/from16 v16, v15

    move/from16 v22, v7

    move-object/from16 v23, v13

    invoke-direct/range {v16 .. v23}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2be
    add-int/lit8 v14, v14, 0x2

    goto :goto_278

    :cond_2c1
    :goto_2c1
    invoke-virtual {v8, v1}, Labcd/Sa;->er(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->aM()I

    move-result v4
    :try_end_2c9
    .catchall {:try_start_a .. :try_end_2c9} :catchall_2d2

    if-ne v3, v4, :cond_2cc

    const/4 v3, -0x1

    :cond_2cc
    move v4, v1

    move v1, v3

    const/4 v3, -0x1

    goto/16 :goto_5b

    :cond_2d1
    return-object v0

    :catchall_2d2
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_2f0

    const-wide v2, 0x44ee42bcba4610ecL  # 1.1432166308321398E24

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f0
    goto :goto_2f2

    :goto_2f1
    throw v0

    :goto_2f2
    goto :goto_2f1
.end method

.method private DW(Labcd/Da;IILjava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x472c85962427efdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x35591ec6aa6cfe49L  # -4.2801712053452334E51

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v3, p0, Labcd/kd;->Hw:Labcd/yd;

    const-string v6, "i;"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Labcd/Va;->j6(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0, p2, p3, v1}, Labcd/kd;->DW(Labcd/Sa;IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Za;

    invoke-virtual {v4}, Labcd/Za;->Hw()I

    move-result v4

    iget-object v5, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v5, v2}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_42

    goto :goto_32

    :cond_5d
    iget-object v3, p0, Labcd/kd;->v5:Labcd/nb;

    invoke-interface {v3, v2}, Labcd/nb;->j6(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_64

    goto :goto_32

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_7f

    const-wide v2, -0x35591ec6aa6cfe49L  # -4.2801712053452334E51

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    goto :goto_81

    :goto_80
    throw v0

    :goto_81
    goto :goto_80
.end method

.method private j6(Labcd/Sa;IILjava/util/List;)Labcd/Ab;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1fc644af593fea00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "LAb<",
            "Labcd/Ia;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xbedf23ac55ef1b0L

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v0, Labcd/Ab;

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v0, v1}, Labcd/Ab;-><init>(Labcd/Ba;)V

    invoke-virtual {p1, p2, p3, p2, p3}, Labcd/Sa;->v5(IIII)I

    move-result v1

    invoke-virtual {p1, p2, p3, p2, p3}, Labcd/Sa;->j6(IIII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    if-eq v1, v3, :cond_3f

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    check-cast v2, Labcd/dd;

    invoke-virtual {v2, p1, v1}, Labcd/dd;->DW(Labcd/Sa;I)V

    goto :goto_4c

    :cond_3f
    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    check-cast v2, Labcd/dd;

    invoke-virtual {v2, p1}, Labcd/dd;->FH(Labcd/Sa;)V

    :goto_4c
    new-instance v2, Labcd/bc;

    invoke-direct {v2}, Labcd/bc;-><init>()V

    :cond_51
    :goto_51
    if-eq v1, v3, :cond_e3

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v4
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_e4

    const/16 v5, 0x7a

    if-ne v4, v5, :cond_d6

    :try_start_5b
    iget-object v4, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v7

    invoke-virtual {p1, v7}, Labcd/Sa;->J8(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;I)Labcd/ua;

    move-result-object v4

    invoke-virtual {v4}, Labcd/ua;->yO()Labcd/Hb;

    move-result-object v4

    iget-object v5, v4, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v5}, Labcd/Hb$a;->DW()V

    :cond_7c
    :goto_7c
    iget-object v5, v4, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v5}, Labcd/Hb$a;->j6()Z

    move-result v5

    if-eqz v5, :cond_d6

    iget-object v5, v4, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v5}, Labcd/Hb$a;->FH()I

    move-result v5

    invoke-virtual {v2, v5}, Labcd/bc;->j6(I)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, v4, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v5}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v5

    check-cast v5, Labcd/Ia;

    invoke-virtual {v5}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v6

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    if-ne v6, v7, :cond_b4

    invoke-virtual {v5}, Labcd/Ia;->J8()I

    move-result v6

    if-ne v6, p2, :cond_b4

    invoke-virtual {v5}, Labcd/Ia;->Ws()I

    move-result v6

    if-gt v6, p3, :cond_b4

    invoke-virtual {v5}, Labcd/Ia;->J0()I

    move-result v6

    if-ge v6, p3, :cond_cb

    :cond_b4
    invoke-virtual {v5}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Da;->BT()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-virtual {v5}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v6

    invoke-direct {p0, v6, p4}, Labcd/kd;->j6(Labcd/Ya;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-virtual {v0, v5}, Labcd/Ab;->j6(Labcd/Aa;)V

    :cond_cb
    iget-object v5, v4, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v5}, Labcd/Hb$a;->FH()I

    move-result v5

    invoke-virtual {v2, v5}, Labcd/bc;->DW(I)V
    :try_end_d4
    .catch Labcd/jc; {:try_start_5b .. :try_end_d4} :catch_d5
    .catchall {:try_start_5b .. :try_end_d4} :catchall_e4

    goto :goto_7c

    :catch_d5
    move-exception v4

    :cond_d6
    :try_start_d6
    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v4
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_e4

    if-ne v1, v4, :cond_51

    const/4 v1, -0x1

    goto/16 :goto_51

    :cond_e3
    return-object v0

    :catchall_e4
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_ff

    const-wide v2, -0xbedf23ac55ef1b0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ff
    goto :goto_101

    :goto_100
    throw v0

    :goto_101
    goto :goto_100
.end method

.method private j6(Labcd/Da;IILjava/lang/String;)Labcd/Ya;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x23b7ccd8b2997e69L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x28cccdb79cb3137L  # -1.9619679747078E296

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    iget-object v1, p0, Labcd/kd;->Hw:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Ba;->v5(Labcd/Da;Labcd/na;)Labcd/ua;

    move-result-object v0

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v2, v1, Labcd/La;->U2:Labcd/Va;

    iget-object v4, p0, Labcd/kd;->Hw:Labcd/yd;

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Labcd/Va;->DW(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Labcd/Sa;->gn(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9c

    invoke-virtual {v1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Labcd/ga;->DW(Labcd/Sa;I)V

    invoke-virtual {v1, v2}, Labcd/Sa;->ro(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v1, v2}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Aa;->lg()Z

    move-result v2

    if-eqz v2, :cond_5a

    check-cast v1, Labcd/sa;

    invoke-virtual {v1}, Labcd/sa;->sy()Labcd/Ya;

    move-result-object v0

    goto :goto_9c

    :cond_5a
    invoke-virtual {v1}, Labcd/Aa;->P8()Z

    move-result v2

    if-eqz v2, :cond_6a

    check-cast v1, Labcd/Oa;

    invoke-virtual {v1}, Labcd/Oa;->x9()[Labcd/Ya;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_9c

    :cond_6a
    invoke-virtual {v1}, Labcd/Aa;->rN()Z

    move-result v2

    if-eqz v2, :cond_9c

    check-cast v1, Labcd/ua;

    invoke-virtual {v1}, Labcd/ua;->oY()Labcd/Hb;

    move-result-object v1

    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    iget-object v3, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "get"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Hb$a;->j6(I)V

    :goto_85
    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->j6()Z

    move-result v2
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_9d

    if-eqz v2, :cond_9c

    :try_start_8d
    iget-object v2, v1, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v2}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ia;

    invoke-virtual {v2}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v0
    :try_end_99
    .catch Labcd/jc; {:try_start_8d .. :try_end_99} :catch_9a
    .catchall {:try_start_8d .. :try_end_99} :catchall_9d

    goto :goto_9c

    :catch_9a
    move-exception v2

    goto :goto_85

    :cond_9c
    :goto_9c
    return-object v0

    :catchall_9d
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_b8

    const-wide v2, -0x28cccdb79cb3137L  # -1.9619679747078E296

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b8
    goto :goto_ba

    :goto_b9
    throw v0

    :goto_ba
    goto :goto_b9
.end method

.method private j6([Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x89150e380a940L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x8738396608b2888L

    :try_start_5
    sget-boolean v2, Labcd/kd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_1d

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1d
    return-object v2

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/kd;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    goto :goto_28

    :goto_27
    throw v2

    :goto_28
    goto :goto_27
.end method

.method private j6(Labcd/Da;II)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x72e3a6674e81cbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x56ab82f3085a61e3L  # 3.230598915603026E109

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/kd;->Hw:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Labcd/Sa;->VH(II)I

    move-result v1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v1, v10, :cond_9e

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xac

    if-ne v2, v3, :cond_9e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_9e

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v3

    check-cast v3, Labcd/dd;

    invoke-virtual {v3, v0, v1}, Labcd/dd;->DW(Labcd/Sa;I)V

    invoke-virtual {v0, v1, v9}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v0, v1, v2}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v0, v1, v8}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v0, v3}, Labcd/Sa;->ro(I)Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-virtual {v0, v3}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/kd;->j6(Labcd/Ya;)V

    iget-object v3, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v5, v3, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {v0, v4}, Labcd/Sa;->QX(I)I

    move-result v3

    invoke-virtual {v0, v1}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v0, v4}, Labcd/Sa;->Ws(I)I

    move-result v4

    invoke-virtual {v0, v1}, Labcd/Sa;->Ws(I)I

    move-result v1

    filled-new-array {v3, v6}, [I

    move-result-object v9

    sub-int/2addr v4, v2

    filled-new-array {v4, v1}, [I

    move-result-object v10

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v5 .. v10}, Labcd/ab;->j6(Labcd/Da;II[I[I)V

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    :goto_8d
    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    goto/16 :goto_119

    :cond_92
    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v1, p1, p2, p3}, Labcd/ab;->j6(Labcd/Da;II)V

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    goto :goto_8d

    :cond_9e
    const/16 v3, 0xc8

    move-object v2, v0

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Labcd/Sa;->j6(IIIII)I

    move-result v1

    if-eq v1, v10, :cond_10c

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10c

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    check-cast v2, Labcd/dd;

    invoke-virtual {v2, v0, v1}, Labcd/dd;->DW(Labcd/Sa;I)V

    invoke-virtual {v0, v1, v9}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v0, v1, v8}, Labcd/Sa;->Zo(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v0, v2}, Labcd/Sa;->ro(I)Z

    move-result v4

    if-eqz v4, :cond_100

    invoke-virtual {v0, v2}, Labcd/Sa;->u7(I)Labcd/Ya;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/kd;->j6(Labcd/Ya;)V

    iget-object v2, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v4, v2, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {v0, v3}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {v0, v1}, Labcd/Sa;->QX(I)I

    move-result v5

    invoke-virtual {v0, v3}, Labcd/Sa;->BT(I)I

    move-result v3

    invoke-virtual {v0, v1}, Labcd/Sa;->Ws(I)I

    move-result v1

    filled-new-array {v2, v5}, [I

    move-result-object v8

    filled-new-array {v3, v1}, [I

    move-result-object v9

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v4 .. v9}, Labcd/ab;->j6(Labcd/Da;II[I[I)V

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    goto :goto_8d

    :cond_100
    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v1, p1, p2, p3}, Labcd/ab;->j6(Labcd/Da;II)V

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    goto :goto_8d

    :cond_10c
    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v1, p1, p2, p3}, Labcd/ab;->j6(Labcd/Da;II)V

    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;
    :try_end_117
    .catchall {:try_start_0 .. :try_end_117} :catchall_11a

    goto/16 :goto_8d

    :goto_119
    return-void

    :catchall_11a
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_134

    const-wide v2, 0x56ab82f3085a61e3L  # 3.230598915603026E109

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_134
    goto :goto_136

    :goto_135
    throw v0

    :goto_136
    goto :goto_135
.end method

.method private j6(Labcd/Da;IILjava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x15577e4ca21db580L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xcd7af5f88b644a0L  # 8.4687224023233E-247

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/kd;->Hw:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Labcd/kd;->DW(Labcd/Sa;IILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Za;

    iget-object v3, p0, Labcd/kd;->v5:Labcd/nb;

    invoke-interface {v3, v2}, Labcd/nb;->j6(Labcd/Za;)V

    goto :goto_2b

    :cond_3d
    invoke-direct {p0, v0, p2, p3, p4}, Labcd/kd;->j6(Labcd/Sa;IILjava/util/List;)Labcd/Ab;

    move-result-object v1

    const/4 v2, 0x0

    :goto_42
    invoke-virtual {v1}, Labcd/Ab;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_54

    iget-object v3, p0, Labcd/kd;->v5:Labcd/nb;

    invoke-virtual {v1, v2}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v4

    invoke-interface {v3, v4}, Labcd/nb;->j6(Labcd/Aa;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_54
    iget-object v1, p0, Labcd/kd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_5c

    return-void

    :catchall_5c
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_77

    const-wide v2, 0xcd7af5f88b644a0L  # 8.4687224023233E-247

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    goto :goto_79

    :goto_78
    throw v0

    :goto_79
    goto :goto_78
.end method

.method private j6(Labcd/Ya;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12792802b18a3494L
    .end annotation

    const-wide v0, -0xa0c5feb5a377ca8L

    :try_start_5
    sget-boolean v2, Labcd/kd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/kd;->v5:Labcd/nb;

    invoke-interface {v2, p1}, Labcd/nb;->j6(Labcd/Aa;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/kd;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private j6(Labcd/Ya;Ljava/util/List;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x30c6b802f21e207fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Ya;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kd;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2ceff42296d42c73L  # 3.063739611298945E-92

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_45

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p1}, Labcd/Aa;->lg()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_46

    if-eqz v3, :cond_32

    return v1

    :cond_32
    :try_start_32
    invoke-virtual {p1}, Labcd/Ya;->sh()Labcd/Ya;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3e
    .catch Labcd/jc; {:try_start_32 .. :try_end_3e} :catch_41
    .catchall {:try_start_32 .. :try_end_3e} :catchall_46

    if-eqz v2, :cond_17

    return v1

    :catch_41
    move-exception v2

    goto :goto_17

    :cond_43
    const/4 p1, 0x0

    return p1

    :cond_45
    return v1

    :catchall_46
    move-exception v0

    sget-boolean v1, Labcd/kd;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x2ceff42296d42c73L  # 3.063739611298945E-92

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    goto :goto_59

    :goto_58
    throw v0

    :goto_59
    goto :goto_58
.end method


# virtual methods
.method public j6(Labcd/nb;Labcd/Da;IILjava/lang/String;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/nb;",
            "Labcd/Da;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    sget-boolean v7, Labcd/kd;->j6:Z

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v7, :cond_39

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v14

    aput-object v0, v7, v13

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v7, v12

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v7, v11

    aput-object v5, v7, v10

    aput-object v6, v7, v9

    const-wide v9, 0x2f5969225952c377L  # 1.3394221118169738E-80

    invoke-static {v9, v10, v1, v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_39
    iput-object v2, v1, Labcd/kd;->v5:Labcd/nb;

    invoke-interface/range {p1 .. p1}, Labcd/nb;->j6()V

    const-string v7, "SELECT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v9}, Labcd/nb;->j6(Ljava/lang/String;)V

    goto :goto_4a

    :cond_5a
    const-string v7, "SELECT_VARIABLE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-direct {v1, v0, v3, v4, v6}, Labcd/kd;->j6(Labcd/Da;IILjava/util/List;)V

    :cond_65
    const-string v7, "SUGGEST_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    new-array v7, v11, [Ljava/lang/String;

    const-string v9, "v"

    aput-object v9, v7, v14

    const-string v9, "f"

    aput-object v9, v7, v13

    const-string v9, "t"

    aput-object v9, v7, v12

    invoke-direct {v1, v7}, Labcd/kd;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v0, v3, v4, v7}, Labcd/kd;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_82
    const-string v7, "SUGGEST_TYPE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-direct {v1, v0, v3, v4}, Labcd/kd;->j6(Labcd/Da;II)V

    :cond_8d
    const-string v7, "SUGGEST_ELEMENT_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "e"

    if-eqz v7, :cond_d3

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v13, :cond_c0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "s"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c0

    new-array v10, v13, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v15, v16, -0x1

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v14

    invoke-direct {v1, v10}, Labcd/kd;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v0, v3, v4, v7}, Labcd/kd;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_c0
    new-array v7, v11, [Ljava/lang/String;

    aput-object v9, v7, v14

    const-string v10, "m"

    aput-object v10, v7, v13

    const-string v10, "a"

    aput-object v10, v7, v12

    invoke-direct {v1, v7}, Labcd/kd;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v0, v3, v4, v7}, Labcd/kd;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_d3
    const-string v7, "SUGGEST_INDEX_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    new-array v7, v8, [Ljava/lang/String;

    const-string v8, "i"

    aput-object v8, v7, v14

    const-string v8, "j"

    aput-object v8, v7, v13

    const-string v8, "k"

    aput-object v8, v7, v12

    const-string v8, "n"

    aput-object v8, v7, v11

    const-string v8, "z"

    const/4 v10, 0x4

    aput-object v8, v7, v10

    const-string v8, "l"

    const/4 v10, 0x5

    aput-object v8, v7, v10

    invoke-direct {v1, v7}, Labcd/kd;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v0, v3, v4, v7}, Labcd/kd;->DW(Labcd/Da;IILjava/util/List;)V

    goto :goto_100

    :cond_ff
    const/4 v10, 0x5

    :goto_100
    const-string v7, "SUGGEST_EXCEPTION_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_124

    new-array v7, v10, [Ljava/lang/String;

    aput-object v9, v7, v14

    const-string v8, "ex"

    aput-object v8, v7, v13

    const-string v8, "e2"

    aput-object v8, v7, v12

    const-string v8, "e3"

    aput-object v8, v7, v11

    const-string v8, "e4"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-direct {v1, v7}, Labcd/kd;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v0, v3, v4, v7}, Labcd/kd;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_124
    const-string v7, "GET_ELEMENT_TYPE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v13, :cond_141

    :try_start_132
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4, v5}, Labcd/kd;->j6(Labcd/Da;IILjava/lang/String;)Labcd/Ya;

    move-result-object v0

    invoke-interface {v2, v0}, Labcd/nb;->j6(Labcd/Aa;)V
    :try_end_13f
    .catch Labcd/jc; {:try_start_132 .. :try_end_13f} :catch_140

    goto :goto_141

    :catch_140
    move-exception v0

    :cond_141
    :goto_141
    invoke-interface/range {p1 .. p1}, Labcd/nb;->DW()V

    return-void
.end method
