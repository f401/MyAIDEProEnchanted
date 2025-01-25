.class Lcom/aide/ui/scm/la;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ma;->run()V
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
.field final FH:Lcom/aide/ui/scm/ma;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0x162775a4a2eea100L  # -7.51380207870949E201

    const-class v4, Lcom/aide/ui/scm/la;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ma;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/la;->FH:Lcom/aide/ui/scm/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5904e3c4f3c16cfL
    .end annotation

    const-wide v0, -0x3fb9de5352bb62afL  # -44.26308217859572

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/la;->FH:Lcom/aide/ui/scm/ma;

    iget-object v2, v2, Lcom/aide/ui/scm/ma;->Hw:Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ua$b;->cancel(Z)Z

    iget-object v2, p0, Lcom/aide/ui/scm/la;->FH:Lcom/aide/ui/scm/ma;

    iget-object v2, v2, Lcom/aide/ui/scm/ma;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v2, v2, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/la;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
