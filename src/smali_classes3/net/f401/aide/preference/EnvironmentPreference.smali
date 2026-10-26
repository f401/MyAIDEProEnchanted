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
.field private adapter:Lnet/f401/aide/EnvPreferenceAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 32
    new-instance v0, Lnet/f401/aide/EnvPreferenceAdapter;

    invoke-direct {v0}, Lnet/f401/aide/EnvPreferenceAdapter;-><init>()V

    iput-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    return-void
.end method

.method static synthetic access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;
    .locals 1

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    return-object v0
.end method

.method static synthetic access$S1000000(Lnet/f401/aide/preference/EnvironmentPreference;Lnet/f401/aide/EnvPreferenceAdapter;)V
    .locals 0

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    return-void
.end method

.method private showEditDialog(Lnet/f401/aide/EnvItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/f401/aide/EnvItem;",
            ")V"
        }
    .end annotation

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 108
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 114
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEms(I)V

    .line 115
    const-string v2, "\u540d\u5b57"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 118
    const/16 v3, 0x14

    int-to-float v3, v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/ConvertUtils;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 125
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEms(I)V

    .line 126
    const-string v3, "\u540d\u5b57"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lnet/f401/aide/EnvItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lnet/f401/aide/preference/EnvironmentPreference$100000003;

    invoke-direct {v4, p0, v1, v2}, Lnet/f401/aide/preference/EnvironmentPreference$100000003;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
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

    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 38
    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 39
    const v1, 0x7f070178

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 40
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0, v2}, Lnet/f401/aide/preference/EnvironmentPreference;->setHasOptionsMenu(Z)V

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v2, [I

    const v3, 0x1010054

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
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

    .line 54
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 55
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    invoke-virtual {v0, p3}, Lnet/f401/aide/EnvPreferenceAdapter;->getItem(I)Lnet/f401/aide/EnvItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/f401/aide/preference/EnvironmentPreference;->showEditDialog(Lnet/f401/aide/EnvItem;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 46
    check-cast v0, Lnet/f401/aide/EnvItem;

    invoke-direct {p0, v1}, Lnet/f401/aide/preference/EnvironmentPreference;->showEditDialog(Lnet/f401/aide/EnvItem;)V

    move v0, v2

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    .line 71
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    invoke-virtual {p0, v0}, Lnet/f401/aide/preference/EnvironmentPreference;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    invoke-direct {v1, p0}, Lnet/f401/aide/preference/EnvironmentPreference$100000002;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
