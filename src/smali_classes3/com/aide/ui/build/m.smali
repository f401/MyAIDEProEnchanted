.class Lcom/aide/ui/build/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/OutputConsole;->er()V
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
.field final FH:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x2fdcb98830cc00L

    const-wide v2, 0x12fb2565572a584cL

    const-class v4, Lcom/aide/ui/build/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/OutputConsole;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/m;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1d9740e53878a41bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/m;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x5361efb8bfdf8a93L  # -9.007871060098702E-94

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0800d7

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/aide/ui/build/m;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->v5()V

    :cond_1a
    iget-object v0, p0, Lcom/aide/ui/build/m;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->Zo(Lcom/aide/ui/build/OutputConsole;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_25

    const/4 p1, 0x1

    return p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/m;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x5361efb8bfdf8a93L  # -9.007871060098702E-94

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x18c273365b3cf30L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/m;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x24936dd6454bba90L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/m;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, 0x24936dd6454bba90L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x22e6053471f4c129L
    .end annotation

    const-wide v0, 0x72744e6f830dd6d5L  # 2.166452722855998E243

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/m;->FH:Lcom/aide/ui/build/OutputConsole;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/build/OutputConsole;->j6(Lcom/aide/ui/build/OutputConsole;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/aide/ui/build/m;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsole;->VH(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    iget-object v2, p0, Lcom/aide/ui/build/m;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsole;->v5(Lcom/aide/ui/build/OutputConsole;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/m;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x19515dd038f66dc5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/m;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x4357753c53ca79edL  # 2.6411305714444212E16

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :catchall_e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/m;->DW:Z

    if-eqz v1, :cond_1f

    const-wide v2, 0x4357753c53ca79edL  # 2.6411305714444212E16

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v0
.end method
