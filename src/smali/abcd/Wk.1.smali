.class Labcd/Wk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Zk;->j6(Ljava/lang/String;Z)V
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
.field final FH:Z

.field final Hw:Labcd/Zk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Wk;

    const-wide v2, -0x6fdf4c80cc5fd710L    # -5.378732710479451E-231

    const-wide v4, 0xa8c6281a48d1be0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Zk;Z)V
    .registers 3

    iput-object p1, p0, Labcd/Wk;->Hw:Labcd/Zk;

    iput-boolean p2, p0, Labcd/Wk;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x126c56fdd0d47340L
    .end annotation

    const-wide v4, -0x1b4ffcdee60a6887L    # -1.0138392960424037E177

    :try_start_0
    sget-boolean v0, Labcd/Wk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b4ffcdee60a6887L    # -1.0138392960424037E177

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-static {v0}, Labcd/Zk;->DW(Labcd/Zk;)V

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    iget-object v1, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-static {v1}, Labcd/Zk;->FH(Labcd/Zk;)Labcd/Ui;

    move-result-object v1

    invoke-interface {v1}, Labcd/Ui;->EQ()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Labcd/Wk;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Wk;->Hw:Labcd/Zk;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Zk;->j6(Ljava/util/List;Z)V

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    iget-object v1, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-virtual {v1}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ji;->DW(Ljava/util/List;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    iget-object v0, p0, Labcd/Wk;->Hw:Labcd/Zk;

    invoke-virtual {v0}, Labcd/Zk;->aM()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
