.class Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

.field final val$listener:Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->this$0:Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    iput-object p2, p0, Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
