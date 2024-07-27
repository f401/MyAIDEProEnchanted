.class Lcom/aide/ui/scm/oa;
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
    .registers 6

    const-class v0, Lcom/aide/ui/scm/oa;

    const-wide v2, 0xc1e937b1ab52cbdL

    const-wide v4, -0x1627e60efd2ba68fL    # -7.379351365800558E201

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/qa;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/oa;->FH:Lcom/aide/ui/scm/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x8ab7919464dc260L
    .end annotation

    const-wide v2, -0x3ba53004d47e2ad9L    # -1.9784078637523227E21

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/oa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ba53004d47e2ad9L    # -1.9784078637523227E21

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/oa;->FH:Lcom/aide/ui/scm/qa;

    iget-object v0, v0, Lcom/aide/ui/scm/qa;->Hw:Lcom/aide/ui/scm/ua$b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/ua$b;->j6(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aide/ui/scm/oa;->FH:Lcom/aide/ui/scm/qa;

    iget-object v0, v0, Lcom/aide/ui/scm/qa;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v0, v0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/oa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
