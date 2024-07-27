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
    .registers 6

    const-class v0, Lcom/aide/ui/scm/I;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, -0x188ca9f0a4ddaf9dL    # -2.153811906074741E190

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x495970dce7978010L    # 2.2694015037865864E45

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x495970dce7978010L    # 2.2694015037865864E45

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {p2}, Lcom/aide/ui/scm/wa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/wa;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/wa;)Lcom/aide/ui/scm/wa;

    iget-object v0, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "External Git service connected"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/I;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x6869c2dbe1ed3e0L
    .end annotation

    const-wide v4, 0x435f0fb199fad6e8L    # 3.4971918980045728E16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x435f0fb199fad6e8L    # 3.4971918980045728E16

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/I;->FH:Lcom/aide/ui/scm/ua;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/wa;)Lcom/aide/ui/scm/wa;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "External Git service disconnected"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
