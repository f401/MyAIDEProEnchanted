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
    .registers 5

    const-wide v0, -0x4f5fa34ecae7e20cL  # -1.8087126003135542E-74

    const-wide v2, -0x4910f9577bcbaffdL  # -4.34766985648195E-44

    const-class v4, Lcom/aide/common/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x243576ddfeff1ae9L
    .end annotation

    const-wide v0, 0x1f9b95fb0dbab204L  # 2.00922615568094E-156

    :try_start_5
    sget-boolean v2, Lcom/aide/common/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/d;->FH:Lcom/aide/common/e;

    iget-object v2, v2, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/aide/common/d;->FH:Lcom/aide/common/e;

    iget-object v3, v3, Lcom/aide/common/e;->Hw:Landroid/app/ActionBar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_21

    const/4 p1, 0x1

    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/common/d;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method
