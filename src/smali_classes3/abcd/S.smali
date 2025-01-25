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
    .registers 3

    const-class v0, Labcd/S;

    const-wide v1, -0xe2ee3f8376c812dL  # -1.7825992402538945E240

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ea;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x256c23958791509L  # -2.063467679924638E297

    :try_start_6
    sget-boolean v3, Labcd/S;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    iput-object v3, p0, Labcd/S;->Hw:Labcd/Ga;

    iget-object v3, p1, Labcd/La;->Mr:Labcd/Ea;

    iput-object v3, p0, Labcd/S;->v5:Labcd/Ea;

    iget-object v3, p1, Labcd/La;->a8:Labcd/Ba;

    iput-object v3, p0, Labcd/S;->Zo:Labcd/Ba;

    iget-object v3, p1, Labcd/La;->U2:Labcd/Va;

    iput-object v3, p0, Labcd/S;->VH:Labcd/Va;

    iget-object v3, p1, Labcd/ea;->nw:Labcd/Q;

    iput-object v3, p0, Labcd/S;->gn:Labcd/Q;
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/S;->DW:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private j6(Labcd/na;Labcd/Ia;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x431d8d548e550edcL
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v5, p1

    :try_start_4
    sget-boolean v0, Labcd/S;->j6:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_82

    if-eqz v0, :cond_13

    const-wide v0, -0x304cee4cd845a1ffL  # -8.625217006844047E75

    move-object/from16 v6, p2

    :try_start_f
    invoke-static {v0, v1, v7, v5, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    :cond_13
    move-object/from16 v6, p2

    :goto_15
    invoke-virtual/range {p2 .. p2}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v0

    new-instance v1, Labcd/Cb;

    invoke-direct {v1}, Labcd/Cb;-><init>()V

    new-instance v2, Labcd/Cb;

    invoke-direct {v2}, Labcd/Cb;-><init>()V

    new-instance v3, Labcd/Cb;

    invoke-direct {v3}, Labcd/Cb;-><init>()V

    new-instance v4, Labcd/Cb;

    invoke-direct {v4}, Labcd/Cb;-><init>()V

    new-instance v16, Labcd/Cb;

    invoke-direct/range {v16 .. v16}, Labcd/Cb;-><init>()V

    invoke-interface/range {p1 .. p1}, Labcd/na;->u7()Labcd/qa;

    move-result-object v8

    move-object/from16 v9, p2

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object/from16 v14, v16

    invoke-interface/range {v8 .. v14}, Labcd/qa;->j6(Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-virtual/range {p2 .. p2}, Labcd/Ia;->we()I

    move-result v8

    iget-object v9, v7, Labcd/S;->gn:Labcd/Q;

    invoke-virtual {v9, v8}, Labcd/Q;->j6(I)V

    :cond_4d
    :goto_4d
    iget-object v8, v7, Labcd/S;->gn:Labcd/Q;

    invoke-virtual {v8}, Labcd/Q;->j6()Labcd/Da;

    move-result-object v9

    if-eqz v9, :cond_7f

    invoke-virtual {v9}, Labcd/Da;->gn()Labcd/la;

    move-result-object v8

    invoke-virtual {v0}, Labcd/Da;->gn()Labcd/la;

    move-result-object v10

    if-ne v8, v10, :cond_4d

    iget-object v8, v7, Labcd/S;->VH:Labcd/Va;

    invoke-virtual {v8, v9, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Labcd/na;->u7()Labcd/qa;

    move-result-object v8

    move-object/from16 v10, p2

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-interface/range {v8 .. v15}, Labcd/qa;->j6(Labcd/Da;Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V

    iget-object v8, v7, Labcd/S;->VH:Labcd/Va;

    invoke-virtual {v8, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_7c
    .catchall {:try_start_f .. :try_end_7c} :catchall_80

    move-object/from16 v0, v17

    goto :goto_4d

    :cond_7f
    return-void

    :catchall_80
    move-exception v0

    goto :goto_85

    :catchall_82
    move-exception v0

    move-object/from16 v6, p2

    :goto_85
    sget-boolean v1, Labcd/S;->DW:Z

    if-eqz v1, :cond_98

    const-wide v2, -0x304cee4cd845a1ffL  # -8.625217006844047E75

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v0

    :goto_9a
    goto :goto_99
.end method


# virtual methods
.method public j6(Labcd/Da;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/S;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1a2aaa6f55fd7a0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v0, p1, p2, p3}, Labcd/Va;->j6(Labcd/Da;II)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_71

    const/4 v2, -0x1

    const-string v3, "Select a method to inline."

    if-eq v1, v2, :cond_64

    :try_start_30
    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Labcd/ga;->DW(Labcd/Sa;I)V

    invoke-virtual {v0, v1}, Labcd/Sa;->Zo(I)I

    move-result v2

    const/16 v4, 0x13

    if-eq v2, v4, :cond_4f

    const/16 v4, 0x14

    if-eq v2, v4, :cond_4f

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0, v3}, Labcd/hb;->FH(Ljava/lang/String;)V

    goto :goto_63

    :cond_4f
    invoke-virtual {v0, v1}, Labcd/Sa;->v5(I)Labcd/Aa;

    move-result-object v1

    check-cast v1, Labcd/Ia;

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Labcd/S;->j6(Labcd/na;Labcd/Ia;)V

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->v5()V

    :goto_63
    return-void

    :cond_64
    iget-object v1, p0, Labcd/S;->VH:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/S;->FH:Labcd/ea;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0, v3}, Labcd/hb;->FH(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_30 .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception v0

    sget-boolean v1, Labcd/S;->DW:Z

    if-eqz v1, :cond_8b

    const-wide v2, 0x1a2aaa6f55fd7a0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    throw v0
.end method
