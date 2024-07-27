.class public Lnet/f401/aide/preference/EnvironmentPreference;
.super Landroid/app/ListFragment;
.source "EnvironmentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;
    }
.end annotation


# instance fields
.field private adapter:Lnet/f401/aide/adapter/EnvListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 29
    new-instance v0, Lnet/f401/aide/adapter/EnvListAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/f401/aide/adapter/EnvListAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/adapter/EnvListAdapter;

    return-void
.end method

.method static synthetic access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/adapter/EnvListAdapter;
    .registers 2

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/adapter/EnvListAdapter;

    return-object v0
.end method

.method static synthetic access$S1000000(Lnet/f401/aide/preference/EnvironmentPreference;Lnet/f401/aide/adapter/EnvListAdapter;)V
    .registers 2

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/adapter/EnvListAdapter;

    return-void
.end method

.method public static showEditDialog(Landroid/content/Context;Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a005f

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    const v0, 0x7f08086d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 124
    const v1, 0x7f08086e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-interface {p1}, Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lnet/f401/aide/preference/EnvironmentPreference$100000004;

    invoke-direct {v4, p1, v0, v1}, Lnet/f401/aide/preference/EnvironmentPreference$100000004;-><init>(Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Landroid/view/MenuInflater;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 35
    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 36
    const v1, 0x7f070176

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 37
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0, v2}, Lnet/f401/aide/preference/EnvironmentPreference;->setHasOptionsMenu(Z)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v2, [I

    const v3, 0x1010054

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 64
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/f401/aide/preference/EnvironmentPreference$100000001;

    invoke-direct {v1, p0, p3}, Lnet/f401/aide/preference/EnvironmentPreference$100000001;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;I)V

    invoke-static {v0, v1}, Lnet/f401/aide/preference/EnvironmentPreference;->showEditDialog(Landroid/content/Context;Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/f401/aide/preference/EnvironmentPreference$100000000;

    invoke-direct {v1, p0}, Lnet/f401/aide/preference/EnvironmentPreference$100000000;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;)V

    invoke-static {v0, v1}, Lnet/f401/aide/preference/EnvironmentPreference;->showEditDialog(Landroid/content/Context;Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 98
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/adapter/EnvListAdapter;

    invoke-virtual {p0, v0}, Lnet/f401/aide/preference/EnvironmentPreference;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lnet/f401/aide/preference/EnvironmentPreference$100000003;

    invoke-direct {v1, p0}, Lnet/f401/aide/preference/EnvironmentPreference$100000003;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
