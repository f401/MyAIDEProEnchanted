.class public Landroid/support/v4/app/SupportActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/arch/lifecycle/c;


# instance fields
.field private DW:Landroid/arch/lifecycle/e;

.field private j6:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/SupportActivity;->j6:Labcd/x;

    new-instance v0, Landroid/arch/lifecycle/e;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/e;-><init>(Landroid/arch/lifecycle/c;)V

    iput-object v0, p0, Landroid/support/v4/app/SupportActivity;->DW:Landroid/arch/lifecycle/e;

    return-void
.end method


# virtual methods
.method public j6()Landroid/arch/lifecycle/a;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->DW:Landroid/arch/lifecycle/e;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->DW:Landroid/arch/lifecycle/e;

    sget-object v1, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$b;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
