.class Lcom/aide/ui/scm/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua;->tp(Ljava/lang/String;)V
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

.field final v5:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x211a7200b16a46c7L

    const-class v4, Lcom/aide/ui/scm/o;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua;Ljava/lang/String;Lcom/aide/ui/scm/ua$a;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    iput-object p2, p0, Lcom/aide/ui/scm/o;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/o;->Hw:Lcom/aide/ui/scm/ua$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x10db8a5e72537504L
    .end annotation

    const-wide v0, 0xa55ab8b71c9c7ddL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_46

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->Zo(Lcom/aide/ui/scm/ua;)V

    iget-object v2, p0, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/scm/o;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/o;->Hw:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v2, v3, v4}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v3, p0, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    invoke-static {v3}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/wa;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/scm/o;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/o;->Hw:Lcom/aide/ui/scm/ua$a;

    invoke-interface {v3, v4, v5}, Lcom/aide/ui/scm/wa;->FH(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/util/List;

    move-result-object v3

    goto :goto_35

    :cond_30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_35
    new-instance v4, Lcom/aide/ui/scm/n;

    invoke-direct {v4, p0, v3, v2}, Lcom/aide/ui/scm/n;-><init>(Lcom/aide/ui/scm/o;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3d} :catch_3e
    .catchall {:try_start_c .. :try_end_3d} :catchall_46

    goto :goto_45

    :catch_3e
    move-exception v2

    :try_start_3f
    iget-object v3, p0, Lcom/aide/ui/scm/o;->Hw:Lcom/aide/ui/scm/ua$a;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_46

    :goto_45
    return-void

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/o;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    throw v2
.end method
