.class Lcom/aide/ui/scm/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/m;->j6(Ljava/lang/Integer;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/scm/m;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/scm/l;

    const-wide v2, 0x2ce53dff3f047720L    # 2.0367153784621453E-92

    const-wide v4, 0x350fa5944f097eccL    # 4.1300993598817193E-53

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/m;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/l;->Hw:Lcom/aide/ui/scm/m;

    iput-object p2, p0, Lcom/aide/ui/scm/l;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1dad6380fb982ba3L
    .end annotation

    const-wide v4, 0xa5c4835439139e5L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa5c4835439139e5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/l;->Hw:Lcom/aide/ui/scm/m;

    iget-object v0, v0, Lcom/aide/ui/scm/m;->Hw:Lcom/aide/ui/scm/n;

    iget-object v0, v0, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iget-object v0, v0, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    iget-object v1, p0, Lcom/aide/ui/scm/l;->Hw:Lcom/aide/ui/scm/m;

    iget-object v1, v1, Lcom/aide/ui/scm/m;->Hw:Lcom/aide/ui/scm/n;

    iget-object v1, v1, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iget-object v1, v1, Lcom/aide/ui/scm/o;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/scm/l;->FH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/l;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
