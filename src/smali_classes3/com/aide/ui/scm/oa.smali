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
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0x1627e60efd2ba68fL  # -7.379351365800558E201

    const-class v4, Lcom/aide/ui/scm/oa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x3ba53004d47e2ad9L  # -1.9784078637523227E21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/oa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/oa;->FH:Lcom/aide/ui/scm/qa;

    iget-object v2, v2, Lcom/aide/ui/scm/qa;->Hw:Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ua$b;->j6(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/aide/ui/scm/oa;->FH:Lcom/aide/ui/scm/qa;

    iget-object v2, v2, Lcom/aide/ui/scm/qa;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v2, v2, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->v5(Lcom/aide/ui/scm/ua;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/oa;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
