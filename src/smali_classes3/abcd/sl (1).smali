.class Labcd/sl;
.super Lcom/aide/engine/service/t$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ul;->DW()V
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
.field final v5:Labcd/ul;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x5917a8cc0b184c5L

    const-wide v2, 0xa31999e2a680ae3L

    const-class v4, Labcd/sl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ul;)V
    .registers 2

    iput-object p1, p0, Labcd/sl;->v5:Labcd/ul;

    invoke-direct {p0}, Lcom/aide/engine/service/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;JII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x39cb61ff5862a54L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/sl;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x496acfd6973bb13bL  # -9.278405196950204E-46

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    new-instance v0, Labcd/rl;

    invoke-direct {v0, p0, p1}, Labcd/rl;-><init>(Labcd/sl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/sl;->Hw:Z

    if-eqz v1, :cond_45

    const-wide v2, -0x496acfd6973bb13bL  # -9.278405196950204E-46

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public j6(Ljava/lang/String;JIILcom/aide/engine/SourceEntity;)V
    .registers 26
    .annotation runtime Labcd/su;
        method = -0x39a00e3370f4b9dL
    .end annotation

    move-wide/from16 v1, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :try_start_6
    sget-boolean v0, Labcd/sl;->FH:Z

    if-eqz v0, :cond_2b

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v11, -0x964fc43da83e530L

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, p6

    invoke-static/range {v11 .. v18}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    new-instance v0, Labcd/ql;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/ql;-><init>(Labcd/sl;Lcom/aide/engine/SourceEntity;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v3, Labcd/sl;->Hw:Z

    if-eqz v3, :cond_63

    const-wide v3, -0x964fc43da83e530L

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-wide v2, v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method
