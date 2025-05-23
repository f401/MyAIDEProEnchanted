.class public final Landroidj/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;,
        Landroidj/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;,
        Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;,
        Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;,
        Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroidj/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidj/support/v4/internal/view/SupportMenuItem;->collapseActionView()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->collapseActionView(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidj/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroidj/support/v4/view/ActionProvider;
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidj/support/v4/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidj/support/v4/view/ActionProvider;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "MenuItemCompat"

    const-string v1, "getActionProvider: item does not implement SupportMenuItem; returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidj/support/v4/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidj/support/v4/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_a
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroidj/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidj/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidj/support/v4/view/ActionProvider;)Landroidj/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_b
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidj/support/v4/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_a
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidj/support/v4/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_a
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidj/support/v4/internal/view/SupportMenuItem;->setSupportOnActionExpandListener(Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroidj/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_a
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    check-cast p0, Landroidj/support/v4/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidj/support/v4/internal/view/SupportMenuItem;->setShowAsAction(I)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Landroidj/support/v4/view/MenuItemCompat;->IMPL:Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_9
.end method
