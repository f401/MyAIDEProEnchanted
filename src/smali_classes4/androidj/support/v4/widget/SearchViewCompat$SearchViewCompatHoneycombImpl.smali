.class Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.super Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatHoneycombImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkIfLegalArg(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->checkIfLegalArg(Landroid/view/View;)V

    return-void
.end method

.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isIconified(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->isIconified(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public newOnCloseListener(Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;-><init>(Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)V

    invoke-static {v0}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newOnQueryTextListener(Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;-><init>(Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V

    invoke-static {v0}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIconified(Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setIconified(Landroid/view/View;Z)V

    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setMaxWidth(Landroid/view/View;I)V

    return-void
.end method

.method public setOnCloseListener(Landroid/view/View;Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnCloseListener(Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setOnCloseListener(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnQueryTextListener(Landroid/view/View;Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnQueryTextListener(Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setOnQueryTextListener(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2, p3}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    return-void
.end method
