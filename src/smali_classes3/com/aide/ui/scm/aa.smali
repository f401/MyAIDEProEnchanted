.class Lcom/aide/ui/scm/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->j6(Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
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
.field final FH:Landroid/os/RemoteException;

.field final Hw:Lcom/aide/ui/scm/ua$d;

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, 0x53710f70a6cb5bcL

    const-class v4, Lcom/aide/ui/scm/aa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/aa;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p2, p0, Lcom/aide/ui/scm/aa;->FH:Landroid/os/RemoteException;

    iput-object p3, p0, Lcom/aide/ui/scm/aa;->Hw:Lcom/aide/ui/scm/ua$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4e68200f88ed3cfL
    .end annotation

    const-wide v0, 0x6813f6fe53f265dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/aa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/aa;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->gn(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Git"

    iget-object v4, p0, Lcom/aide/ui/scm/aa;->FH:Landroid/os/RemoteException;

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    iget-object v2, p0, Lcom/aide/ui/scm/aa;->Hw:Lcom/aide/ui/scm/ua$d;

    if-eqz v2, :cond_2a

    invoke-interface {v2}, Lcom/aide/ui/scm/ua$d;->j6()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/aa;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method
