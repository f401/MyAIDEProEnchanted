.class public final Landroidj/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;,
        Landroidj/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;,
        Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;,
        Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;,
        Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;,
        Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;,
        Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;,
        Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isIconified(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setIconified(Landroid/view/View;Z)V

    return-void
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setImeOptions(Landroid/view/View;I)V

    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setInputType(Landroid/view/View;I)V

    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setMaxWidth(Landroid/view/View;I)V

    return-void
.end method

.method public static setOnCloseListener(Landroid/view/View;Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnCloseListener(Landroid/view/View;Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)V

    return-void
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnQueryTextListener(Landroid/view/View;Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V

    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .registers 4

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/widget/SearchViewCompat;->IMPL:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    return-void
.end method
