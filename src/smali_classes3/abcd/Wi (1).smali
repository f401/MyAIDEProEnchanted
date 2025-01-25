.class Labcd/Wi;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Wi;

    const-wide v1, 0x32410edba8b79620L  # 1.2654356806954616E-66

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1787f16243424743L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x21d615d431d6f900L  # -4.0449636834486784E145

    :try_start_6
    sget-boolean v3, Labcd/Wi;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Wi;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6()Lcom/aide/engine/EngineSolution;
    .registers 17
    .annotation runtime Labcd/su;
        method = 0x1c0407dfc03ba29L
    .end annotation

    const-wide v1, -0x4d72293533cb0f01L  # -3.541731866515528E-65

    const/4 v3, 0x0

    :try_start_6
    sget-boolean v0, Labcd/Wi;->j6:Z

    if-eqz v0, :cond_d

    invoke-static {v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v4

    invoke-virtual {v4}, Labcd/vj;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v5

    invoke-virtual {v5}, Labcd/vj;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v7, 0x0

    :goto_3f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Labcd/ProjectFilesUtil;->P8(Ljava/lang/String;)Z

    move-result v9

    or-int v16, v7, v9

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v7

    invoke-virtual {v7, v8}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    move-object v7, v14

    move-object v9, v6

    move/from16 v10, v16

    invoke-static/range {v7 .. v13}, Labcd/Wi;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Ljava/util/Set;)V

    move/from16 v7, v16

    goto :goto_3f

    :cond_69
    if-eqz v7, :cond_72

    invoke-static {v5}, Labcd/Wi;->j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    invoke-static {v0, v4}, Labcd/Wi;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/engine/EngineSolution;

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/engine/service/x;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v14, v3, v4, v5}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V
    :try_end_8a
    .catchall {:try_start_6 .. :try_end_8a} :catchall_8b

    return-object v0

    :catchall_8b
    move-exception v0

    sget-boolean v4, Labcd/Wi;->DW:Z

    if-eqz v4, :cond_93

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v0

    :goto_95
    goto :goto_94
.end method

