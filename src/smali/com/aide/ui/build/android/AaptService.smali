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
    .registers 4

    const-wide v2, 0x2130b7a97ca9468L

    const-class v0, Lcom/aide/ui/build/android/AaptService;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0x7b67b44cc6ec20dL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7b67b44cc6ec20dL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService;->VH:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Hw:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/AaptService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->VH:Landroid/content/Context;

    return-object v0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x209febf455944150L
    .end annotation

    const-wide v2, -0x371a8d895b46e045L    # -1.4946463188727194E43

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x371a8d895b46e045L    # -1.4946463188727194E43

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    invoke-interface {v0}, Lcom/aide/ui/build/android/E;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x196e789704eed9efL
    .end annotation

    const-wide v2, -0xd0a59d0b3a33ec0L    # -5.91285887397482E245

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd0a59d0b3a33ec0L    # -5.91285887397482E245

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/android/E;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x6e35bf3f995b1730L
    .end annotation

    const-wide v8, -0xbd06f4c45c8225bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xbd06f4c45c8225bL

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;
    .registers 33
    .annotation runtime Labcd/su;
        method = 0xc0e643d510217c0L
    .end annotation

    sget-boolean v4, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v4, :cond_0

    const-wide v4, 0x947ebe67637011fL

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    const/4 v7, 0x5

    aput-object p6, v6, v7

    const/4 v7, 0x6

    aput-object p7, v6, v7

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-static {v9, v0}, Labcd/gj;->v5(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, p6

    invoke-static {v9, v0}, Labcd/gj;->VH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v9, v1}, Labcd/gj;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, p6

    invoke-static {v9, v0}, Labcd/gj;->Hw(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p6

    invoke-static {v9, v0}, Labcd/gj;->Zo(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, p6

    invoke-static {v9, v0}, Labcd/gj;->gn(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Labcd/gj;->er(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Labcd/gj;->Zo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Labcd/gj;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Labcd/gj;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Labcd/gj;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v4, Lcom/aide/ui/build/android/AaptService$c;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Zk;->Zo()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move/from16 v22, p2

    move/from16 v23, p3

    move/from16 v24, p4

    invoke-direct/range {v4 .. v24}, Lcom/aide/ui/build/android/AaptService$c;-><init>(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZZ)V

    return-object v4
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1e5cff35096dd213L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15185655c1476d10L    # -9.496254101058747E206

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_9

    aget-object v0, v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-lez v0, :cond_5

    const/16 v0, 0x3a

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->indexOf(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :cond_1
    if-lez v1, :cond_6

    :try_start_3
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "error:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in generated file: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :cond_3
    const-string v8, "aapt"

    invoke-direct {p0, v8, v2, v1}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "aapt"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v7}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_4
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v0, :cond_8

    const-wide v2, -0x15185655c1476d10L    # -9.496254101058747E206

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :cond_9
    return-object v4

    :catch_3
    move-exception v1

    goto :goto_4
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

    const-wide v2, -0x2355f1b2235c2543L    # -2.4241176787798656E138

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2355f1b2235c2543L    # -2.4241176787798656E138

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    invoke-interface {v0}, Lcom/aide/ui/build/android/E;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1167f9b91a48880dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v2, -0x1460dec064238db0L    # -2.5585528561973226E210

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1460dec064238db0L    # -2.5585528561973226E210

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/android/E;->j6(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
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
    .registers 14

    const-wide v10, 0x252480d860db97a7L    # 9.243483687890482E-130

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x252480d860db97a7L    # 9.243483687890482E-130

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "aapt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/android/AaptService;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/android/AaptService$d;

    new-instance v2, Lcom/aide/ui/build/android/AaptService$a;

    invoke-direct {v2, p0, v8}, Lcom/aide/ui/build/android/AaptService$a;-><init>(Lcom/aide/ui/build/android/AaptService;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/build/android/AaptService$d;-><init>(Lcom/aide/ui/build/android/AaptService;Lcom/aide/ui/build/android/AaptService$a;)V

    iput-object v1, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public j6(Lcom/aide/ui/build/android/E;)V
    .registers 6

    const-wide v2, 0xf145d2c46c061bdL    # 5.003634476975118E-236

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf145d2c46c061bdL    # 5.003634476975118E-236

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService;->Zo:Lcom/aide/ui/build/android/E;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 10

    const-wide v6, 0x36ef8e75373b538dL    # 4.4220041456938624E-44

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36ef8e75373b538dL    # 4.4220041456938624E-44

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/gj;->gn(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, p1}, Labcd/gj;->v5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Labcd/gj;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 19

    sget-boolean v2, Lcom/aide/ui/build/android/AaptService;->DW:Z

    if-eqz v2, :cond_0

    const-wide v2, 0xb44b7cf132e447cL

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p5

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const-string v2, "aapt"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/build/android/AaptService$c;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/aide/ui/build/android/AaptService$d;

    new-instance v4, Lcom/aide/ui/build/android/AaptService$a;

    invoke-direct {v4, p0, v10}, Lcom/aide/ui/build/android/AaptService$a;-><init>(Lcom/aide/ui/build/android/AaptService;Ljava/util/List;)V

    invoke-direct {v3, p0, v4}, Lcom/aide/ui/build/android/AaptService$d;-><init>(Lcom/aide/ui/build/android/AaptService;Lcom/aide/ui/build/android/AaptService$a;)V

    iput-object v3, p0, Lcom/aide/ui/build/android/AaptService;->v5:Lcom/aide/ui/build/android/AaptService$d;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
