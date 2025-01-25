.class public Lcom/aide/ui/build/android/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/android/a$a;,
        Lcom/aide/ui/build/android/a$b;,
        Lcom/aide/ui/build/android/a$c;
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
        field = 0x351d1782894ef3bL
    .end annotation
.end field


# instance fields
.field private final Hw:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Labcd/ru;
        field = 0x24bb0d5b19599bcdL
    .end annotation
.end field

.field private Zo:Lcom/aide/ui/build/android/F;
    .annotation runtime Labcd/ru;
        field = 0x21b71e82fc2df32cL
    .end annotation
.end field

.field private v5:Lcom/aide/ui/build/android/a$c;
    .annotation runtime Labcd/ru;
        field = -0x13f97d512988dd53L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/a;

    const-wide v1, -0x56c3d9182cea280L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x124f16ae02071640L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/android/a;->Hw:Ljava/util/concurrent/ExecutorService;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3110f1155c590e7fL
    .end annotation

    const-wide v0, -0x28e9ea5304522465L  # -3.319474541655122E111

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/aide/ui/build/android/F;->j6()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/a;->FH()V

    return-void
.end method

.method private FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2826585a2b894a93L
    .end annotation

    const-wide v0, 0x235d073d54268987L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/aide/ui/build/android/F;->DW()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x875f57737472893L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x117a3e2a801567L

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

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_51

    const-wide v2, -0x117a3e2a801567L

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

.method private j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x249c6ec71f5ea3e7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/aide/ui/build/android/a$b;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xd44993350c4737fL  # 9.42731131987744E-245

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/gj;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    new-instance v0, Lcom/aide/ui/build/android/a$b;

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v1

    invoke-virtual {v1}, Labcd/vj;->FH()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/aide/ui/build/android/a$b;-><init>(Lcom/aide/ui/build/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    return-object v0

    :catchall_3d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_54

    const-wide v2, 0xd44993350c4737fL  # 9.42731131987744E-245

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x6cbf6c0a5f87244fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    const-string v0, "aapt"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v1, :cond_e

    const-wide v1, 0x141715206e1c0e87L  # 6.856561826038927E-212

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v3, :cond_bb

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_bc

    if-lez v7, :cond_b7

    const/16 v7, 0x3a

    const/4 v8, 0x1

    :try_start_2d
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_9c

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9c

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_4b

    const/16 v7, 0x20

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v7
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_98
    .catchall {:try_start_2d .. :try_end_4b} :catchall_bc

    :cond_4b
    if-lez v7, :cond_9c

    :try_start_4d
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_55} :catch_56
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_98
    .catchall {:try_start_4d .. :try_end_55} :catchall_bc

    goto :goto_58

    :catch_56
    move-exception v9

    const/4 v9, 0x1

    :goto_58
    add-int/lit8 v7, v7, 0x1

    :try_start_5a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_62
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "error:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_62

    :cond_7c
    invoke-direct {p0, v0, v9, v7}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v7

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_97} :catch_98
    .catchall {:try_start_5a .. :try_end_97} :catchall_bc

    goto :goto_b7

    :catch_98
    move-exception v7

    :try_start_99
    invoke-static {v7}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_9c
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_aa

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v0, v8, v6}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b7
    .catchall {:try_start_99 .. :try_end_b7} :catchall_bc

    :cond_b7
    :goto_b7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c

    :cond_bb
    return-object v1

    :catchall_bc
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_cd

    const-wide v2, 0x141715206e1c0e87L  # 6.856561826038927E-212

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cd
    goto :goto_cf

    :goto_ce
    throw v0

    :goto_cf
    goto :goto_ce
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/a;->DW()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/a;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/a;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/a;->j6(Ljava/util/Map;)V

    return-void
.end method

.method private j6(Ljava/lang/Throwable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x193bda6a3c46655dL
    .end annotation

    const-wide v0, -0x2a1448268bab229fL  # -7.946445727550974E105

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/aide/ui/build/android/F;->FH()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fcd513f06b8f4ecL
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

    const-wide v0, -0x53d63e1b2175dd58L  # -6.029390180075341E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Lcom/aide/ui/build/android/F;->j6(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic j6()Z
    .registers 1

    sget-boolean v0, Lcom/aide/ui/build/android/a;->j6:Z

    return v0
.end method

.method static synthetic j6(Z)Z
    .registers 1

    sput-boolean p0, Lcom/aide/ui/build/android/a;->j6:Z

    return p0
.end method


# virtual methods
.method public j6(Lcom/aide/ui/build/android/F;)V
    .registers 6

    const-wide v0, 0x1f65040932bf4900L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;ZZ)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x26251637a20712bdL  # 6.230203131708718E-125

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    const-string v0, "aidl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    :cond_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_57

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-direct {p0, v5, v3, v1, v0}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_57
    invoke-direct {p0, p1, v3, p2, v0}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/android/a$c;

    new-instance v3, Lcom/aide/ui/build/android/a$a;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/build/android/a$a;-><init>(Lcom/aide/ui/build/android/a;Ljava/util/List;)V

    invoke-direct {v1, p0, v3}, Lcom/aide/ui/build/android/a$c;-><init>(Lcom/aide/ui/build/android/a;Lcom/aide/ui/build/android/a$a;)V

    iput-object v1, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_70

    return-void

    :catchall_70
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_8a

    const-wide v2, 0x26251637a20712bdL  # 6.230203131708718E-125

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    goto :goto_8c

    :goto_8b
    throw v0

    :goto_8c
    goto :goto_8b
.end method

.method public j6(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x6866011f3f80c659L  # -5.564202758567698E-195

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "aidl"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    if-eqz v4, :cond_1e

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, p1, v3, v2}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_43
    iget-object v2, p0, Lcom/aide/ui/build/android/a;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/aide/ui/build/android/a$c;

    new-instance v5, Lcom/aide/ui/build/android/a$a;

    invoke-direct {v5, p0, v4}, Lcom/aide/ui/build/android/a$a;-><init>(Lcom/aide/ui/build/android/a;Ljava/util/List;)V

    invoke-direct {v3, p0, v5}, Lcom/aide/ui/build/android/a$c;-><init>(Lcom/aide/ui/build/android/a;Lcom/aide/ui/build/android/a$a;)V

    iput-object v3, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    goto :goto_5f

    :goto_5e
    throw v2

    :goto_5f
    goto :goto_5e
.end method
