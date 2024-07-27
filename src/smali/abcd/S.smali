.class public Labcd/S;
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
.field private final FH:Labcd/ea;
    .annotation runtime Labcd/ru;
        field = -0x15560b8a09df2aa4L
    .end annotation
.end field

.field private final Hw:Labcd/Ga;
    .annotation runtime Labcd/ru;
        field = -0x15b30ba4efecbae5L
    .end annotation
.end field

.field private final VH:Labcd/Va;
    .annotation runtime Labcd/ru;
        field = -0x1172366c903ecca8L
    .end annotation
.end field

.field private final Zo:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x1201103028b9edc3L
    .end annotation
.end field

.field private final gn:Labcd/Q;
    .annotation runtime Labcd/ru;
        field = -0x178f2545700e33a3L
    .end annotation
.end field

.field private final v5:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = 0x1a31977ac2a5bd49L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xe2ee3f8376c812dL    # -1.7825992402538945E240

    const-class v0, Labcd/S;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ea;)V
    .registers 8

    const-wide v4, -0x256c23958791509L    # -2.063467679924638E297

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/S;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x256c23958791509L    # -2.063467679924638E297

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    iput-object v0, p0, Labcd/S;->Hw:Labcd/Ga;

    iget-object v0, p1, Labcd/La;->Mr:Labcd/Ea;

    iput-object v0, p0, Labcd/S;->v5:Labcd/Ea;

    iget-object v0, p1, Labcd/La;->a8:Labcd/Ba;

    iput-object v0, p0, Labcd/S;->Zo:Labcd/Ba;

    iget-object v0, p1, Labcd/La;->U2:Labcd/Va;

    iput-object v0, p0, Labcd/S;->VH:Labcd/Va;

    iget-object v0, p1, Labcd/ea;->nw:Labcd/Q;

    iput-object v0, p0, Labcd/S;->gn:Labcd/Q;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/S;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Labcd/na;Labcd/Ia;)V
    .registers 23
    .annotation runtime Labcd/su;
        method = 0x431d8d548e550edcL
    .end annotation

    :try_start_0
    sget-boolean v4, Labcd/S;->j6:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    const-wide v4, -0x304cee4cd845a1ffL    # -8.625217006844047E75

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v4, v5, v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v19

    new-instance v6, Labcd/Cb;

    invoke-direct {v6}, Labcd/Cb;-><init>()V

    new-instance v7, Labcd/Cb;

    invoke-direct {v7}, Labcd/Cb;-><init>()V

    new-instance v8, Labcd/Cb;

    invoke-direct {v8}, Labcd/Cb;-><init>()V

    new-instance v9, Labcd/Cb;

    invoke-direct {v9}, Labcd/Cb;-><init>()V

    new-instance v10, Labcd/Cb;

    invoke-direct {v10}, Labcd/Cb;-><init>()V

    invoke-interface/range {p1 .. p1}, Labcd/na;->u7()Labcd/qa;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface/range {v4 .. v10}, Labcd/qa;->j6(Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Labcd/Ia;->we()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/S;->gn:Labcd/Q;

    invoke-virtual {v5, v4}, Labcd/Q;->j6(I)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/S;->gn:Labcd/Q;

    invoke-virtual {v4}, Labcd/Q;->j6()Labcd/Da;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Labcd/Da;->gn()Labcd/la;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Labcd/Da;->gn()Labcd/la;

    move-result-object v5

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/S;->VH:Labcd/Va;

    move-object/from16 v0, p1

    invoke-virtual {v4, v12, v0}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Labcd/na;->u7()Labcd/qa;

    move-result-object v11

    move-object/from16 v13, p2

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-interface/range {v11 .. v18}, Labcd/qa;->j6(Labcd/Da;Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/S;->VH:Labcd/Va;

    invoke-virtual {v5, v4}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_1
    sget-boolean v4, Labcd/S;->DW:Z

    if-eqz v4, :cond_2

    const-wide v6, -0x304cee4cd845a1ffL    # -8.625217006844047E75

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-static/range {v5 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v5

    :catch_1
    move-exception v5

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public j6(Labcd/Da;II)V
    .registers 14

    const-wide v8, 0x1a2aaa6f55fd7a0L

    :try_start_0
    sget-boolean v0, Labcd/S;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1a2aaa6f55fd7a0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v0, p1, p2, p3}, Labcd/Va;->j6(Labcd/Da;II)Labcd/Sa;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {v1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Labcd/ga;->DW(Labcd/Sa;I)V

    invoke-virtual {v1, v0}, Labcd/Sa;->Zo(I)I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Select a method to inline."

    invoke-interface {v0, v1}, Labcd/hb;->FH(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v0}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v0

    check-cast v0, Labcd/Ia;

    invoke-virtual {v1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/S;->j6(Labcd/na;Labcd/Ia;)V

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/S;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Labcd/S;->VH:Labcd/Va;

    invoke-virtual {v0, v1}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Select a method to inline."

    invoke-interface {v0, v1}, Labcd/hb;->FH(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
