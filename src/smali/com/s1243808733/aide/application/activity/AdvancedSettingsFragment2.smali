.class public Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;
.super Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
.source "AdvancedSettingsFragment2.java"


# instance fields
.field public mListView2:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentList()Landroid/widget/ListView;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->mListView2:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 54
    invoke-super {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 57
    const-string v0, "screen_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->mListView2:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customList(Landroid/widget/ListView;)V

    .line 63
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->mListView2:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    .line 78
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 37
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 39
    new-instance p1, Lcom/s1243808733/widget/CustomListView;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->mListView2:Landroid/widget/ListView;

    .line 40
    invoke-virtual {v0, p1, p2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_12
    invoke-super {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 46
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
