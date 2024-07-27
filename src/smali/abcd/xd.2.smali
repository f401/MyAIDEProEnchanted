.class public Labcd/xd;
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
        field = 0x28f272b24b92a8ccL
    .end annotation
.end field

.field private final Hw:Labcd/Ga;
    .annotation runtime Labcd/ru;
        field = 0xc6531aa1743688bL
    .end annotation
.end field

.field private final VH:Labcd/Va;
    .annotation runtime Labcd/ru;
        field = -0x260e958b7f1ad630L
    .end annotation
.end field

.field private final Zo:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x269205d24c00f5dbL
    .end annotation
.end field

.field private final gn:Labcd/yd;
    .annotation runtime Labcd/ru;
        field = -0x1cc0174320ae9ab9L
    .end annotation
.end field

.field private final v5:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = 0x15dfc5053149a4c1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x215d645ed2e94963L    # -7.435426890045099E147

    const-class v0, Labcd/xd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/yd;)V
    .registers 10

    const-wide v2, 0x43811f51172843fL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/xd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x43811f51172843fL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/xd;->FH:Labcd/La;

    iput-object p2, p0, Labcd/xd;->gn:Labcd/yd;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    iput-object v0, p0, Labcd/xd;->Hw:Labcd/Ga;

    iget-object v0, p1, Labcd/La;->Mr:Labcd/Ea;

    iput-object v0, p0, Labcd/xd;->v5:Labcd/Ea;

    iget-object v0, p1, Labcd/La;->a8:Labcd/Ba;

    iput-object v0, p0, Labcd/xd;->Zo:Labcd/Ba;

    iget-object v0, p1, Labcd/La;->U2:Labcd/Va;

    iput-object v0, p0, Labcd/xd;->VH:Labcd/Va;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/xd;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Labcd/Sa;IIILabcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x4a5699b09ec4e94L
    .end annotation

    sget-boolean v0, Labcd/xd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4b8b538376c0a1dL

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    const/4 v3, 0x7

    aput-object p8, v2, v3

    const/16 v3, 0x8

    aput-object p9, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v0

    invoke-virtual {p1, p3}, Labcd/Sa;->vy(I)I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p1, p2}, Labcd/Sa;->BT(I)I

    move-result v0

    if-nez v2, :cond_1

    invoke-virtual {p1, p3}, Labcd/Sa;->BT(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->QX(I)I

    move-result v1

    invoke-virtual {p1, p3}, Labcd/Sa;->vy(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p1, p2}, Labcd/Sa;->Ws(I)I

    move-result v1

    if-nez v3, :cond_2

    invoke-virtual {p1, p3}, Labcd/Sa;->BT(I)I

    move-result v4

    sub-int/2addr v1, v4

    :cond_2
    invoke-virtual {p5, p4}, Labcd/Cb;->j6(I)V

    invoke-virtual {p6, v2}, Labcd/Cb;->j6(I)V

    invoke-virtual {p7, v0}, Labcd/Cb;->j6(I)V

    invoke-virtual {p8, v3}, Labcd/Cb;->j6(I)V

    invoke-virtual {p9, v1}, Labcd/Cb;->j6(I)V

    return-void
.end method

.method private j6(Labcd/Sa;IIILabcd/ua;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V
    .registers 25
    .annotation runtime Labcd/su;
        method = -0xc4d79f3e5f21a61L
    .end annotation

    sget-boolean v2, Labcd/xd;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x3f3e177ef1c2058L

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    const/4 v5, 0x7

    aput-object p8, v4, v5

    const/16 v5, 0x8

    aput-object p9, v4, v5

    const/16 v5, 0x9

    aput-object p10, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v13, v2

    :goto_0
    if-ltz v13, :cond_1

    move/from16 v0, p2

    invoke-virtual {p1, v0, v13}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Labcd/xd;->j6(Labcd/Sa;IIILabcd/ua;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    add-int/lit8 v2, v13, -0x1

    move v13, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xa6

    if-ne v2, v3, :cond_2

    const/4 v6, -0x1

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Labcd/xd;->j6(Labcd/Sa;IIILabcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    :cond_2
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->er(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Zo(I)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ia;

    invoke-virtual {v2}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    move-object/from16 v0, p5

    if-ne v2, v0, :cond_4

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v2

    move/from16 v0, p4

    invoke-virtual {p1, v0}, Labcd/Sa;->vy(I)I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v2

    if-nez v3, :cond_3

    move/from16 v0, p4

    invoke-virtual {p1, v0}, Labcd/Sa;->BT(I)I

    move-result v4

    sub-int/2addr v2, v4

    :cond_3
    const/4 v4, -0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Labcd/Cb;->j6(I)V

    :cond_4
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->er(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Labcd/Sa;->Zo(II)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Zo(I)I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v2

    check-cast v2, Labcd/Ia;

    invoke-virtual {v2}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v2

    move-object/from16 v0, p5

    if-ne v2, v0, :cond_6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v2

    move/from16 v0, p4

    invoke-virtual {p1, v0}, Labcd/Sa;->vy(I)I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v2

    if-nez v3, :cond_5

    move/from16 v0, p4

    invoke-virtual {p1, v0}, Labcd/Sa;->BT(I)I

    move-result v4

    sub-int/2addr v2, v4

    :cond_5
    const/4 v4, -0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Labcd/Cb;->j6(I)V

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Labcd/Cb;->j6(I)V

    :cond_6
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Zo(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->VH(I)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->er(I)I

    move-result v12

    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v2

    if-ge v6, v2, :cond_8

    move/from16 v0, p3

    invoke-virtual {p1, v0, v6}, Labcd/Sa;->Zo(II)I

    move-result v2

    if-ne v2, v12, :cond_7

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Labcd/xd;->j6(Labcd/Sa;IIILabcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private j6(Labcd/Sa;ILabcd/Ia;ILabcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V
    .registers 27
    .annotation runtime Labcd/su;
        method = 0x53ce79034e00b200L
    .end annotation

    sget-boolean v2, Labcd/xd;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x27f31be48aabf05fL    # -1.422956367430874E116

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    const/4 v5, 0x7

    aput-object p8, v4, v5

    const/16 v5, 0x8

    aput-object p9, v4, v5

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v12, v2

    :goto_0
    if-ltz v12, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Labcd/Sa;->Zo(II)I

    move-result v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Labcd/xd;->j6(Labcd/Sa;ILabcd/Ia;ILabcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    add-int/lit8 v2, v12, -0x1

    move v12, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->sy(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->XL(I)I

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_d

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Zo(I)I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_d

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v2

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_d

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->er(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x9b

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x9c

    if-ne v2, v3, :cond_d

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Labcd/Sa;->Zo(II)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Labcd/hb;->DW(Labcd/Da;II)V

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    invoke-virtual/range {p5 .. p5}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v14, v2, :cond_c

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->sh(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->j3(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/Sa;->sh(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v5

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v3

    add-int/2addr v5, v3

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v3

    add-int v4, v2, v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v7

    if-nez v6, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v2

    add-int/2addr v7, v2

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    add-int/2addr v6, v8

    const-string v8, ""

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v6, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->vy(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->BT(I)I

    move-result v9

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v10

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v11

    move v12, v4

    move v13, v5

    invoke-interface/range {v6 .. v13}, Labcd/hb;->DW(Labcd/Da;IIIIII)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->sh(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->j3(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/Sa;->sh(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v5

    if-nez v2, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v3

    add-int/2addr v5, v3

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v3

    add-int v4, v2, v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v7

    if-nez v6, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v2

    add-int/2addr v7, v2

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    add-int/2addr v6, v8

    const-string v8, ""

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v6, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->vy(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->BT(I)I

    move-result v9

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->j3(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/Sa;->j3(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/Sa;->vy(I)I

    move-result v10

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->j3(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/Sa;->j3(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/Sa;->BT(I)I

    move-result v11

    move v12, v4

    move v13, v5

    invoke-interface/range {v6 .. v13}, Labcd/hb;->DW(Labcd/Da;IIIIII)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Labcd/Sa;->Zo(II)I

    move-result v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v5

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v3

    add-int/2addr v5, v3

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v3

    add-int v4, v2, v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Labcd/Cb;->DW(I)I

    move-result v7

    if-nez v6, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v2

    add-int/2addr v7, v2

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    add-int/2addr v6, v8

    const-string v8, ""

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v6, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->vy(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->BT(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->QX(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Labcd/Sa;->Ws(I)I

    move-result v11

    move v12, v4

    move v13, v5

    invoke-interface/range {v6 .. v13}, Labcd/hb;->DW(Labcd/Da;IIIIII)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/xd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->vy(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->BT(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->QX(I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Labcd/Sa;->Ws(I)I

    move-result v7

    const-string v8, ""

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public j6(Labcd/Da;Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V
    .registers 18

    sget-boolean v0, Labcd/xd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5205b55f37ea11b3L    # -3.304128219265092E-87

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/xd;->VH:Labcd/Va;

    iget-object v1, p0, Labcd/xd;->gn:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v0

    invoke-virtual {p2}, Labcd/Ia;->we()I

    move-result v2

    invoke-interface {v0, v1, v2}, Labcd/ga;->j6(Labcd/Sa;I)V

    invoke-virtual {v1}, Labcd/Sa;->aM()I

    move-result v2

    invoke-virtual {p2}, Labcd/Ia;->we()I

    move-result v4

    move-object v0, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Labcd/xd;->j6(Labcd/Sa;ILabcd/Ia;ILabcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    iget-object v0, p0, Labcd/xd;->VH:Labcd/Va;

    invoke-virtual {v0, v1}, Labcd/Va;->j6(Labcd/Sa;)V

    return-void
.end method

.method public j6(Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)Z
    .registers 19

    sget-boolean v0, Labcd/xd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4201c192506228f9L    # -4.401061040053992E-10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v1

    iget-object v0, p0, Labcd/xd;->VH:Labcd/Va;

    iget-object v2, p0, Labcd/xd;->gn:Labcd/yd;

    invoke-virtual {v0, v1, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v11

    invoke-virtual {v11}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v0

    invoke-interface {v0, v11}, Labcd/ga;->DW(Labcd/Sa;)V

    invoke-virtual {p1}, Labcd/Ia;->j6()I

    move-result v0

    invoke-virtual {v11, v0}, Labcd/Sa;->rN(I)I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {v11, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v7

    invoke-virtual {v11, v0}, Labcd/Sa;->we(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v8

    invoke-virtual {v11, v8}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v11, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v11, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v2, 0x8d

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v11, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {v11, v0}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v11, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    move v0, v2

    move v3, v2

    :goto_0
    invoke-virtual {v11, v8}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v11, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v11, v2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v4, 0x92

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v11, v8, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {v11, v2}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v11, v8, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v0

    move v6, v0

    move v5, v0

    :goto_1
    const/4 v0, -0x1

    if-eq v6, v0, :cond_2

    const/4 v0, -0x1

    if-eq v5, v0, :cond_2

    iget-object v0, p0, Labcd/xd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {v11, v6}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {v11, v6}, Labcd/Sa;->BT(I)I

    move-result v3

    invoke-virtual {v11, v5}, Labcd/Sa;->QX(I)I

    move-result v4

    invoke-virtual {v11, v5}, Labcd/Sa;->Ws(I)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Labcd/hb;->FH(Labcd/Da;IIII)V

    invoke-virtual {p1}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v5

    move-object v0, p0

    move-object v1, v11

    move v2, v8

    move v3, v7

    move v4, v6

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Labcd/xd;->j6(Labcd/Sa;IIILabcd/ua;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    iget-object v0, p0, Labcd/xd;->VH:Labcd/Va;

    invoke-virtual {v0, v11}, Labcd/Va;->j6(Labcd/Sa;)V

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    const/4 v0, -0x1

    const/4 v2, -0x1

    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/xd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Cannot inline this method."

    invoke-interface {v0, v1}, Labcd/hb;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/xd;->VH:Labcd/Va;

    invoke-virtual {v0, v11}, Labcd/Va;->j6(Labcd/Sa;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v6, v0

    move v5, v3

    goto :goto_1
.end method
