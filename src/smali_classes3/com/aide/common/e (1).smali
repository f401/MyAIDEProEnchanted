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
    .registers 5

    const-wide v0, -0x4f5fa34ecae7e20cL  # -1.8087126003135542E-74

    const-wide v2, 0x6cbbdc4cc487a460L  # 6.0026986602918485E215

    const-class v4, Lcom/aide/common/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x86fde87daf8141fL
    .end annotation

    const-wide v0, -0x34287d03684e09b8L  # -2.3060175656181632E57

    :try_start_5
    sget-boolean v2, Lcom/aide/common/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/aide/common/e;->v5:Lcom/aide/common/f;

    iget-object v3, v3, Lcom/aide/common/f;->FH:Landroid/app/Activity;

    iget-object v4, p0, Lcom/aide/common/e;->FH:Landroid/widget/Spinner;

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    iget-object v6, p0, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getTabCount()I

    move-result v6

    if-ge v5, v6, :cond_35

    iget-object v6, p0, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v3, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_35
    new-instance v3, Lcom/aide/common/d;

    invoke-direct {v3, p0}, Lcom/aide/common/d;-><init>(Lcom/aide/common/e;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/common/e;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    goto :goto_4b

    :goto_4a
    throw v2

    :goto_4b
    goto :goto_4a
.end method
