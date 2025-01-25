.class public Lcom/s1243808733/aide/preference/BasePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentList()Landroid/widget/ListView;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 20
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 23
    invoke-virtual {p0}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 25
    const p3, 0x1010054

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 26
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_24
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 34
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_13

    .line 36
    invoke-static {p1}, Lcom/s1243808733/aide/application/AppTheme;->customList(Landroid/widget/ListView;)V

    :cond_13
    return-void
.end method
