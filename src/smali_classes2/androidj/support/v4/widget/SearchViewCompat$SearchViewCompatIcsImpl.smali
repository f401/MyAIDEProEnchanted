.class Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;
.super Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatIcs;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setImeOptions(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatIcs;->setImeOptions(Landroid/view/View;I)V

    return-void
.end method

.method public setInputType(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatIcs;->setInputType(Landroid/view/View;I)V

    return-void
.end method
