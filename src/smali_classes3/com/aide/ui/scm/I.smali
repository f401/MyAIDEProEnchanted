.class Lcom/aide/ui/scm/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->Zo()V
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
.field final FH:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x188ca9f0a4ddaf9dL  # -2.153811906074741E190

    const-class v4, Lcom/aide/ui/scm/I;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x10804822394eb6e4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/I;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x495970dce7978010L  # 2.2694015037865864E45

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_2f

    :try_start_13
    iget-object v1, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {p2}, Lcom/aide/ui/scm/wa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/wa;)Lcom/aide/ui/scm/wa;

    iget-object v1, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {v1}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2c

    :try_start_26
    const-string v0, "External Git service connected"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2f

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/I;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x495970dce7978010L  # 2.2694015037865864E45

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6869c2dbe1ed3e0L
    .end annotation

    const-wide v0, 0x435f0fb199fad6e8L  # 3.4971918980045728E16

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/I;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_23

    :try_start_13
    iget-object v3, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/wa;)Lcom/aide/ui/scm/wa;

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_20

    :try_start_1a
    const-string v2, "External Git service disconnected"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    return-void

    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/I;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method
