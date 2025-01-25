.class Lcom/aide/ui/scm/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->J0(Ljava/lang/String;)V
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
.field final FH:Lcom/aide/ui/scm/GitConfiguration;

.field final Hw:Ljava/lang/String;

.field final Zo:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x188d6fee1878032cL

    const-class v4, Lcom/aide/ui/scm/U;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/ui/scm/U;->Zo:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/U;->FH:Lcom/aide/ui/scm/GitConfiguration;

    iput-object p3, p0, Lcom/aide/ui/scm/U;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/scm/U;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x142b4f013d1489b3L
    .end annotation

    const-wide v0, 0x438bcdf3059cfb50L  # 2.50440576835480064E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/U;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_31

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/U;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/U;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/U;->FH:Lcom/aide/ui/scm/GitConfiguration;

    iget-object v4, p0, Lcom/aide/ui/scm/U;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/U;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4, v5}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    new-instance v2, Lcom/aide/ui/scm/T;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/T;-><init>(Lcom/aide/ui/scm/U;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_31

    goto :goto_30

    :catch_29
    move-exception v2

    :try_start_2a
    iget-object v3, p0, Lcom/aide/ui/scm/U;->v5:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    :goto_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/U;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method
