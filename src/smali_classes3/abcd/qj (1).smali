.class Labcd/qj;
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

    const-class v0, Labcd/qj;

    const-wide v1, 0x2dee41b06512bc90L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x26bcb22f1cec3343L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x4e3751e576abe5a1L  # -7.151839889163821E-69

    :try_start_6
    sget-boolean v3, Labcd/qj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/qj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 25
    .annotation runtime Labcd/su;
        method = -0x564acbc74f20ab1L
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, 0x34468556c858d020L  # 7.17555852902849E-57

    :try_start_8
    sget-boolean v0, Labcd/qj;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {v12, v13, v14, v15}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/qj;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Css"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/qj;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "HTML"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    invoke-static/range {p0 .. p0}, Labcd/qj;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "JavaScript"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/engine/EngineSolutionProject;

    const/4 v7, 0x1

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, "1.5"

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, ""

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v12, v16

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v16, v23

    invoke-direct/range {v1 .. v19}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_8f

    return-object v0

    :catchall_8f
    move-exception v0

    sget-boolean v1, Labcd/qj;->DW:Z

    if-eqz v1, :cond_9f

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, 0x34468556c858d020L  # 7.17555852902849E-57

    invoke-static {v0, v3, v4, v2, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_9f
    throw v0
.end method

.method private static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x12e2bd4e16e45399L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1264fa000622a5c0L

    :try_start_6
    sget-boolean v3, Labcd/qj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/www"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/qj;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolution;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2fb74d131e8a79c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/qj;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0xe7d8a220592e6dL

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Labcd/qj;->DW(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Labcd/qj;->j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

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

    sget-boolean v1, Labcd/qj;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0xe7d8a220592e6dL

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
        method = 0x3fa96f44f786c7fdL
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, 0x3a0c6990aaa1b738L  # 4.4826805873718806E-29

    :try_start_8
    sget-boolean v0, Labcd/qj;->j6:Z

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

    sget-boolean v1, Labcd/qj;->DW:Z

    if-eqz v1, :cond_79

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, 0x3a0c6990aaa1b738L  # 4.4826805873718806E-29

    invoke-static {v0, v3, v4, v2, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method
