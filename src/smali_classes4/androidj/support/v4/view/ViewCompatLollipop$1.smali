.class final Landroidj/support/v4/view/ViewCompatLollipop$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$bridge:Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/ViewCompatLollipop$1;->val$bridge:Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/ViewCompatLollipop$1;->val$bridge:Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;->onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
