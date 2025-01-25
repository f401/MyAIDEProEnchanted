.class Lcom/aide/ui/scm/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final VH:Lcom/aide/ui/scm/ua$a;

.field final Zo:Ljava/lang/String;

.field final gn:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x188cf922d3d56b5dL  # -2.1193530609131854E190

    const-class v4, Lcom/aide/ui/scm/M;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V
    .registers 7

    iput-object p1, p0, Lcom/aide/ui/scm/M;->gn:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/M;->FH:Lcom/aide/ui/scm/GitConfiguration;

    iput-object p3, p0, Lcom/aide/ui/scm/M;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/scm/M;->v5:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/scm/M;->Zo:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/ui/scm/M;->VH:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3819741112c2e5dL
    .end annotation

    const-wide v0, -0x2a7b07a511e9b38L  # -6.210578236736502E295

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/M;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_35

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/M;->gn:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/M;->gn:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/M;->FH:Lcom/aide/ui/scm/GitConfiguration;

    iget-object v5, p0, Lcom/aide/ui/scm/M;->Hw:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/scm/M;->v5:Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/scm/M;->Zo:Ljava/lang/String;

    iget-object v8, p0, Lcom/aide/ui/scm/M;->VH:Lcom/aide/ui/scm/ua$a;

    invoke-interface/range {v3 .. v8}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    new-instance v2, Lcom/aide/ui/scm/L;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/L;-><init>(Lcom/aide/ui/scm/M;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d
    .catchall {:try_start_c .. :try_end_2c} :catchall_35

    goto :goto_34

    :catch_2d
    move-exception v2

    :try_start_2e
    iget-object v3, p0, Lcom/aide/ui/scm/M;->VH:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/M;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v2
.end method
