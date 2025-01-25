.class public Labcd/da;
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
        field = 0x2231aa99dad93038L
    .end annotation
.end field

.field private Hw:Labcd/nc$b;
    .annotation runtime Labcd/ru;
        field = -0x15514c61c61f3c24L
    .end annotation
.end field

.field private v5:[Labcd/nc$c;
    .annotation runtime Labcd/ru;
        field = -0x21b0a18e322b1171L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/da;

    const-wide v1, -0x13f372968847b710L  # -3.00378909305818E212

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x144be07c080e9a10L  # -6.615642490177098E210

    :try_start_6
    sget-boolean v3, Labcd/da;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/da;->FH:Labcd/La;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/da;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method private DW(Labcd/Sa;I)V
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x17ddaaa7892da189L
    .end annotation

    move-object/from16 v7, p0

    move/from16 v1, p2

    :try_start_4
    sget-boolean v0, Labcd/da;->j6:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_bb

    const-wide v2, -0x2d42af5e26cd48L

    move-object/from16 v5, p1

    :try_start_14
    invoke-static {v2, v3, v7, v5, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_18
    move-object/from16 v5, p1

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/pa;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I

    move-result v2

    invoke-interface {v0, v2}, Labcd/pa;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v0

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->QX(I)I

    move-result v2

    if-ne v0, v2, :cond_b8

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->a8(I)I

    move-result v0

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->U2(I)I

    move-result v2

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Mr(I)[C

    move-result-object v3

    if-lez v2, :cond_b8

    const/4 v4, 0x0

    :goto_57
    iget-object v6, v7, Labcd/da;->v5:[Labcd/nc$c;

    array-length v8, v6

    if-ge v4, v8, :cond_b8

    aget-object v6, v6, v4

    iget-object v8, v7, Labcd/da;->Hw:Labcd/nc$b;

    invoke-interface {v8, v3, v0, v2}, Labcd/nc$b;->j6([CII)V

    iget-object v8, v7, Labcd/da;->Hw:Labcd/nc$b;

    invoke-interface {v6, v8}, Labcd/nc$c;->j6(Labcd/nc$b;)V

    invoke-interface {v6}, Labcd/nc$c;->j6()Z

    move-result v8

    if-eqz v8, :cond_b1

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v13

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v8

    invoke-interface {v6}, Labcd/nc$c;->start()I

    move-result v9

    invoke-interface {v6}, Labcd/nc$c;->end()I

    move-result v10

    iget-object v11, v7, Labcd/da;->FH:Labcd/La;

    iget-object v11, v11, Labcd/La;->rN:Labcd/Ca;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v14

    new-instance v15, Ljava/lang/String;

    invoke-interface {v6}, Labcd/nc$c;->start()I

    move-result v16

    move/from16 v17, v2

    add-int v2, v16, v0

    invoke-interface {v6}, Labcd/nc$c;->end()I

    move-result v16

    invoke-interface {v6}, Labcd/nc$c;->start()I

    move-result v6

    sub-int v6, v16, v6

    invoke-direct {v15, v3, v2, v6}, Ljava/lang/String;-><init>([CII)V

    add-int v2, v8, v9

    add-int v6, v8, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v14

    move v11, v13

    move v12, v2

    move v14, v6

    move/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Labcd/Ca;->v5(Labcd/Da;Labcd/na;IIIILjava/lang/String;I)V
    :try_end_b0
    .catchall {:try_start_14 .. :try_end_b0} :catchall_b9

    goto :goto_b3

    :cond_b1
    move/from16 v17, v2

    :goto_b3
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v17

    goto :goto_57

    :cond_b8
    return-void

    :catchall_b9
    move-exception v0

    goto :goto_be

    :catchall_bb
    move-exception v0

    move-object/from16 v5, p1

    :goto_be
    sget-boolean v2, Labcd/da;->DW:Z

    if-eqz v2, :cond_d4

    const-wide v2, -0x2d42af5e26cd48L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d4
    goto :goto_d6

    :goto_d5
    throw v0

    :goto_d6
    goto :goto_d5
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xcd4da675ac5e4d7L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/da;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x16c7c0ec4f6553a8L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0, p1, p2}, Labcd/da;->DW(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/da;->j6(Labcd/Sa;I)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/da;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x16c7c0ec4f6553a8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v0

    :goto_3d
    goto :goto_3c
.end method


# virtual methods
.method public j6(Labcd/Sa;)V
    .registers 10

    const-wide v0, 0x16b9476a5755fd29L

    :try_start_5
    sget-boolean v2, Labcd/da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v2

    if-eqz v2, :cond_70

    iget-object v2, p0, Labcd/da;->v5:[Labcd/nc$c;

    if-nez v2, :cond_69

    iget-object v2, p0, Labcd/da;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->VH()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/da;->FH:Labcd/La;

    invoke-virtual {v3}, Labcd/La;->Zo()[Z

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v5

    invoke-virtual {v5}, Labcd/nc;->DW()Labcd/nc$b;

    move-result-object v5

    iput-object v5, p0, Labcd/da;->Hw:Labcd/nc$b;

    const/4 v5, 0x0

    :goto_32
    array-length v6, v2
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_71

    if-ge v5, v6, :cond_5e

    aget-boolean v6, v3, v5

    if-eqz v6, :cond_4b

    :try_start_39
    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Labcd/nc;->j6(Ljava/lang/String;)Labcd/nc$d;

    move-result-object v6

    invoke-interface {v6}, Labcd/nc$d;->j6()Labcd/nc$c;

    move-result-object v6

    :goto_47
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_4b
    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Labcd/nc;->DW(Ljava/lang/String;)Labcd/nc$d;

    move-result-object v6

    invoke-interface {v6}, Labcd/nc$d;->j6()Labcd/nc$c;

    move-result-object v6
    :try_end_59
    .catch Labcd/nc$a; {:try_start_39 .. :try_end_59} :catch_5a
    .catchall {:try_start_39 .. :try_end_59} :catchall_71

    goto :goto_47

    :catch_5a
    move-exception v6

    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_5e
    :try_start_5e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Labcd/nc$c;

    iput-object v2, p0, Labcd/da;->v5:[Labcd/nc$c;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_69
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/da;->j6(Labcd/Sa;I)V
    :try_end_70
    .catchall {:try_start_5e .. :try_end_70} :catchall_71

    :cond_70
    return-void

    :catchall_71
    move-exception v2

    sget-boolean v3, Labcd/da;->DW:Z

    if-eqz v3, :cond_79

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    goto :goto_7b

    :goto_7a
    throw v2

    :goto_7b
    goto :goto_7a
.end method