.method private static j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 26
    .annotation runtime Labcd/su;
        method = -0x338cc13b8b9df65fL
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, 0x202275dba5358363L  # 6.884191237109118E-154

    :try_start_8
    sget-boolean v0, Labcd/Wi;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {v12, v13, v14, v15}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    const-string v3, "JavaScript"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Lcom/aide/engine/EngineSolutionProject;

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, "1.5"

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object v5, v0

    move/from16 v12, v16

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v16, v24

    invoke-direct/range {v1 .. v19}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_69

    return-object v20

    :catchall_69
    move-exception v0

    sget-boolean v1, Labcd/Wi;->DW:Z

    if-eqz v1, :cond_79

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, 0x202275dba5358363L  # 6.884191237109118E-154

    invoke-static {v0, v3, v4, v2, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 25
    .annotation runtime Labcd/su;
        method = 0x2b25b49a7e6770a0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Wi;->j6:Z

    if-eqz v0, :cond_12

    const-wide v0, -0x22aa8b39a7ba3ea0L  # -4.088178091170854E141

    const/4 v2, 0x0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-static {v0, v1, v2, v15, v14}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_12
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    const-string v5, "Java Binary"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    const-string v5, "Java Binary"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.jar"

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aide/engine/EngineSolutionProject;

    const-string v4, "android.jar"

    const-string v6, "android.jar"

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v22, ""

    move-object v3, v1

    move-object/from16 v5, p0

    move-object v7, v0

    move v14, v2

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v22

    invoke-direct/range {v3 .. v21}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_7e
    .catchall {:try_start_0 .. :try_end_7e} :catchall_7f

    return-object v1

    :catchall_7f
    move-exception v0

    sget-boolean v1, Labcd/Wi;->DW:Z

    if-eqz v1, :cond_92

    const-wide v4, -0x22aa8b39a7ba3ea0L  # -4.088178091170854E141

    const/4 v6, 0x0

    move-object v3, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    throw v0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;Labcd/EclipseJavaProjectConfig$Node;Ljava/util/List;Ljava/util/Map;)Lcom/aide/engine/EngineSolutionProject;
    .registers 34
    .annotation runtime Labcd/su;
        method = 0x14a758ca0775bbc4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Labcd/EclipseJavaProjectConfig$Node;",
            "Ljava/util/List<",
            "Labcd/EclipseJavaProjectConfig$Node;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/aide/engine/EngineSolutionProject;"
        }
    .end annotation

    move-object/from16 v9, p0

    :try_start_2
    sget-boolean v0, Labcd/Wi;->j6:Z

    if-eqz v0, :cond_19

    const-wide v1, -0x2aaf1cedbf78eda0L  # -9.455640827899931E102

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_e7

    move-object/from16 v7, p2

    :try_start_20
    invoke-virtual {v7, v9}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Lcom/aide/engine/EngineSolution$File;

    const-string v2, "Java Binary"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v13

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_e1

    const-string v2, "android.jar"

    if-eqz v1, :cond_62

    :try_start_45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v1}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual {v1}, Labcd/EclipseJavaProjectConfig$Node;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-virtual {v1}, Labcd/EclipseJavaProjectConfig$Node;->DW()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_e1

    goto :goto_3d

    :cond_62
    move-object/from16 v8, p4

    :try_start_64
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_dd

    move-object/from16 v6, p1

    :try_start_7f
    invoke-static {v1, v6}, Labcd/gj;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_87
    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v3}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-virtual {v3}, Labcd/EclipseJavaProjectConfig$Node;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a0
    invoke-virtual {v3}, Labcd/EclipseJavaProjectConfig$Node;->DW()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_aa
    move-object/from16 v6, p1

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/engine/EngineSolutionProject;

    invoke-virtual/range {p2 .. p2}, Labcd/EclipseJavaProjectConfig$Node;->j6()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, ""

    move-object v10, v0

    move-object v12, v13

    invoke-direct/range {v10 .. v28}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_da
    .catchall {:try_start_7f .. :try_end_da} :catchall_db

    return-object v0

    :catchall_db
    move-exception v0

    goto :goto_ed

    :catchall_dd
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_ed

    :catchall_e1
    move-exception v0

    move-object/from16 v6, p1

    :goto_e4
    move-object/from16 v8, p4

    goto :goto_ed

    :catchall_e7
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    goto :goto_e4

    :goto_ed
    sget-boolean v1, Labcd/Wi;->DW:Z

    if-eqz v1, :cond_105

    const-wide v2, -0x2aaf1cedbf78eda0L  # -9.455640827899931E102

    const/4 v4, 0x0

    move-object v1, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_105
    goto :goto_107

    :goto_106
    throw v0

    :goto_107
    goto :goto_106
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/util/Map;)Lcom/aide/engine/EngineSolutionProject;
    .registers 33
    .annotation runtime Labcd/su;
        method = -0x48d9b88c1f552860L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Labcd/EclipseJavaProjectConfig$Node;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/aide/engine/EngineSolutionProject;"
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    sget-boolean v4, Labcd/Wi;->j6:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_37

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v8, 0x2

    aput-object v7, v4, v8

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v14, p3

    invoke-direct {v7, v14}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v8, 0x3

    aput-object v7, v4, v8

    const/4 v7, 0x4

    aput-object p4, v4, v7

    const/4 v7, 0x5

    aput-object v2, v4, v7

    const-wide v7, 0xf2f89a2519ea878L

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_39

    :cond_37
    move/from16 v14, p3

    :goto_39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_42
    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v8}, Labcd/EclipseJavaProjectConfig$Node;->isSrcEntry()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-virtual {v8, v3}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/aide/engine/EngineSolution$File;

    const-string v17, "Java"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v9

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v20}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/aide/engine/EngineSolution$File;

    const-string v17, "AIDL"

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_77
    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p1}, Labcd/ProjectFilesUtil;->getAndroidManifestXmlFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "XML"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v26}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p1}, Labcd/ProjectFilesUtil;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a1

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    const-string v10, "XML"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a1
    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b9

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "C++"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b9
    invoke-static/range {p0 .. p1}, Labcd/ProjectFilesUtil;->getAndroidResDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_d0

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    const-string v17, "XML"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->getResDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "XML"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->containsNDKFiles(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_100

    invoke-static {}, Lcom/aide/ui/build/android/Q;->VH()Z

    move-result v7

    if-eqz v7, :cond_100

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->getJniDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "C++"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_100
    if-eqz v1, :cond_138

    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->aM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "Css"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->aM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "HTML"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->aM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "JavaScript"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_144
    :goto_144
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_169

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v8}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v9

    if-eqz v9, :cond_15d

    invoke-virtual {v8}, Labcd/EclipseJavaProjectConfig$Node;->j6()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15d
    invoke-virtual {v8}, Labcd/EclipseJavaProjectConfig$Node;->DW()Z

    move-result v8

    if-eqz v8, :cond_144

    const-string v8, "android.jar"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_144

    :cond_169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v2}, Labcd/Ti;->DW(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v7}, Labcd/Wi;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_179
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_189

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_179

    :cond_189
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v6}, Labcd/gj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5}, Labcd/gj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    new-instance v19, Lcom/aide/engine/EngineSolutionProject;

    move-object/from16 v0, v19

    invoke-static/range {p0 .. p0}, Labcd/ProjectFilesUtil;->gW(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v6, v2

    const-string v7, ""

    const-string v10, "1.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v15, ""

    move-object v5, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move/from16 v14, p3

    invoke-direct/range {v0 .. v18}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Ljava/util/Set;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x252501f5df802950L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/EngineSolutionProject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Labcd/Wi;->j6:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const-wide v1, -0x31530c4ff5fa4100L  # -9.990935191829103E70

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2f
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-interface {p6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Labcd/gj;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Labcd/Wi;->j6(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/util/Map;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object p4

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4d
    :goto_4d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v1}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/EngineSolutionProject;

    iget-object v3, v3, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/EclipseJavaProjectConfig$Node;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_4d

    :cond_7c
    invoke-static {p1, p2, v1, v0, p5}, Labcd/Wi;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/EclipseJavaProjectConfig$Node;Ljava/util/List;Ljava/util/Map;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_84
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Labcd/Wi;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Ljava/util/Set;)V

    goto :goto_8e

    :cond_a5
    return-void
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x155bf3b2956a27e8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Wi;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x77eb40c7637c4e0L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-static {v1, p1}, Labcd/gj;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v2}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Labcd/EclipseJavaProjectConfig$Node;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_4c

    goto :goto_31

    :cond_4b
    return-void

    :catchall_4c
    move-exception v0

    sget-boolean v1, Labcd/Wi;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0x77eb40c7637c4e0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v0

    :goto_60
    goto :goto_5f
.end method
