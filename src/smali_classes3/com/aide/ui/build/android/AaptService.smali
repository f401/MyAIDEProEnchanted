.class public Lcom/aide/ui/build/android/AaptService;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/android/AaptService$a;,
        Lcom/aide/ui/build/android/AaptService$b;,
        Lcom/aide/ui/build/android/AaptService$c;,
        Lcom/aide/ui/build/android/AaptService$d;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/ru;
        field = 0x101004bd065865c0L
    .end annotation
.end field


# instance fields
.field private final Hw:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Labcd/ru;
        field = -0x9a45253b2db7160L
    .end annotation
.end field

.field private VH:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = 0xe268b8150f9b540L
    .end annotation
.end field

.field private Zo:Lcom/aide/ui/build/android/E;
    .annotation runtime Labcd/ru;
        field = -0xc755fdb59237275L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/build/android/AaptService$d;
    .annotation runtime Labcd/ru;
        field = -0x22d66c8a91c864d0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/AaptService;

    const-wide v1, 0x2130b7a97ca9468L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x7b67b44cc6ec20dL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService;->VH:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/android/AaptService;->Hw:Ljava/util/concurrent/ExecutorService;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/AaptService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/AaptService;->VH:Landroid/content/Context;

    return-object p0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x209febf455944150L
    .end annotation

    const-wide v0, -0x371a8d895b46e045L  # -1.4946463188727194E43

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/aide/ui/build/android/E;->DW()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x196e789704eed9efL
    .end annotation

    const-wide v0, -0xd0a59d0b3a33ec0L  # -5.91285887397482E245

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Lcom/aide/ui/build/android/E;->j6(Z)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x6e35bf3f995b1730L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xbd06f4c45c8225bL

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Lcom/aide/engine/SyntaxError;

    invoke-direct {v0}, Lcom/aide/engine/SyntaxError;-><init>()V

    iput p2, v0, Lcom/aide/engine/SyntaxError;->v5:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/aide/engine/SyntaxError;->Zo:I

    iput p2, v0, Lcom/aide/engine/SyntaxError;->VH:I

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/aide/engine/SyntaxError;->gn:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aide/engine/SyntaxError;->u7:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return-object v0

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_51

    const-wide v2, -0xbd06f4c45c8225bL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method private j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;
    .registers 30
    .annotation runtime Labcd/su;
        method = 0xc0e643d510217c0L
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v0, p5

    move-object/from16 v4, p6

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v1, :cond_42

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v8, p2

    invoke-direct {v2, v8}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v11, p3

    invoke-direct {v2, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v9, p4

    invoke-direct {v2, v9}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const-wide v5, 0x947ebe67637011fL

    move-object/from16 v2, p0

    invoke-static {v5, v6, v2, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4a

    :cond_42
    move-object/from16 v2, p0

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v9, p4

    :goto_4a
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1, v3}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v5, v1

    invoke-static {v1, v4}, Labcd/gj;->v5(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    invoke-static {v1, v4}, Labcd/gj;->VH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v3, v1, v4}, Labcd/gj;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-static {v1, v4}, Labcd/gj;->Hw(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-static {v1, v4}, Labcd/gj;->Zo(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    invoke-static {v1, v4}, Labcd/gj;->gn(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Labcd/gj;->er(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v4}, Labcd/gj;->Zo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v0, v4}, Labcd/gj;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Labcd/gj;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    invoke-static/range {p1 .. p1}, Labcd/gj;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    new-instance v21, Lcom/aide/ui/build/android/AaptService$c;

    move-object/from16 v0, v21

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->Zo()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    invoke-direct/range {v0 .. v20}, Lcom/aide/ui/build/android/AaptService$c;-><init>(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZZ)V

    return-object v21
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x1e5cff35096dd213L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    const-string v10, "aapt"

    :try_start_8
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_1c

    const-wide v1, -0x15185655c1476d10L  # -9.496254101058747E206

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\n"
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_f4

    move-object/from16 v11, p3

    :try_start_25
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v3, :cond_f1

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_f2

    if-lez v0, :cond_ec

    const/16 v0, 0x3a

    const/4 v12, 0x1

    :try_start_3d
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-lez v13, :cond_d1

    invoke-virtual {v6, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_5b

    const/16 v0, 0x20

    invoke-virtual {v6, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5b} :catch_cd
    .catchall {:try_start_3d .. :try_end_5b} :catchall_f2

    :cond_5b
    move v15, v0

    if-lez v15, :cond_d1

    :try_start_5e
    invoke-virtual {v6, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_66} :catch_67
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_66} :catch_cd
    .catchall {:try_start_5e .. :try_end_66} :catchall_f2

    goto :goto_69

    :catch_67
    move-exception v0

    const/4 v0, 0x1

    :goto_69
    add-int/lit8 v15, v15, 0x1

    :try_start_6b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    :goto_77
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v4, "error:"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x6

    invoke-virtual {v13, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    goto :goto_77

    :cond_92
    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in generated file: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x1

    :cond_b1
    invoke-direct {v8, v10, v0, v13}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_cc} :catch_cd
    .catchall {:try_start_6b .. :try_end_cc} :catchall_f2

    goto :goto_ec

    :catch_cd
    move-exception v0

    :try_start_ce
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_d1
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v8, v10, v12, v6}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ec
    .catchall {:try_start_ce .. :try_end_ec} :catchall_f2

    :cond_ec
    :goto_ec
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2c

    :cond_f1
    return-object v1

    :catchall_f2
    move-exception v0

    goto :goto_f7

    :catchall_f4
    move-exception v0

    move-object/from16 v11, p3

    :goto_f7
    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_10c

    const-wide v2, -0x15185655c1476d10L  # -9.496254101058747E206

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10c
    goto :goto_10e

    :goto_10d
    throw v0

    :goto_10e
    goto :goto_10d
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/AaptService;->DW()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/AaptService;->DW(Z)V

    return-void
.end method

.method private j6(Ljava/lang/Throwable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x26b646d191492380L
    .end annotation

    const-wide v0, -0x2355f1b2235c2543L  # -2.4241176787798656E138

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/aide/ui/build/android/E;->FH()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1167f9b91a48880dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v0, -0x1460dec064238db0L  # -2.5585528561973226E210

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Lcom/aide/ui/build/android/E;->j6(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic j6()Z
    .registers 1

    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->j6:Z

    return v0
.end method

.method static synthetic j6(Z)Z
    .registers 1

    sput-boolean p0, Lcom/aide/ui/build/android/AaptService;->j6:Z

    return p0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 15

    const-wide v0, 0x252480d860db97a7L  # 9.243483687890482E-130

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "aapt"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    if-eqz v3, :cond_1e

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v10, p1

    move-object v11, v2

    invoke-direct/range {v4 .. v11}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4b
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/aide/ui/build/android/AaptService$d;

    new-instance v5, Lcom/aide/ui/build/android/AaptService$a;

    invoke-direct {v5, p0, v3}, Lcom/aide/ui/build/android/AaptService$a;-><init>(Lcom/aide/ui/build/android/AaptService;Ljava/util/List;)V

    invoke-direct {v4, p0, v5}, Lcom/aide/ui/build/android/AaptService$d;-><init>(Lcom/aide/ui/build/android/AaptService;Lcom/aide/ui/build/android/AaptService$a;)V

    iput-object v4, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5d

    return-void

    :catchall_5d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_65

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    goto :goto_67

    :goto_66
    throw v2

    :goto_67
    goto :goto_66
.end method

.method public j6(Lcom/aide/ui/build/android/E;)V
    .registers 6

    const-wide v0, 0xf145d2c46c061bdL  # 5.003634476975118E-236

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 9

    const-wide v0, 0x36ef8e75373b538dL  # 4.4220041456938624E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, p1}, Labcd/gj;->gn(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_5d

    :try_start_34
    invoke-static {v4, p1}, Labcd/gj;->v5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V

    :cond_4a
    invoke-static {v4}, Labcd/gj;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_59} :catch_5a
    .catchall {:try_start_34 .. :try_end_59} :catchall_5d

    goto :goto_28

    :catch_5a
    move-exception v4

    goto :goto_28

    :cond_5c
    return-void

    :catchall_5d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v3, :cond_65

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    goto :goto_67

    :goto_66
    throw v2

    :goto_67
    goto :goto_66
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 22

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p6

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->DW:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v3

    aput-object p2, v1, v2

    const/4 v4, 0x2

    aput-object p3, v1, v4

    new-instance v4, Ljava/lang/Boolean;

    move/from16 v10, p4

    invoke-direct {v4, v10}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x3

    aput-object v4, v1, v5

    new-instance v4, Ljava/lang/Boolean;

    move/from16 v11, p5

    invoke-direct {v4, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x4

    aput-object v4, v1, v5

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v0}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x5

    aput-object v4, v1, v5

    const-wide v4, 0xb44b7cf132e447cL

    invoke-static {v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3e

    :cond_3a
    move/from16 v10, p4

    move/from16 v11, p5

    :goto_3e
    const-string v1, "aapt"

    invoke-static {v1, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v8, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    :cond_4e
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_61
    :goto_61
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_85
    const/4 v2, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/aide/ui/build/android/AaptService;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/android/AaptService$d;

    new-instance v2, Lcom/aide/ui/build/android/AaptService$a;

    invoke-direct {v2, p0, v13}, Lcom/aide/ui/build/android/AaptService$a;-><init>(Lcom/aide/ui/build/android/AaptService;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/build/android/AaptService$d;-><init>(Lcom/aide/ui/build/android/AaptService;Lcom/aide/ui/build/android/AaptService$a;)V

    iput-object v1, v8, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
