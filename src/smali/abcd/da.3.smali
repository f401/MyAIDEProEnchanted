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
    .registers 4

    const-wide v2, -0x13f372968847b710L    # -3.00378909305818E212

    const-class v0, Labcd/da;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, -0x144be07c080e9a10L    # -6.615642490177098E210

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/da;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x144be07c080e9a10L    # -6.615642490177098E210

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/da;->FH:Labcd/La;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/da;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Labcd/Sa;I)V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x17ddaaa7892da189L
    .end annotation

    :try_start_0
    sget-boolean v2, Labcd/da;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, -0x2d42af5e26cd48L

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v4, v5, v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->P8(I)I

    move-result v3

    invoke-interface {v2, v3}, Labcd/pa;->Zo(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->QX(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->a8(I)I

    move-result v11

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->U2(I)I

    move-result v12

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->Mr(I)[C

    move-result-object v13

    if-lez v12, :cond_3

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/da;->v5:[Labcd/nc$c;

    array-length v2, v2

    if-ge v10, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/da;->v5:[Labcd/nc$c;

    aget-object v6, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/da;->Hw:Labcd/nc$b;

    invoke-interface {v2, v13, v11, v12}, Labcd/nc$b;->j6([CII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/da;->Hw:Labcd/nc$b;

    invoke-interface {v6, v2}, Labcd/nc$c;->j6(Labcd/nc$b;)V

    invoke-interface {v6}, Labcd/nc$c;->j6()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->vy(I)I

    move-result v5

    invoke-virtual/range {p1 .. p2}, Labcd/Sa;->BT(I)I

    move-result v7

    invoke-interface {v6}, Labcd/nc$c;->start()I

    move-result v8

    invoke-interface {v6}, Labcd/nc$c;->end()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/da;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->rN:Labcd/Ca;

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    new-instance v9, Ljava/lang/String;

    invoke-interface {v6}, Labcd/nc$c;->start()I

    move-result v15

    add-int/2addr v15, v11

    invoke-interface {v6}, Labcd/nc$c;->end()I

    move-result v16

    invoke-interface {v6}, Labcd/nc$c;->start()I

    move-result v6

    sub-int v6, v16, v6

    invoke-direct {v9, v13, v15, v6}, Ljava/lang/String;-><init>([CII)V

    add-int v6, v7, v8

    add-int v8, v7, v14

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Labcd/Ca;->v5(Labcd/Da;Labcd/na;IIIILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    sget-boolean v2, Labcd/da;->DW:Z

    if-eqz v2, :cond_2

    const-wide v4, -0x2d42af5e26cd48L

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v3

    :cond_3
    return-void

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xcd4da675ac5e4d7L
    .end annotation

    const-wide v2, 0x16c7c0ec4f6553a8L

    :try_start_0
    sget-boolean v0, Labcd/da;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x16c7c0ec4f6553a8L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Labcd/da;->DW(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/da;->j6(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/da;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method public j6(Labcd/Sa;)V
    .registers 10

    const-wide v6, 0x16b9476a5755fd29L

    :try_start_0
    sget-boolean v0, Labcd/da;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16b9476a5755fd29L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/da;->v5:[Labcd/nc$c;

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/da;->FH:Labcd/La;

    invoke-virtual {v0}, Labcd/La;->VH()[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Labcd/da;->FH:Labcd/La;

    invoke-virtual {v0}, Labcd/La;->Zo()[Z

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v0

    invoke-virtual {v0}, Labcd/nc;->DW()Labcd/nc$b;

    move-result-object v0

    iput-object v0, p0, Labcd/da;->Hw:Labcd/nc$b;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v4, :cond_2

    aget-boolean v4, v2, v0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Labcd/nc;->j6(Ljava/lang/String;)Labcd/nc$d;

    move-result-object v4

    invoke-interface {v4}, Labcd/nc$d;->j6()Labcd/nc$c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Labcd/nc;->j6()Labcd/nc;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Labcd/nc;->DW(Ljava/lang/String;)Labcd/nc$d;

    move-result-object v4

    invoke-interface {v4}, Labcd/nc$d;->j6()Labcd/nc$c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Labcd/nc$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Labcd/nc$c;

    iput-object v0, p0, Labcd/da;->v5:[Labcd/nc$c;

    iget-object v0, p0, Labcd/da;->v5:[Labcd/nc$c;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/da;->j6(Labcd/Sa;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    return-void

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/da;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method
