.class public Lcom/aide/common/TextToSpeechHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/TextToSpeechHelper$a;
    }
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
.field private FH:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = 0x2fcf7fa5deeafc33L
    .end annotation
.end field

.field private Hw:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x179dde237f9ce66dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/aide/common/TextToSpeechHelper$a;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x3633ff263a26300dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/TextToSpeechHelper;

    const-wide v1, -0x59a0f32e15d60fcdL  # -7.339128490556365E-124

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "/"

    const-string v3, "*"

    const-string v4, "minus"

    const-string v5, "-"

    const-string v6, "plus"

    const-string v7, "+"

    const-string v8, "plus plus"

    const-string v9, "++"

    const-string v10, "minus minus"

    const-string v11, "--"

    const-string v12, "!="

    const-string v13, "=="

    const-string v14, "> ="

    const-string v15, "< ="

    move-object/from16 v16, v0

    const-string v0, ">"

    move-object/from16 v17, v3

    const-string v3, "<"

    move-object/from16 v18, v4

    const-string v4, ";"

    move-object/from16 v19, v5

    const-string v5, "println"

    move-object/from16 v20, v6

    const-string v6, "de"

    move-object/from16 v21, v6

    const-string v6, "en"

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const-wide v7, -0x3a72594e5fcbd755L  # -1.1470732231224996E27

    :try_start_41
    sget-boolean v24, Lcom/aide/common/TextToSpeechHelper;->j6:Z

    if-eqz v24, :cond_4c

    move-object/from16 v24, v9

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :cond_4c
    move-object/from16 v24, v9

    :goto_4e
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->FH:Landroid/content/Context;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lcom/aide/common/TextToSpeechHelper;->Hw:Ljava/util/Map;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "printline"

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "semicolon"

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "less than"

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "greater than"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "less than or equal"

    invoke-interface {v7, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "greater than or equal"

    invoke-interface {v7, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "equal equal"

    invoke-interface {v7, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "not equal"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object/from16 v24, v8

    move-object/from16 v8, v20

    move-object/from16 v2, v22

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object/from16 v22, v2

    move-object/from16 v20, v8

    move-object/from16 v8, v18

    move-object/from16 v2, v19

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object/from16 v19, v2

    const-string v2, "star"

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v6, "slash"

    move-object/from16 v7, v16

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v7

    move-object/from16 v7, v21

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v6, "printlein"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "Strichpunkt"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "kleiner als"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "grösser als"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "kleiner gleich"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "grösser gleich"

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "gleich gleich"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "ungleich"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v2, v24

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v3, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "Stern"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "Strich"

    move-object/from16 v3, v16

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f9
    .catchall {:try_start_41 .. :try_end_1f9} :catchall_1fa

    return-void

    :catchall_1fa
    move-exception v0

    sget-boolean v2, Lcom/aide/common/TextToSpeechHelper;->DW:Z

    if-eqz v2, :cond_20a

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-wide v4, -0x3a72594e5fcbd755L  # -1.1470732231224996E27

    invoke-static {v0, v4, v5, v3, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20a
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/TextToSpeechHelper;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/TextToSpeechHelper;->v5:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/common/TextToSpeechHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/TextToSpeechHelper;->FH:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public j6()V
    .registers 5

    const-wide v0, -0x19699e47e2cbed94L  # -1.5216357764796302E186

    :try_start_5
    sget-boolean v2, Lcom/aide/common/TextToSpeechHelper;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/TextToSpeechHelper;->Hw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/common/TextToSpeechHelper$a;

    invoke-virtual {v3}, Lcom/aide/common/TextToSpeechHelper$a;->j6()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_27

    goto :goto_16

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/common/TextToSpeechHelper;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/common/TextToSpeechHelper;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x137356fff5e1abc0L  # -7.718723584360499E214

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper;->Hw:Ljava/util/Map;

    new-instance v1, Lcom/aide/common/TextToSpeechHelper$a;

    invoke-direct {v1, p0, p1}, Lcom/aide/common/TextToSpeechHelper$a;-><init>(Lcom/aide/common/TextToSpeechHelper;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v0, p0, Lcom/aide/common/TextToSpeechHelper;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/TextToSpeechHelper$a;

    invoke-virtual {v0, p2}, Lcom/aide/common/TextToSpeechHelper$a;->j6(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/common/TextToSpeechHelper;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x137356fff5e1abc0L  # -7.718723584360499E214

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method
