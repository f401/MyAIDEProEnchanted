.class Lcom/aide/ui/scm/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/O;->run()V
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
.field final FH:Lcom/aide/ui/scm/O;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0xd3fa0cbf7bea65bL  # 7.237637214235999E-245

    const-class v4, Lcom/aide/ui/scm/N;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/O;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/N;->FH:Lcom/aide/ui/scm/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x9e6605eaa978000L
    .end annotation

    const-wide v0, 0x434a81c7ff67fa21L  # 1.492209075591277E16

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/N;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/N;->FH:Lcom/aide/ui/scm/O;

    iget-object v2, v2, Lcom/aide/ui/scm/O;->v5:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    iget-object v2, p0, Lcom/aide/ui/scm/N;->FH:Lcom/aide/ui/scm/O;

    iget-object v2, v2, Lcom/aide/ui/scm/O;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v3, p0, Lcom/aide/ui/scm/N;->FH:Lcom/aide/ui/scm/O;

    iget-object v3, v3, Lcom/aide/ui/scm/O;->Hw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/N;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
