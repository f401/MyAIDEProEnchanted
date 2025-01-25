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
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0xd3f1681371b0240L

    const-class v4, Lcom/aide/ui/scm/L;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x2a76d73f721041dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/L;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    iget-object v2, v2, Lcom/aide/ui/scm/M;->VH:Lcom/aide/ui/scm/ua$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    iget-object v4, v4, Lcom/aide/ui/scm/M;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/scm/L;->FH:Lcom/aide/ui/scm/M;

    iget-object v5, v5, Lcom/aide/ui/scm/M;->v5:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/mk;->j6(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/L;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method
