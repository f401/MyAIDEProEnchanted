.class Landroidj/support/v4/view/MenuItemCompatIcs;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;,
        Landroidj/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroidj/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)Landroid/view/MenuItem;
    .registers 3

    new-instance v0, Landroidj/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;-><init>(Landroidj/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
