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
    .registers 3

    const-class v0, Lcom/aide/ui/fa;

    const-wide v1, -0x236d91e5a1e35049L  # -8.573249911377985E137

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Menu;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x4495d454f76f40a1L  # 2.5771632092107694E22

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/fa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f080101

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setInputType(I)V

    new-instance v4, Lcom/aide/ui/da;

    invoke-direct {v4, p0, v3}, Lcom/aide/ui/da;-><init>(Lcom/aide/ui/fa;Landroid/widget/SearchView;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    new-instance v4, Lcom/aide/ui/ea;

    invoke-direct {v4, p0}, Lcom/aide/ui/ea;-><init>(Lcom/aide/ui/fa;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/fa;->DW:Z

    if-eqz v4, :cond_3c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/fa;)Landroid/view/MenuItem;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    return-object p0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x64998e51c8f3be74L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/fa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->tp()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/fa;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x19acf50868a444afL  # 5.324129795412744E-185

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/fa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/fa;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, -0x3bb2fa7b4651b49L  # -4.056749550549199E290

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/fa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/fa;->FH:Landroid/view/MenuItem;

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/fa;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
