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
    .registers 3

    const-class v0, Lcom/aide/licensing/LicenseUpdateService;

    const-wide v1, 0x31363053aee4123L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x15e51d3eb3bf81f9L  # -1.3171021071327859E203

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Service;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 11

    const-wide v1, 0x16db5858385L

    const-wide v7, 0x11182d3c2eba92b8L  # 2.551410174206664E-226

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    :cond_1d
    const/4 p1, 0x0

    return-object p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v1, :cond_27

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public onDestroy()V
    .registers 5

    const-wide v0, 0xd9e5ec39471266dL

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "License Update service: onDestroy"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    invoke-virtual {v2}, Lcom/aide/licensing/d;->FH()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateService;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8388ad25002aa60L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    const-string v0, "License Update service: onStartCommand"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/licensing/d;

    invoke-direct {v0}, Lcom/aide/licensing/d;-><init>()V

    iput-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/aide/licensing/d;->j6(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/aide/licensing/LicenseUpdateService;->FH:Lcom/aide/licensing/d;

    invoke-virtual {v0}, Lcom/aide/licensing/d;->DW()V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return v1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateService;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, -0x8388ad25002aa60L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method
