.class public Lcom/aide/ui/Za;
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
        field = 0x3555ae4ebff28ec0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/Za;

    const-wide v1, -0x221c34086f4546d0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Menu;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x5629d38095ab1b07L  # -3.776609266821144E-107

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Za;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f080113

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/Za;->FH:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    new-instance v4, Lcom/aide/ui/Xa;

    invoke-direct {v4, p0, v3}, Lcom/aide/ui/Xa;-><init>(Lcom/aide/ui/Za;Landroid/widget/SearchView;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    new-instance v4, Lcom/aide/ui/Ya;

    invoke-direct {v4, p0}, Lcom/aide/ui/Ya;-><init>(Lcom/aide/ui/Za;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Za;->DW:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x2965a6752bc8995bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Za;->FH:Landroid/view/MenuItem;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/aide/ui/Za;->FH:Landroid/view/MenuItem;

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

    sget-boolean v3, Lcom/aide/ui/Za;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x184cba70686f3a04L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Za;->FH:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Za;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, 0x1f854f5434705860L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Za;->FH:Landroid/view/MenuItem;

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

    sget-boolean v3, Lcom/aide/ui/Za;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
