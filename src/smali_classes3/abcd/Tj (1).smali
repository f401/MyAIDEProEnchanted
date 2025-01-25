.class Labcd/Tj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Xj;
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
.field final FH:Labcd/Xj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xd208e29057b8e3fL

    const-wide v2, 0x35dca3995b5f490L

    const-class v4, Labcd/Tj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Xj;)V
    .registers 2

    iput-object p1, p0, Labcd/Tj;->FH:Labcd/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x165819a74c6a4ebL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Tj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x433df6c7916ee900L  # 8.434111323498752E15

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "Engine service connected to UI"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Tj;->FH:Labcd/Xj;

    invoke-static {p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/ICodeAnalysisEngineService;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Xj;->j6(Labcd/Xj;Lcom/aide/engine/service/ICodeAnalysisEngineService;)Lcom/aide/engine/service/ICodeAnalysisEngineService;

    iget-object v0, p0, Labcd/Tj;->FH:Labcd/Xj;

    invoke-virtual {v0}, Labcd/Xj;->Hw()V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/Tj;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x433df6c7916ee900L  # 8.434111323498752E15

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x10ac55495644f217L
    .end annotation

    const-wide v0, 0x28314b3e1f39ada4L

    :try_start_5
    sget-boolean v2, Labcd/Tj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "Engine service disconnected from UI"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Tj;->FH:Labcd/Xj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/Xj;->j6(Labcd/Xj;Lcom/aide/engine/service/ICodeAnalysisEngineService;)Lcom/aide/engine/service/ICodeAnalysisEngineService;

    iget-object v2, p0, Labcd/Tj;->FH:Labcd/Xj;

    invoke-static {v2}, Labcd/Xj;->j6(Labcd/Xj;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Trying to restart engine service"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Tj;->FH:Labcd/Xj;

    invoke-virtual {v2}, Labcd/Xj;->j6()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Tj;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method
