.class Lcom/aide/common/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/f;->run()V
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
.field final FH:Landroid/widget/Spinner;

.field final Hw:Landroid/app/ActionBar;

.field final v5:Lcom/aide/common/f;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/e;

    const-wide v2, -0x4f5fa34ecae7e20cL    # -1.8087126003135542E-74

    const-wide v4, 0x6cbbdc4cc487a460L    # 6.0026986602918485E215

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/f;Landroid/widget/Spinner;Landroid/app/ActionBar;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/e;->v5:Lcom/aide/common/f;

    iput-object p2, p0, Lcom/aide/common/e;->FH:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x86fde87daf8141fL
    .end annotation

    const-wide v6, -0x34287d03684e09b8L    # -2.3060175656181632E57

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/common/e;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x34287d03684e09b8L    # -2.3060175656181632E57

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/aide/common/e;->v5:Lcom/aide/common/f;

    iget-object v2, v2, Lcom/aide/common/f;->FH:Landroid/app/Activity;

    iget-object v3, p0, Lcom/aide/common/e;->FH:Landroid/widget/Spinner;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/aide/common/d;

    invoke-direct {v0, p0}, Lcom/aide/common/d;-><init>(Lcom/aide/common/e;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/e;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
