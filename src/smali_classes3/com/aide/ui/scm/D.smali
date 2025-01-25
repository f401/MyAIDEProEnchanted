.class Lcom/aide/ui/scm/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->u7(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/scm/ua$a;

.field final Zo:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211b6d3164a11500L

    const-class v4, Lcom/aide/ui/scm/D;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/ui/scm/D;->Zo:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/D;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/D;->Hw:Lcom/aide/ui/scm/ua$a;

    iput-object p4, p0, Lcom/aide/ui/scm/D;->v5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1e4f97efa204313cL
    .end annotation

    const-wide v0, -0x7fbe89dd1d751f3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/D;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_30

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/D;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/D;->Zo:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/D;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/D;->Hw:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/scm/C;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/scm/C;-><init>(Lcom/aide/ui/scm/D;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_27} :catch_28
    .catchall {:try_start_c .. :try_end_27} :catchall_30

    goto :goto_2f

    :catch_28
    move-exception v2

    :try_start_29
    iget-object v3, p0, Lcom/aide/ui/scm/D;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_30

    :goto_2f
    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/D;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
