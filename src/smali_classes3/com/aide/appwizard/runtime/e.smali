.class Lcom/aide/appwizard/runtime/e;
.super Landroid/support/v4/view/ViewPager$h;


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

    const-wide v2, 0x11b364e362459f78L

    const-class v4, Lcom/aide/appwizard/runtime/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/runtime/e;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$h;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf05c5ebcc6d5fL
    .end annotation

    const-wide v0, 0x65cec520d32e2a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/e;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/e;->DW:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method
