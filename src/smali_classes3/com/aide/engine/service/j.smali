.class Lcom/aide/engine/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/J;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/l;->j6(Lcom/aide/engine/service/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/engine/service/v;

.field final Hw:Lcom/aide/engine/service/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, 0x13004d7d43124861L  # 3.694642949452411E-217

    const-class v4, Lcom/aide/engine/service/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/v;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/engine/service/j;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/j;->FH:Lcom/aide/engine/service/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3c1cfc798d99b4f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xacb03ec329cb0f0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/aide/engine/service/j;->FH:Lcom/aide/engine/service/v;

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/v;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, 0xacb03ec329cb0f0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method private DW(Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x309e7a982058150L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xdde923cbf7861d8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/aide/engine/service/j;->FH:Lcom/aide/engine/service/v;

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/v;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0xdde923cbf7861d8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method private EQ(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xc015f291a80f0a9L
    .end annotation

    const-wide v0, 0x146cce7489a4fe65L  # 2.73818645211274E-210

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/j;->FH:Lcom/aide/engine/service/v;

    invoke-interface {v2, p1}, Lcom/aide/engine/service/v;->EQ(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v2

    :try_start_13
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private Ws(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x57b515906c35399cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x101e3b00fa5639e4L  # 4.867976067582906E-231

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/j;->FH:Lcom/aide/engine/service/v;

    invoke-interface {v2, p1}, Lcom/aide/engine/service/v;->FH(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v2

    :try_start_13
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x455f453b35bed907L
    .end annotation

    const-wide v0, 0x19d22bc021d8e12bL  # 2.672754759105823E-184

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public DW(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x495d40948208a1c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x1df07d50e4ba9d80L  # -2.268207248014905E164

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public DW(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x58a577529509c401L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x5849069897ef8f5dL  # -2.27762773136474E-117

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_21

    const-wide v2, -0x5849069897ef8f5dL  # -2.27762773136474E-117

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v0
.end method

.method public EQ(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x65a810dbcbce78efL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x39e7e92e3b41799dL  # -4.771345412882772E29

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf9f1065c538bd00L
    .end annotation

    const-wide v0, -0x31eb2f4fe400e08L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x52b5c6b40048791dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0xee2c676134c8f3dL  # 5.766587676570975E-237

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1b7b7c2f16bc7368L
    .end annotation

    const-wide v0, 0x26d45e390b9f5cc0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Hw(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x7e8512468f504ecL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x2f3500c646832270L  # -1.6005304765599166E81

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public J0(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2c72ea9519db3f30L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x1f7b7ef71f315d50L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public J8(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1a28406b1b488390L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x2f060183a2eaf2f8L  # -1.2328589008646261E82

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5b50e5b50579df0L
    .end annotation

    const-wide v0, -0xd5814ab9cecad70L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public VH(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x312f39240deb6127L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x2824505991ab5b59L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xde8a3599d6299d3L
    .end annotation

    const-wide v0, 0x77291fd78e30919L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Zo(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x91751b4aa8e5899L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x25e51402629812bbL  # 3.892284269105206E-126

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public gn(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2a3cca0847e01250L
    .end annotation

    const-wide v0, 0x228c98a760a312a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public gn(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x54bc6ca6a71e753L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x2cb338c0269fde67L  # -1.8759190120121003E93

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x39f63276e26b7b8L
    .end annotation

    const-wide v0, 0x7320bea3dfae00L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "This feature is not available here"

    invoke-direct {p0, v2}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/engine/E;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf77e0e203d6e769L
    .end annotation

    const-wide v0, 0x121de84f007217a5L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2445569e11adab40L
    .end annotation

    const-wide v0, 0x3778fab569f121f8L  # 1.7921790815920867E-41

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x36a7e134307f4ca1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xe2d869d59ceb787L  # -1.9247808692479422E240

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0xe2d869d59ceb787L  # -1.9247808692479422E240

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;III)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3052237838287a0L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p3, 0x2

    aput-object v1, v0, p3

    const/4 p3, 0x3

    aput-object p4, v0, p3

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p4, 0x4

    aput-object p3, v0, p4

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 p4, 0x5

    aput-object p3, v0, p4

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 p4, 0x6

    aput-object p3, v0, p4

    const-wide p3, 0x305f6f04385754e8L  # 1.0858654801167454E-75

    invoke-static {p3, p4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_38
    invoke-direct {p0, p1, p2}, Lcom/aide/engine/service/j;->DW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x252d103615abf2b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x28149974fb35c00L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/engine/service/j;->DW(Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_21

    const-wide v2, 0x28149974fb35c00L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/Set;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x15f1eb060c41dd44L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Labcd/ha;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xaaf4f424bd74684L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_34

    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ha;

    invoke-interface {v2}, Labcd/ha;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    iget-object v1, p0, Lcom/aide/engine/service/j;->FH:Lcom/aide/engine/service/v;

    invoke-interface {v1, p1, v0}, Lcom/aide/engine/service/v;->DW(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2e} :catch_2f
    .catchall {:try_start_c .. :try_end_2e} :catchall_34

    goto :goto_33

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    :goto_33
    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xaaf4f424bd74684L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x402aad5010026b80L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0xb46d57189a02be8L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x37ffd61a087df9f1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x1efab9eb6b6d7e89L  # -2.3366399957570453E159

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v1, :cond_21

    const-wide v2, -0x1efab9eb6b6d7e89L  # -2.3366399957570453E159

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v0
.end method

.method public tp(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x54d29d0663a3bfb9L
    .end annotation

    const-wide v0, -0x2310de4fd54de085L  # -4.6341423752479746E139

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public tp(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x26d578eb9490c320L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0xfefc186f3df0200L  # -6.304789377435032E231

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public u7(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x16bf4533e1cacee0L
    .end annotation

    const-wide v0, 0x372ef43c8c31ffa8L  # 6.94013778644374E-43

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public u7(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf088988e7a32310L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x1f08062d0b9de918L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x89b1059efbc0037L
    .end annotation

    const-wide v0, -0x1c0572578bf7f9f5L  # -4.1046569513832613E173

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->EQ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public v5(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x174b6cca19bac3adL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x23b3f981d6f91d6fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public we(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x321e56538b1eb808L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x3462e73faea30308L  # 2.4091775165990745E-56

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/engine/service/j;->Ws(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/j;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method
