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
    .registers 4

    const-wide v2, -0x56c3d9182cea280L

    const-class v0, Lcom/aide/ui/build/android/a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x124f16ae02071640L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x124f16ae02071640L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/android/a;->Hw:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3110f1155c590e7fL
    .end annotation

    const-wide v2, -0x28e9ea5304522465L    # -3.319474541655122E111

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x28e9ea5304522465L    # -3.319474541655122E111

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    invoke-interface {v0}, Lcom/aide/ui/build/android/F;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, 0x235d073d54268987L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x235d073d54268987L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    invoke-interface {v0}, Lcom/aide/ui/build/android/F;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x875f57737472893L
    .end annotation

    const-wide v8, -0x117a3e2a801567L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x117a3e2a801567L

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

    sget-boolean v0, Lcom/aide/ui/build/android/a;->FH:Z

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

.method private j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x249c6ec71f5ea3e7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/aide/ui/build/android/a$b;"
        }
    .end annotation

    const-wide v8, 0xd44993350c4737fL    # 9.42731131987744E-245

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0xd44993350c4737fL    # 9.42731131987744E-245

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/gj;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    new-instance v0, Lcom/aide/ui/build/android/a$b;

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v1

    invoke-virtual {v1}, Labcd/vj;->FH()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/aide/ui/build/android/a$b;-><init>(Lcom/aide/ui/build/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    const-wide v2, 0x141715206e1c0e87L    # 6.856561826038927E-212

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v1, :cond_0

    const-wide v6, 0x141715206e1c0e87L    # 6.856561826038927E-212

    invoke-static {v6, v7, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_7

    aget-object v0, v8, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x3a

    :try_start_1
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x3a

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_8

    const/16 v0, 0x20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->indexOf(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    move v5, v0

    :goto_1
    if-lez v5, :cond_4

    :try_start_2
    invoke-virtual {v10, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v1, v0

    :goto_2
    add-int/lit8 v0, v5, 0x1

    :try_start_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v12, "error:"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    move v1, v4

    goto :goto_2

    :cond_1
    const-string v5, "aapt"

    invoke-direct {p0, v5, v1, v0}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v1

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "aapt"

    const/4 v5, 0x1

    invoke-direct {p0, v1, v5, v10}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;ILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v0, :cond_6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    return-object v7

    :cond_8
    move v5, v0

    goto/16 :goto_1
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

    const-wide v2, -0x2a1448268bab229fL    # -7.946445727550974E105

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a1448268bab229fL    # -7.946445727550974E105

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    invoke-interface {v0}, Lcom/aide/ui/build/android/F;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fcd513f06b8f4ecL
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

    const-wide v2, -0x53d63e1b2175dd58L    # -6.029390180075341E-96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x53d63e1b2175dd58L    # -6.029390180075341E-96

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/android/F;->j6(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, 0x1f65040932bf4900L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f65040932bf4900L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/android/a;->Zo:Lcom/aide/ui/build/android/F;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;ZZ)V
    .registers 14

    const-wide v8, 0x26251637a20712bdL    # 6.230203131708718E-125

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x26251637a20712bdL    # 6.230203131708718E-125

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "aidl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/android/a$c;

    new-instance v3, Lcom/aide/ui/build/android/a$a;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/build/android/a$a;-><init>(Lcom/aide/ui/build/android/a;Ljava/util/List;)V

    invoke-direct {v1, p0, v3}, Lcom/aide/ui/build/android/a$c;-><init>(Lcom/aide/ui/build/android/a;Lcom/aide/ui/build/android/a$a;)V

    iput-object v1, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v6, -0x6866011f3f80c659L    # -5.564202758567698E-195

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6866011f3f80c659L    # -5.564202758567698E-195

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "aidl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/vj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/aide/ui/build/android/a$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/android/a;->Hw:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/android/a$c;

    new-instance v3, Lcom/aide/ui/build/android/a$a;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/build/android/a$a;-><init>(Lcom/aide/ui/build/android/a;Ljava/util/List;)V

    invoke-direct {v1, p0, v3}, Lcom/aide/ui/build/android/a$c;-><init>(Lcom/aide/ui/build/android/a;Lcom/aide/ui/build/android/a$a;)V

    iput-object v1, p0, Lcom/aide/ui/build/android/a;->v5:Lcom/aide/ui/build/android/a$c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method
