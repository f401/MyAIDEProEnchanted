.class public Lcom/aide/ui/fa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:Landroid/view/MenuItem;
    .annotation runtime Labcd/ru;
        field = -0x15c67902faef477L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x236d91e5a1e35049L    # -8.573249911377985E137

    const-class v0, Lcom/aide/ui/fa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Menu;)V
    .registers 8

    const-wide v4, 0x4495d454f76f40a1L    # 2.5771632092107694E22

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4495d454f76f40a1L    # 2.5771632092107694E22

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f080101

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setInputType(I)V

    new-instance v1, Lcom/aide/ui/da;

    invoke-direct {v1, p0, v0}, Lcom/aide/ui/da;-><init>(Lcom/aide/ui/fa;Landroid/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    new-instance v1, Lcom/aide/ui/ea;

    invoke-direct {v1, p0}, Lcom/aide/ui/ea;-><init>(Lcom/aide/ui/fa;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/fa;)Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x64998e51c8f3be74L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x64998e51c8f3be74L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->tp()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x19acf50868a444afL    # 5.324129795412744E-185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19acf50868a444afL    # 5.324129795412744E-185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v2, -0x3bb2fa7b4651b49L    # -4.056749550549199E290

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3bb2fa7b4651b49L    # -4.056749550549199E290

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/fa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
