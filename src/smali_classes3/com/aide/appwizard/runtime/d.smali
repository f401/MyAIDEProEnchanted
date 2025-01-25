.class Lcom/aide/appwizard/runtime/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/runtime/AppWizardActivity;->we()V
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

    const-wide v2, 0x11b34b5c868a40f1L

    const-class v4, Lcom/aide/appwizard/runtime/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/runtime/d;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xef69b30ffb2a84L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/d;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x3fc4d36e5db8540L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/appwizard/runtime/d;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$c;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/d;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v1, v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/runtime/d;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->FH()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/appwizard/runtime/d;->FH:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-static {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->DW(Lcom/aide/appwizard/runtime/AppWizardActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/D;->DW(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    invoke-virtual {v1}, Landroid/support/v4/app/D;->j6()I
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_44

    const/4 p1, 0x1

    return p1

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/d;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, 0x3fc4d36e5db8540L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method
