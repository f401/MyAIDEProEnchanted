.class Lcom/aide/ui/scm/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
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

.field final Zo:Ljava/util/List;

.field final gn:Ljava/lang/Runnable;

.field final u7:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x188cd189bc788d9cL

    const-class v4, Lcom/aide/ui/scm/K;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/ua$a;Ljava/lang/Runnable;)V
    .registers 8

    iput-object p1, p0, Lcom/aide/ui/scm/K;->u7:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/K;->FH:Lcom/aide/ui/scm/GitConfiguration;

    iput-object p3, p0, Lcom/aide/ui/scm/K;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/scm/K;->v5:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/scm/K;->Zo:Ljava/util/List;

    iput-object p6, p0, Lcom/aide/ui/scm/K;->VH:Lcom/aide/ui/scm/ua$a;

    iput-object p7, p0, Lcom/aide/ui/scm/K;->gn:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xa41e9b001884f21L
    .end annotation

    const-wide v0, 0x22ef401a0c09a47L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_35

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/K;->u7:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/K;->u7:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/K;->FH:Lcom/aide/ui/scm/GitConfiguration;

    iget-object v5, p0, Lcom/aide/ui/scm/K;->Hw:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/scm/K;->v5:Ljava/lang/String;

    iget-object v7, p0, Lcom/aide/ui/scm/K;->Zo:Ljava/util/List;

    iget-object v8, p0, Lcom/aide/ui/scm/K;->VH:Lcom/aide/ui/scm/ua$a;

    invoke-interface/range {v3 .. v8}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V

    new-instance v2, Lcom/aide/ui/scm/J;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/J;-><init>(Lcom/aide/ui/scm/K;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d
    .catchall {:try_start_c .. :try_end_2c} :catchall_35

    goto :goto_34

    :catch_2d
    move-exception v2

    :try_start_2e
    iget-object v3, p0, Lcom/aide/ui/scm/K;->VH:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/K;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v2
.end method
