.class Lcom/aide/ui/scm/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/v;->run()V
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
.field final FH:Lcom/aide/ui/scm/v;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x1b94c4bd138745c0L

    const-class v4, Lcom/aide/ui/scm/u;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/v;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/u;->FH:Lcom/aide/ui/scm/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a723166ff053e50L
    .end annotation

    const-wide v0, -0x1b5a6bf3fdc96210L  # -6.831323698515443E176

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/u;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/u;->FH:Lcom/aide/ui/scm/v;

    iget-object v2, v2, Lcom/aide/ui/scm/v;->FH:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    iget-object v2, p0, Lcom/aide/ui/scm/u;->FH:Lcom/aide/ui/scm/v;

    iget-object v2, v2, Lcom/aide/ui/scm/v;->Hw:Lcom/aide/ui/scm/w;

    iget-object v2, v2, Lcom/aide/ui/scm/w;->v5:Lcom/aide/ui/scm/ua;

    iget-object v3, p0, Lcom/aide/ui/scm/u;->FH:Lcom/aide/ui/scm/v;

    iget-object v3, v3, Lcom/aide/ui/scm/v;->Hw:Lcom/aide/ui/scm/w;

    iget-object v3, v3, Lcom/aide/ui/scm/w;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/u;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method
