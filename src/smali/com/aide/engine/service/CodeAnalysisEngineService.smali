.class public Lcom/aide/engine/service/CodeAnalysisEngineService;
.super Landroid/app/Service;


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


# instance fields
.field private FH:Lcom/aide/engine/c;
    .annotation runtime Labcd/ru;
        field = 0x14ad76456dd91667L
    .end annotation
.end field

.field private Hw:Lcom/aide/engine/service/t;
    .annotation runtime Labcd/ru;
        field = -0x1f9b3b3873bf440fL
    .end annotation
.end field

.field private VH:Lcom/aide/engine/service/q;
    .annotation runtime Labcd/ru;
        field = -0x22197fee01f72f0bL
    .end annotation
.end field

.field private Zo:Lcom/aide/engine/service/o;
    .annotation runtime Labcd/ru;
        field = 0x11267aa1b7c5738L
    .end annotation
.end field

.field private final gn:Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;
    .annotation runtime Labcd/ru;
        field = -0x26ba846adb20dfefL
    .end annotation
.end field

.field private v5:Lcom/aide/engine/service/r;
    .annotation runtime Labcd/ru;
        field = 0x1e7d2fab91ec78b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1bd72709e548b1bdL

    const-class v0, Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xa4b5e9b45916375L    # -9.912537588380035E258

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa4b5e9b45916375L    # -9.912537588380035E258

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/aide/engine/service/l;

    invoke-direct {v0, p0}, Lcom/aide/engine/service/l;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    iput-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->gn:Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;

    new-instance v0, Lcom/aide/engine/c;

    new-instance v1, Lcom/aide/engine/service/c;

    invoke-direct {v1, p0}, Lcom/aide/engine/service/c;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-direct {v0, v1}, Lcom/aide/engine/c;-><init>(Lcom/aide/engine/j;)V

    iput-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH:Lcom/aide/engine/c;

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH:Lcom/aide/engine/c;

    new-instance v1, Lcom/aide/engine/service/d;

    invoke-direct {v1, p0}, Lcom/aide/engine/service/d;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/d;)V

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH:Lcom/aide/engine/c;

    new-instance v1, Lcom/aide/engine/service/e;

    invoke-direct {v1, p0}, Lcom/aide/engine/service/e;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/M;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;
    .registers 2

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5:Lcom/aide/engine/service/r;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/t;
    .registers 2

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw:Lcom/aide/engine/service/t;

    return-object v0
.end method

.method static synthetic Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;
    .registers 2

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->Zo:Lcom/aide/engine/service/o;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/o;)Lcom/aide/engine/service/o;
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->Zo:Lcom/aide/engine/service/o;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/q;
    .registers 2

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->VH:Lcom/aide/engine/service/q;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/q;)Lcom/aide/engine/service/q;
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->VH:Lcom/aide/engine/service/q;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/r;)Lcom/aide/engine/service/r;
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5:Lcom/aide/engine/service/r;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/t;)Lcom/aide/engine/service/t;
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw:Lcom/aide/engine/service/t;

    return-object p1
.end method

.method private static synthetic j6(Ljava/lang/Object;ILandroid/app/Notification;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/ApplicationUtils;->DW(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;
    .registers 2

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH:Lcom/aide/engine/c;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 12

    const-wide v8, -0x5390c828c98acfd1L    # -1.1692253599142233E-94

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5390c828c98acfd1L    # -1.1692253599142233E-94

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine service bound - pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.4."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/aide/ui/MainActivity;->DW(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v2, "engine"

    invoke-direct {v1, p0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0x26f5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x1080079

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v3, "Code Analysis"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v3, "Code analysis engine is active"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    :cond_1
    new-instance v0, Lcom/aide/engine/service/b;

    invoke-direct {v0, p0}, Lcom/aide/engine/service/b;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-static {v0}, Labcd/qc;->j6(Labcd/qc;)V

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->gn:Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onCreate()V
    .registers 11

    const-wide v8, -0x135425d3eefdd950L    # -3.0004539543238873E215

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x135425d3eefdd950L    # -3.0004539543238873E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;

    invoke-virtual {v0, p0}, Lcom/aide/engine/service/Native;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onDestroy()V
    .registers 5

    const-wide v2, -0x32ba8b76d9ddc0c0L    # -1.7652329274091258E64

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32ba8b76d9ddc0c0L    # -1.7652329274091258E64

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine service destroyed - pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH:Lcom/aide/engine/c;

    invoke-virtual {v0}, Lcom/aide/engine/c;->VH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH:Lcom/aide/engine/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onTrimMemory(I)V
    .registers 6

    const-wide v2, -0xeca6c9f22871cf0L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xeca6c9f22871cf0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory - level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
