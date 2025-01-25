.class Labcd/tj;
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

    const-class v0, Labcd/tj;

    const-wide v1, -0x1d1208d1fb982ec8L  # -3.5340263852999128E168

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2d3bb81ab726d93L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4566911da0efb04bL  # -2.0544728214178152E-26

    :try_start_6
    sget-boolean v3, Labcd/tj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/tj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 26
    .annotation runtime Labcd/su;
        method = -0x6d419d2f98dfc82dL
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, -0x2667b613e0746e60L  # -4.014057311654119E123

    :try_start_8
    sget-boolean v0, Labcd/tj;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {v12, v13, v14, v15}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    const-string v3, "Css"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    const-string v3, "HTML"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Lcom/aide/engine/EngineSolutionProject;

    const/4 v7, 0x1

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
    :try_end_86
    .catchall {:try_start_8 .. :try_end_86} :catchall_87

    return-object v20

    :catchall_87
    move-exception v0

    sget-boolean v1, Labcd/tj;->DW:Z

    if-eqz v1, :cond_97

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, -0x2667b613e0746e60L  # -4.014057311654119E123

    invoke-static {v0, v3, v4, v2, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_97
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolution;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x30824ad8e36569ccL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/tj;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x38dfee0d509e999L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Labcd/tj;->DW(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Labcd/tj;->j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/aide/engine/EngineSolution;

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/engine/service/x;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-object v2

    :catchall_32
    move-exception v0

    sget-boolean v1, Labcd/tj;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x38dfee0d509e999L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method private static j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 26
    .annotation runtime Labcd/su;
        method = 0x3df7fbbea68ce301L
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, -0x1038681dc9a1e0a0L  # -2.8616420378807604E230

    :try_start_8
    sget-boolean v0, Labcd/tj;->j6:Z

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

    sget-boolean v1, Labcd/tj;->DW:Z

    if-eqz v1, :cond_79

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, -0x1038681dc9a1e0a0L  # -2.8616420378807604E230

    invoke-static {v0, v3, v4, v2, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method
