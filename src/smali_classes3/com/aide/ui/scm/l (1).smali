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
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, 0x350fa5944f097eccL  # 4.1300993598817193E-53

    const-class v4, Lcom/aide/ui/scm/l;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1dad6380fb982ba3L
    .end annotation

    const-wide v0, 0xa5c4835439139e5L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/l;->Hw:Lcom/aide/ui/scm/m;

    iget-object v2, v2, Lcom/aide/ui/scm/m;->Hw:Lcom/aide/ui/scm/n;

    iget-object v2, v2, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iget-object v2, v2, Lcom/aide/ui/scm/o;->v5:Lcom/aide/ui/scm/ua;

    iget-object v3, p0, Lcom/aide/ui/scm/l;->Hw:Lcom/aide/ui/scm/m;

    iget-object v3, v3, Lcom/aide/ui/scm/m;->Hw:Lcom/aide/ui/scm/n;

    iget-object v3, v3, Lcom/aide/ui/scm/n;->v5:Lcom/aide/ui/scm/o;

    iget-object v3, v3, Lcom/aide/ui/scm/o;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/scm/l;->FH:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/l;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
