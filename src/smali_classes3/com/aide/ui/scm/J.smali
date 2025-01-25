.class Lcom/aide/ui/scm/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/K;->run()V
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
.field final FH:Lcom/aide/ui/scm/K;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0xd3e8c3930b246e3L

    const-class v4, Lcom/aide/ui/scm/J;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/K;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/J;->FH:Lcom/aide/ui/scm/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd559ba4aac81800L
    .end annotation

    const-wide v0, 0x230eb1b4e432c00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/J;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/J;->FH:Lcom/aide/ui/scm/K;

    iget-object v2, v2, Lcom/aide/ui/scm/K;->VH:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    iget-object v2, p0, Lcom/aide/ui/scm/J;->FH:Lcom/aide/ui/scm/K;

    iget-object v2, v2, Lcom/aide/ui/scm/K;->gn:Ljava/lang/Runnable;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/aide/ui/scm/J;->FH:Lcom/aide/ui/scm/K;

    iget-object v2, v2, Lcom/aide/ui/scm/K;->gn:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/J;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
