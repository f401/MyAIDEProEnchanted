.class public Lcom/aide/licensing/LicenseUpdateService;
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
.field private FH:Lcom/aide/licensing/d;
    .annotation runtime Labcd/ru;
        field = -0x1b0dff564ea94addL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x31363053aee4123L

    const-class v0, Lcom/aide/licensing/LicenseUpdateService;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x15e51d3eb3bf81f9L    # -1.3171021071327859E203

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15e51d3eb3bf81f9L    # -1.3171021071327859E203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 12

    const-wide v8, 0x11182d3c2eba92b8L    # 2.551410174206664E-226

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11182d3c2eba92b8L    # 2.551410174206664E-226

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onDestroy()V
    .registers 5

    const-wide v2, 0xd9e5ec39471266dL

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd9e5ec39471266dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "License Update service: onDestroy"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    invoke-virtual {v0}, Lcom/aide/licensing/d;->FH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 14

    const-wide v8, -0x8388ad25002aa60L

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x8388ad25002aa60L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "License Update service: onStartCommand"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/licensing/d;

    invoke-direct {v0}, Lcom/aide/licensing/d;-><init>()V

    iput-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    iget-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/aide/licensing/d;->j6(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    invoke-virtual {v0}, Lcom/aide/licensing/d;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
