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
    .registers 3

    const-class v0, Labcd/Od;

    const-wide v1, -0xa0c8d31a98afca0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x395847a7950340f8L  # -2.4055038340358724E32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Od;->FH:Labcd/La;

    iput-object p2, p0, Labcd/Od;->Hw:Labcd/Vd;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Od;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x395847a7950340f8L  # -2.4055038340358724E32

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW(Labcd/Da;IILjava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xbcec9e5adf06581L
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
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3a128f8b2a7e4b09L  # 5.856729685968035E-29

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v1, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v3, p0, Labcd/Od;->Hw:Labcd/Vd;

    const-string v6, "i;"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Labcd/Va;->j6(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0, p2, p3, v1}, Labcd/Od;->j6(Labcd/Sa;IILjava/util/List;)Ljava/util/List;

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

    iget-object v5, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v5, v5, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v5, v2}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_42

    goto :goto_32

    :cond_5d
    iget-object v3, p0, Labcd/Od;->v5:Labcd/nb;

    invoke-interface {v3, v2}, Labcd/nb;->j6(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_64

    goto :goto_32

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Labcd/Od;->DW:Z

    if-eqz v1, :cond_7f

    const-wide v2, 0x3a128f8b2a7e4b09L  # 5.856729685968035E-29

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

.method private j6(Labcd/Sa;IILjava/util/List;)Ljava/util/List;
    .registers 28
    .annotation runtime Labcd/su;
        method = 0x59bad6ad97a50c0L
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

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    :try_start_6
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xb32f2b9e52eb790L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v9, v10, v9, v10}, Labcd/Sa;->v5(IIII)I

    move-result v1

    invoke-virtual {v8, v9, v10, v9, v10}, Labcd/Sa;->j6(IIII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    new-instance v2, Labcd/bc;

    invoke-direct {v2}, Labcd/bc;-><init>()V

    move v4, v1

    :goto_3a
    if-eq v1, v3, :cond_1ed

    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x85

    const/16 v7, 0x97

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v5, v6, :cond_c4

    invoke-virtual {v8, v1}, Labcd/Sa;->we(I)I

    move-result v5

    sub-int/2addr v5, v11

    :goto_4d
    if-ltz v5, :cond_59

    invoke-virtual {v8, v1, v5}, Labcd/Sa;->Zo(II)I

    move-result v6

    if-ne v6, v4, :cond_56

    goto :goto_59

    :cond_56
    add-int/lit8 v5, v5, -0x1

    goto :goto_4d

    :cond_59
    :goto_59
    add-int/lit8 v5, v5, -0x1

    :goto_5b
    if-ltz v5, :cond_1dd

    invoke-virtual {v8, v1, v5}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v8, v4}, Labcd/Sa;->P8(I)I

    move-result v6

    if-eq v6, v7, :cond_6f

    invoke-virtual {v8, v4}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v13, 0x98

    if-ne v6, v13, :cond_c0

    :cond_6f
    invoke-virtual {v8, v4}, Labcd/Sa;->we(I)I

    move-result v6

    const/4 v13, 0x1

    :goto_74
    if-ge v13, v6, :cond_c0

    invoke-virtual {v8, v4, v13}, Labcd/Sa;->Zo(II)I

    move-result v14

    invoke-virtual {v8, v14, v12}, Labcd/Sa;->Zo(II)I

    move-result v14

    invoke-virtual {v8, v14}, Labcd/Sa;->XL(I)I

    move-result v15

    invoke-virtual {v2, v15}, Labcd/bc;->j6(I)Z

    move-result v16

    if-nez v16, :cond_bc

    invoke-virtual {v8, v14}, Labcd/Sa;->vy(I)I

    move-result v3

    if-ne v3, v9, :cond_9a

    invoke-virtual {v8, v14}, Labcd/Sa;->BT(I)I

    move-result v3

    if-gt v3, v10, :cond_9a

    invoke-virtual {v8, v14}, Labcd/Sa;->Ws(I)I

    move-result v3

    if-ge v3, v10, :cond_bc

    :cond_9a
    new-instance v3, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v17

    invoke-virtual {v8, v14}, Labcd/Sa;->vy(I)I

    move-result v18

    invoke-virtual {v8, v14}, Labcd/Sa;->BT(I)I

    move-result v19

    invoke-virtual {v8, v14}, Labcd/Sa;->Ws(I)I

    move-result v20

    const/16 v22, 0x0

    move v14, v15

    move-object v15, v3

    move/from16 v21, v14

    invoke-direct/range {v15 .. v22}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bc
    add-int/lit8 v13, v13, 0x2

    const/4 v3, -0x1

    goto :goto_74

    :cond_c0
    add-int/lit8 v5, v5, -0x1

    const/4 v3, -0x1

    goto :goto_5b

    :cond_c4
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x92

    const/4 v5, 0x2

    if-ne v3, v4, :cond_13b

    invoke-virtual {v8, v1, v12}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_e5

    invoke-virtual {v8, v1, v12}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_13b

    :cond_e5
    invoke-virtual {v8, v1, v12}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v1}, Labcd/Sa;->we(I)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v8, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v5, 0x1

    :goto_f7
    add-int/lit8 v6, v4, -0x1

    if-ge v5, v6, :cond_1dd

    invoke-virtual {v8, v3, v5}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v8, v6, v12}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {v8, v6}, Labcd/Sa;->XL(I)I

    move-result v7

    invoke-virtual {v2, v7}, Labcd/bc;->j6(I)Z

    move-result v13

    if-nez v13, :cond_137

    new-instance v15, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v16

    invoke-virtual {v8, v6}, Labcd/Sa;->vy(I)I

    move-result v17

    invoke-virtual {v8, v6}, Labcd/Sa;->BT(I)I

    move-result v18

    invoke-virtual {v8, v6}, Labcd/Sa;->Ws(I)I

    move-result v6

    const/16 v20, 0x0

    move-object v13, v15

    move-object v11, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v13 .. v20}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_137
    add-int/lit8 v5, v5, 0x2

    const/4 v11, 0x1

    goto :goto_f7

    :cond_13b
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xd3

    if-ne v3, v4, :cond_18a

    invoke-virtual {v8, v1, v5}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->P8(I)I

    move-result v4

    if-ne v4, v7, :cond_1dd

    invoke-virtual {v8, v3}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v11, 0x1

    :goto_152
    if-ge v11, v4, :cond_1dd

    invoke-virtual {v8, v3, v11}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {v8, v5, v12}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {v8, v5}, Labcd/Sa;->XL(I)I

    move-result v6

    invoke-virtual {v2, v6}, Labcd/bc;->j6(I)Z

    move-result v7

    if-nez v7, :cond_187

    new-instance v7, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v15

    invoke-virtual {v8, v5}, Labcd/Sa;->vy(I)I

    move-result v16

    invoke-virtual {v8, v5}, Labcd/Sa;->BT(I)I

    move-result v17

    invoke-virtual {v8, v5}, Labcd/Sa;->Ws(I)I

    move-result v18

    const/16 v20, 0x0

    move-object v13, v7

    move/from16 v19, v6

    invoke-direct/range {v13 .. v20}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_187
    add-int/lit8 v11, v11, 0x2

    goto :goto_152

    :cond_18a
    invoke-virtual {v8, v1}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0x95

    if-ne v3, v4, :cond_1dd

    invoke-virtual {v8, v1, v5}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3, v12}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v8, v3}, Labcd/Sa;->P8(I)I

    move-result v4

    if-ne v4, v7, :cond_1dd

    invoke-virtual {v8, v3}, Labcd/Sa;->we(I)I

    move-result v4

    const/4 v11, 0x1

    :goto_1a5
    if-ge v11, v4, :cond_1dd

    invoke-virtual {v8, v3, v11}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {v8, v5, v12}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {v8, v5}, Labcd/Sa;->XL(I)I

    move-result v6

    invoke-virtual {v2, v6}, Labcd/bc;->j6(I)Z

    move-result v7

    if-nez v7, :cond_1da

    new-instance v7, Labcd/Za;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v15

    invoke-virtual {v8, v5}, Labcd/Sa;->vy(I)I

    move-result v16

    invoke-virtual {v8, v5}, Labcd/Sa;->BT(I)I

    move-result v17

    invoke-virtual {v8, v5}, Labcd/Sa;->Ws(I)I

    move-result v18

    const/16 v20, 0x0

    move-object v13, v7

    move/from16 v19, v6

    invoke-direct/range {v13 .. v20}, Labcd/Za;-><init>(Labcd/Da;Labcd/na;IIIILabcd/Ya;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1da
    add-int/lit8 v11, v11, 0x2

    goto :goto_1a5

    :cond_1dd
    invoke-virtual {v8, v1}, Labcd/Sa;->er(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->aM()I

    move-result v4
    :try_end_1e5
    .catchall {:try_start_6 .. :try_end_1e5} :catchall_1ee

    if-ne v3, v4, :cond_1e8

    const/4 v3, -0x1

    :cond_1e8
    move v4, v1

    move v1, v3

    const/4 v3, -0x1

    goto/16 :goto_3a

    :cond_1ed
    return-object v0

    :catchall_1ee
    move-exception v0

    sget-boolean v1, Labcd/Od;->DW:Z

    if-eqz v1, :cond_20c

    const-wide v2, -0xb32f2b9e52eb790L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20c
    goto :goto_20e

    :goto_20d
    throw v0

    :goto_20e
    goto :goto_20d
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x492c2980727c2c80L  # -1.3899398053009152E-44

    :try_start_5
    sget-boolean v2, Labcd/Od;->j6:Z

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

    sget-boolean v3, Labcd/Od;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    goto :goto_28

    :goto_27
    throw v2

    :goto_28
    goto :goto_27
.end method

.method private j6(Labcd/Da;IILjava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2f5eb0769d318470L
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
    sget-boolean v0, Labcd/Od;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xf07df1ca447a350L  # -1.5343568892416632E236

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/Od;->Hw:Labcd/Vd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Labcd/Od;->j6(Labcd/Sa;IILjava/util/List;)Ljava/util/List;

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

    iget-object v3, p0, Labcd/Od;->v5:Labcd/nb;

    invoke-interface {v3, v2}, Labcd/nb;->j6(Labcd/Za;)V

    goto :goto_2b

    :cond_3d
    iget-object v1, p0, Labcd/Od;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception v0

    sget-boolean v1, Labcd/Od;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, -0xf07df1ca447a350L  # -1.5343568892416632E236

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method


# virtual methods
.method public j6(Labcd/nb;Labcd/Da;IILjava/lang/String;Ljava/util/List;)V
    .registers 23
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    sget-boolean v7, Labcd/Od;->j6:Z

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v7, :cond_39

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v14

    aput-object v2, v7, v13

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v7, v12

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v7, v11

    aput-object v5, v7, v10

    aput-object v6, v7, v9

    const-wide v9, 0x621ed6820cdfdd81L  # 4.439588872823981E164

    invoke-static {v9, v10, v0, v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_39
    iput-object v1, v0, Labcd/Od;->v5:Labcd/nb;

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

    invoke-interface {v1, v9}, Labcd/nb;->j6(Ljava/lang/String;)V

    goto :goto_4a

    :cond_5a
    const-string v7, "SELECT_VARIABLE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-direct {v0, v2, v3, v4, v6}, Labcd/Od;->j6(Labcd/Da;IILjava/util/List;)V

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

    invoke-direct {v0, v7}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v2, v3, v4, v7}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_82
    const-string v7, "SUGGEST_ELEMENT_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "e"

    if-eqz v7, :cond_c7

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v13, :cond_b4

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b4

    new-array v7, v13, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v13

    invoke-virtual {v6, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v14

    invoke-direct {v0, v7}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v2, v3, v4, v6}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_b4
    new-array v6, v11, [Ljava/lang/String;

    aput-object v9, v6, v14

    const-string v7, "m"

    aput-object v7, v6, v13

    const-string v7, "a"

    aput-object v7, v6, v12

    invoke-direct {v0, v6}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v2, v3, v4, v6}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_c7
    const-string v6, "SUGGEST_INDEX_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f3

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "i"

    aput-object v7, v6, v14

    const-string v7, "j"

    aput-object v7, v6, v13

    const-string v7, "k"

    aput-object v7, v6, v12

    const-string v7, "n"

    aput-object v7, v6, v11

    const-string v7, "z"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const-string v7, "l"

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-direct {v0, v6}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v2, v3, v4, v6}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    goto :goto_f4

    :cond_f3
    const/4 v8, 0x5

    :goto_f4
    const-string v6, "SUGGEST_EXCEPTION_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    new-array v5, v8, [Ljava/lang/String;

    aput-object v9, v5, v14

    const-string v6, "ex"

    aput-object v6, v5, v13

    const-string v6, "e2"

    aput-object v6, v5, v12

    const-string v6, "e3"

    aput-object v6, v5, v11

    const-string v6, "e4"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-direct {v0, v5}, Labcd/Od;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Labcd/Od;->DW(Labcd/Da;IILjava/util/List;)V

    :cond_118
    invoke-interface/range {p1 .. p1}, Labcd/nb;->DW()V

    return-void
.end method
