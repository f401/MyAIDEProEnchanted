.class Lcom/aide/appwizard/runtime/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/runtime/AppWizardActivity;->FH(Landroid/view/ViewGroup;)V
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
.field final FH:Lcom/aide/appwizard/runtime/AppWizardActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x43daa093d23e6f19L  # 7.6747838898388593E18

    const-wide v2, 0x11b37e6a3e3efe3dL

    const-class v4, Lcom/aide/appwizard/runtime/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/runtime/f;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x41a24b09ac9eac0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/f;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x670112f9e521147L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/f;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x670112f9e521147L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x13eaa220a3367e91L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/f;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xb7db94cf3353070L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/appwizard/runtime/f;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-static {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->FH(Lcom/aide/appwizard/runtime/AppWizardActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/aide/appwizard/runtime/f;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-static {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->FH(Lcom/aide/appwizard/runtime/AppWizardActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/f;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, 0xb7db94cf3353070L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x62264b6fe6201d4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/f;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2b1cee981312255L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/f;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x2b1cee981312255L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method
