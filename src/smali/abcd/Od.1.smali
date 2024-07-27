.class public Labcd/Od;
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
        field = 0x1187890b02b0ae60L
    .end annotation
.end field

.field private final Hw:Labcd/Vd;
    .annotation runtime Labcd/ru;
        field = -0xe64309d2cec9b6bL
    .end annotation
.end field

.field private v5:Labcd/nb;
    .annotation runtime Labcd/ru;
        field = 0x1d3e5b6ed0b1df00L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xa0c8d31a98afca0L

    const-class v0, Labcd/Od;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    const-wide v2, -0x395847a7950340f8L    # -2.4055038340358724E32

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x395847a7950340f8L    # -2.4055038340358724E32

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Od;->FH:Labcd/La;

    iput-object p2, p0, Labcd/Od;->Hw:Labcd/Vd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Od;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(Labcd/Da;IILjava/util/List;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0xbcec9e5adf06581L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x3a128f8b2a7e4b09L    # 5.856729685968035E-29

    :try_start_0
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3a128f8b2a7e4b09L    # 5.856729685968035E-29

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v2, p0, Labcd/Od;->Hw:Labcd/Vd;

    const-string v5, "i;"

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Labcd/Va;->j6(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0, p2, p3, v1}, Labcd/Od;->j6(Labcd/Sa;IILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Za;

    invoke-virtual {v1}, Labcd/Za;->Hw()I

    move-result v1

    iget-object v5, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v5, v0}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Labcd/Od;->v5:Labcd/nb;

    invoke-interface {v1, v0}, Labcd/nb;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Od;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    return-void
.end method

.method private j6(Labcd/Sa;IILjava/util/List;)Ljava/util/List;
    .registers 26
    .annotation runtime Labcd/su;
        method = 0x59bad6ad97a50c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/Za;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v6, Labcd/Od;->j6:Z

    if-eqz v6, :cond_0

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0xb32f2b9e52eb790L

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p4

    invoke-static/range {v6 .. v12}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/Sa;->v5(IIII)I

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/Sa;->j6(IIII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    :goto_0
    new-instance v18, Labcd/bc;

    invoke-direct/range {v18 .. v18}, Labcd/bc;-><init>()V

    move v7, v6

    move/from16 v16, v6

    :goto_1
    const/4 v6, -0x1

    move/from16 v0, v16

    if-eq v0, v6, :cond_12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v8, 0x85

    if-ne v6, v8, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-ltz v6, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v8

    if-ne v8, v7, :cond_6

    :cond_1
    add-int/lit8 v6, v6, -0x1

    move v15, v6

    :goto_3
    if-ltz v15, :cond_f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Labcd/Sa;->Zo(II)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x97

    if-eq v6, v7, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x98

    if-ne v6, v7, :cond_7

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v20

    const/4 v6, 0x1

    move v14, v6

    :goto_4
    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Labcd/Sa;->Zo(II)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Labcd/Sa;->Zo(II)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->XL(I)I

    move-result v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Labcd/bc;->j6(I)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->vy(I)I

    move-result v6

    move/from16 v0, p2

    if-ne v6, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->BT(I)I

    move-result v6

    move/from16 v0, p3

    if-gt v6, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->Ws(I)I

    move-result v6

    move/from16 v0, p3

    if-ge v6, v0, :cond_4

    :cond_3
    new-instance v6, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->vy(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->BT(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->Ws(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v14, 0x2

    move v14, v6

    goto :goto_4

    :cond_5
    move v6, v7

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v6, v15, -0x1

    move v15, v6

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x92

    if-ne v6, v7, :cond_b

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x7c

    if-eq v6, v7, :cond_9

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_b

    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->we(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Labcd/Sa;->Zo(II)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->we(I)I

    move-result v19

    const/4 v6, 0x1

    move v14, v6

    :goto_5
    add-int/lit8 v6, v19, -0x1

    if-ge v14, v6, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Labcd/Sa;->Zo(II)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Labcd/Sa;->Zo(II)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->XL(I)I

    move-result v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Labcd/bc;->j6(I)Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v6, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->vy(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->BT(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->Ws(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v6, v14, 0x2

    move v14, v6

    goto :goto_5

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0xd3

    if-ne v6, v7, :cond_d

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x97

    if-ne v6, v7, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->we(I)I

    move-result v19

    const/4 v6, 0x1

    move v14, v6

    :goto_6
    move/from16 v0, v19

    if-ge v14, v0, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Labcd/Sa;->Zo(II)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Labcd/Sa;->Zo(II)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->XL(I)I

    move-result v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Labcd/bc;->j6(I)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->vy(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->BT(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->Ws(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v6, v14, 0x2

    move v14, v6

    goto :goto_6

    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x95

    if-ne v6, v7, :cond_f

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Labcd/Sa;->Zo(II)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Labcd/Sa;->Zo(II)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x97

    if-ne v6, v7, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->we(I)I

    move-result v19

    const/4 v6, 0x1

    move v14, v6

    :goto_7
    move/from16 v0, v19

    if-ge v14, v0, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Labcd/Sa;->Zo(II)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Labcd/Sa;->Zo(II)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->XL(I)I

    move-result v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Labcd/bc;->j6(I)Z

    move-result v6

    if-nez v6, :cond_e

    new-instance v6, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->vy(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->BT(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->Ws(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v6, v14, 0x2

    move v14, v6

    goto :goto_7

    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Labcd/Sa;->er(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->aM()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v6, v7, :cond_10

    const/4 v6, -0x1

    :cond_10
    move/from16 v7, v16

    move/from16 v16, v6

    goto/16 :goto_1

    :catch_0
    move-exception v7

    sget-boolean v6, Labcd/Od;->DW:Z

    if-eqz v6, :cond_11

    const-wide v8, -0xb32f2b9e52eb790L

    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    invoke-static/range {v7 .. v14}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    throw v7

    :cond_12
    return-object v17
.end method

.method private j6([Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1994af692958000L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v4, -0x492c2980727c2c80L    # -1.3899398053009152E-44

    :try_start_0
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x492c2980727c2c80L    # -1.3899398053009152E-44

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Od;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method private j6(Labcd/Da;IILjava/util/List;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x2f5eb0769d318470L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0xf07df1ca447a350L    # -1.5343568892416632E236

    :try_start_0
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xf07df1ca447a350L    # -1.5343568892416632E236

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/Od;->Hw:Labcd/Vd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Labcd/Od;->j6(Labcd/Sa;IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Za;

    iget-object v3, p0, Labcd/Od;->v5:Labcd/nb;

    invoke-interface {v3, v0}, Labcd/nb;->j6(Labcd/Za;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Od;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v0, v1}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method


# virtual methods
.method public j6(Labcd/nb;Labcd/Da;IILjava/lang/String;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/nb;",
            "Labcd/Da;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x621ed6820cdfdd81L    # 4.439588872823981E164

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object p5, v2, v8

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Od;->v5:Labcd/nb;

    invoke-interface {p1}, Labcd/nb;->j6()V

    const-string v0, "SELECT"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Labcd/nb;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "SELECT_VARIABLE"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3, p4, p6}, Labcd/Od;->j6(Labcd/Da;IILjava/util/List;)V

    :cond_2
    const-string v0, "SUGGEST_NAME"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "v"

    aput-object v1, v0, v4

    const-string v1, "f"

    aput-object v1, v0, v5

    const-string v1, "t"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_3
    const-string v0, "SUGGEST_ELEMENT_NAME"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-interface {p6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-direct {p0, v1}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_4
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "e"

    aput-object v1, v0, v4

    const-string v1, "m"

    aput-object v1, v0, v5

    const-string v1, "a"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_5
    const-string v0, "SUGGEST_INDEX_NAME"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "i"

    aput-object v1, v0, v4

    const-string v1, "j"

    aput-object v1, v0, v5

    const-string v1, "k"

    aput-object v1, v0, v6

    const-string v1, "n"

    aput-object v1, v0, v7

    const-string v1, "z"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "l"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_6
    const-string v0, "SUGGEST_EXCEPTION_NAME"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "e"

    aput-object v1, v0, v4

    const-string v1, "ex"

    aput-object v1, v0, v5

    const-string v1, "e2"

    aput-object v1, v0, v6

    const-string v1, "e3"

    aput-object v1, v0, v7

    const-string v1, "e4"

    aput-object v1, v0, v8

    invoke-direct {p0, v0}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_7
    invoke-interface {p1}, Labcd/nb;->DW()V

    return-void
.end method
