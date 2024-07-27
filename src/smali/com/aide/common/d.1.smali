.class Lcom/aide/common/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/e;->onClick(Landroid/view/View;)V
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
.field final FH:Lcom/aide/common/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/d;

    const-wide v2, -0x4f5fa34ecae7e20cL    # -1.8087126003135542E-74

    const-wide v4, -0x4910f9577bcbaffdL    # -4.34766985648195E-44

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/e;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/d;->FH:Lcom/aide/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x243576ddfeff1ae9L
    .end annotation

    const-wide v4, 0x1f9b95fb0dbab204L    # 2.00922615568094E-156

    :try_start_0
    sget-boolean v0, Lcom/aide/common/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f9b95fb0dbab204L    # 2.00922615568094E-156

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/d;->FH:Lcom/aide/common/e;

    iget-object v0, v0, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/aide/common/d;->FH:Lcom/aide/common/e;

    iget-object v1, v1, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
