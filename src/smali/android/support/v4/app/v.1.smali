.class Landroid/support/v4/app/v;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/x;->FH(Landroid/support/v4/app/Fragment;)V
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

    iput-object p1, p0, Landroid/support/v4/app/v;->Hw:Landroid/support/v4/app/x;

    iput-object p2, p0, Landroid/support/v4/app/v;->j6:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/v;->DW:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/v;->FH:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/v;->j6:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/v;->DW:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/v4/app/v;->FH:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
