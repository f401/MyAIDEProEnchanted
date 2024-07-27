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
    .registers 6

    const-class v0, Lcom/aide/ui/scm/aa;

    const-wide v2, 0xc1e937b1ab52cbdL

    const-wide v4, 0x53710f70a6cb5bcL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4e68200f88ed3cfL
    .end annotation

    const-wide v4, 0x6813f6fe53f265dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/aa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6813f6fe53f265dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/aa;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ua$a;->gn(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Git"

    iget-object v2, p0, Lcom/aide/ui/scm/aa;->FH:Landroid/os/RemoteException;

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    iget-object v0, p0, Lcom/aide/ui/scm/aa;->Hw:Lcom/aide/ui/scm/ua$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/aa;->Hw:Lcom/aide/ui/scm/ua$d;

    invoke-interface {v0}, Lcom/aide/ui/scm/ua$d;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/aa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
