.class Lcom/aide/ui/scm/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ja;->run()V
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
.field final FH:Lcom/aide/ui/scm/ja;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0x162705378e76b2b3L  # -7.64826553415215E201

    const-class v4, Lcom/aide/ui/scm/ia;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ja;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ia;->FH:Lcom/aide/ui/scm/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc97fd1de09c2dbfL
    .end annotation

    const-wide v0, 0x2aafb63eb201e499L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ia;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ia;->FH:Lcom/aide/ui/scm/ja;

    iget-object v2, v2, Lcom/aide/ui/scm/ja;->Hw:Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ua$b;->cancel(Z)Z

    iget-object v2, p0, Lcom/aide/ui/scm/ia;->FH:Lcom/aide/ui/scm/ja;

    iget-object v2, v2, Lcom/aide/ui/scm/ja;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v2, v2, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ia;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
