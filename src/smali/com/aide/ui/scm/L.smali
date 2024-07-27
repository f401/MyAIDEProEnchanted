.class Lcom/aide/ui/scm/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/M;->run()V
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
.field final FH:Lcom/aide/ui/scm/M;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/L;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0xd3f1681371b0240L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/M;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2293dd873a41b3a0L
    .end annotation

    const-wide v4, -0x2a76d73f721041dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/L;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a76d73f721041dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    iget-object v0, v0, Lcom/aide/ui/scm/M;->VH:Lcom/aide/ui/scm/ua$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    iget-object v2, v2, Lcom/aide/ui/scm/M;->Hw:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    iget-object v3, v3, Lcom/aide/ui/scm/M;->v5:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/mk;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/L;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
