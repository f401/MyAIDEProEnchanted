.class Lcom/aide/engine/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/CodeAnalysisEngineService;-><init>()V
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
.field final FH:Lcom/aide/engine/service/CodeAnalysisEngineService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, -0x208811e4d9dd210L  # -6.14642852381406E298

    const-class v4, Lcom/aide/engine/service/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/d;->FH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aj()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x517d20be8eb3f5e0L
    .end annotation

    const-wide v0, -0x95215d306ccdc1dL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Engine process killed after shutdown"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/d;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(Ljava/lang/Throwable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2f9b6ef73e46261cL
    .end annotation

    const-wide v0, 0x48a251e5c1dfe12fL  # 7.979447091787136E41

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/aide/engine/service/d;->FH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/q;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_29

    if-eqz v2, :cond_28

    :try_start_1a
    iget-object v2, p0, Lcom/aide/engine/service/d;->FH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/q;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/engine/service/q;->jO()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24
    .catchall {:try_start_1a .. :try_end_23} :catchall_29

    goto :goto_28

    :catch_24
    move-exception v2

    :try_start_25
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/d;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public sy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x30e5093301a293e4L
    .end annotation

    const-wide v0, -0x1dcc98a7506e2ec5L  # -1.1173831685805322E165

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Engine process killed after OOM"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/engine/service/d;->FH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/q;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_2f

    if-eqz v2, :cond_27

    :try_start_19
    iget-object v2, p0, Lcom/aide/engine/service/d;->FH:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/q;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/engine/service/q;->sy()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23
    .catchall {:try_start_19 .. :try_end_22} :catchall_2f

    goto :goto_27

    :catch_23
    move-exception v2

    :try_start_24
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/d;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method
