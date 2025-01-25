.class public Labcd/oj;
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

    const-class v0, Labcd/oj;

    const-wide v1, 0x4cc40eb0c50fdb00L  # 6.446194938340376E61

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1a85604fb83f2791L  # 6.43937107580833E-181

    :try_start_6
    sget-boolean v3, Labcd/oj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/oj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 26
    .annotation runtime Labcd/su;
        method = -0x25db3de5594b1bdL
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, -0x18d46ac332041fa0L  # -9.601258296697266E188

    :try_start_8
    sget-boolean v0, Labcd/oj;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {v12, v13, v14, v15}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/jni"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    const-string v4, "C++"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Lcom/aide/engine/EngineSolutionProject;

    const/4 v7, 0x1

    const-string v9, ""

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

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move/from16 v12, v16

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v16, v24

    invoke-direct/range {v1 .. v19}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_82
    .catchall {:try_start_8 .. :try_end_82} :catchall_83

    return-object v20

    :catchall_83
    move-exception v0

    sget-boolean v1, Labcd/oj;->DW:Z

    if-eqz v1, :cond_93

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, -0x18d46ac332041fa0L  # -9.601258296697266E188

    invoke-static {v0, v3, v4, v2, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_93
    throw v0
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolution;
    .registers 8

    const-wide v0, -0xd25f9b74078e725L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/oj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Labcd/oj;->DW(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/aide/engine/EngineSolution;

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/aide/engine/service/x;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v3, v2, v5, v6}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-object v4

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/oj;->DW:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v3
.end method
