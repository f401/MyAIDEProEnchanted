.class Labcd/ml;
.super Lcom/aide/engine/service/v$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ol;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final v5:Labcd/ol;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1374667f15b9aa4bL  # -7.433101803211034E214

    const-wide v2, -0x199495dde5e47db8L  # -2.3297482418382594E185

    const-class v4, Labcd/ml;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ol;)V
    .registers 2

    iput-object p1, p0, Labcd/ml;->v5:Labcd/ol;

    invoke-direct {p0}, Lcom/aide/engine/service/v$a;-><init>()V

    return-void
.end method

.method static synthetic j6(Labcd/ml;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Labcd/ml;->j6(Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x48b3f87dbf6436fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move/from16 v9, p3

    :try_start_2
    sget-boolean v0, Labcd/ml;->FH:Z

    if-eqz v0, :cond_1b

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x57e7440454323835L

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Hw()V

    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_65

    move-object/from16 v12, p4

    :try_start_2b
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Which \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to import ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v11

    new-instance v13, Labcd/gl;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p5

    move/from16 v5, p3

    move-object/from16 v6, p2

    move-object v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Labcd/gl;-><init>(Labcd/ml;Ljava/util/Hashtable;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v11, v10, v0, v13}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v0

    goto :goto_68

    :catchall_65
    move-exception v0

    move-object/from16 v12, p4

    :goto_68
    sget-boolean v1, Labcd/ml;->Hw:Z

    if-eqz v1, :cond_82

    const-wide v6, -0x57e7440454323835L

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, v0

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-static/range {v5 .. v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2174bc05ea8f05b0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ml;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x708594011a35ec88L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Labcd/ll;

    invoke-direct {v0, p0, p1, p2}, Labcd/ll;-><init>(Labcd/ml;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/ml;->Hw:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x708594011a35ec88L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method public EQ(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x80e7cd36f014808L
    .end annotation

    const-wide v0, 0x5549cc8a79e71e0L

    :try_start_5
    sget-boolean v2, Labcd/ml;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/jl;

    invoke-direct {v2, p0, p1}, Labcd/jl;-><init>(Labcd/ml;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ml;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x385aefbad7d24ef5L
    .end annotation

    const-wide v0, 0x3313492f3db72369L  # 1.1720342557425587E-62

    :try_start_5
    sget-boolean v2, Labcd/ml;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/kl;

    invoke-direct {v2, p0, p1}, Labcd/kl;-><init>(Labcd/ml;Ljava/util/List;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ml;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4951c47500a17901L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ml;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x5bd2a0a7cfa9e771L  # -2.020560987100103E-134

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Labcd/il;

    invoke-direct {v0, p0, p1, p2}, Labcd/il;-><init>(Labcd/ml;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/ml;->Hw:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x5bd2a0a7cfa9e771L  # -2.020560987100103E-134

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x242be9d063fc2235L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ml;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x622ceeb925c8fdebL  # -5.173635789365948E-165

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Labcd/fl;

    invoke-direct {v0, p0, p2, p1}, Labcd/fl;-><init>(Labcd/ml;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/ml;->Hw:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x622ceeb925c8fdebL  # -5.173635789365948E-165

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method
