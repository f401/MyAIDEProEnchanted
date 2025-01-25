.class Lcom/aide/ui/scm/pa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/qa;->run()V
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
.field final FH:Lcom/aide/ui/scm/qa;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0x16281b890cc96f60L  # -7.315392233261389E201

    const-class v4, Lcom/aide/ui/scm/pa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/qa;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/pa;->FH:Lcom/aide/ui/scm/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1b3fede1469c149fL
    .end annotation

    const-wide v0, -0x3b9b471a51029d08L  # -3.058065031601175E21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/pa;->FH:Lcom/aide/ui/scm/qa;

    iget-object v2, v2, Lcom/aide/ui/scm/qa;->Hw:Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ua$b;->cancel(Z)Z

    iget-object v2, p0, Lcom/aide/ui/scm/pa;->FH:Lcom/aide/ui/scm/qa;

    iget-object v2, v2, Lcom/aide/ui/scm/qa;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v2, v2, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/pa;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
