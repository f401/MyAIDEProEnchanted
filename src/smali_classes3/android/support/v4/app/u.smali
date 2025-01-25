.class Landroid/support/v4/app/u;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/x$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/view/View;

.field final FH:Landroid/support/v4/app/Fragment;

.field final Hw:Landroid/support/v4/app/x;

.field final j6:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/u;->Hw:Landroid/support/v4/app/x;

    iput-object p2, p0, Landroid/support/v4/app/u;->j6:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/u;->DW:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/u;->FH:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    iget-object p1, p0, Landroid/support/v4/app/u;->j6:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/u;->DW:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_9
    iget-object p1, p0, Landroid/support/v4/app/u;->FH:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/support/v4/app/u;->FH:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->j6(Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/support/v4/app/u;->Hw:Landroid/support/v4/app/x;

    iget-object v2, p0, Landroid/support/v4/app/u;->FH:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->a8()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_25
    return-void
.end method
