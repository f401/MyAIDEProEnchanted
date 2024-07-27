.class Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;

.field final val$listener:Landroidj/support/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->this$0:Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    iput-object p2, p0, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->val$listener:Landroidj/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {p2}, Landroidj/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->val$listener:Landroidj/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Landroidj/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/WindowInsetsCompat;->unwrap(Landroidj/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
