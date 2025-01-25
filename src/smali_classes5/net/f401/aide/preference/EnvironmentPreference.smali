.class public Lnet/f401/aide/preference/EnvironmentPreference;
.super Landroid/app/ListFragment;
.source "EnvironmentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/f401/aide/preference/EnvironmentPreference$100000002;,
        Lnet/f401/aide/preference/EnvironmentPreference$100000003;
    }
.end annotation


# instance fields
.field private adapter:Lnet/f401/aide/EnvPreferenceAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 32
    new-instance v0, Lnet/f401/aide/EnvPreferenceAdapter;

    invoke-direct {v0}, Lnet/f401/aide/EnvPreferenceAdapter;-><init>()V

    iput-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    return-void
.end method

.method static synthetic access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;
    .registers 1

    iget-object p0, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    return-object p0
.end method

.method static synthetic access$S1000000(Lnet/f401/aide/preference/EnvironmentPreference;Lnet/f401/aide/EnvPreferenceAdapter;)V
    .registers 2

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    return-void
.end method

.method private showEditDialog(Lnet/f401/aide/EnvItem;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/f401/aide/EnvItem;",
            ")V"
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 114
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEms(I)V

    .line 115
    const-string v5, "名字"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 118
    const/16 v7, 0x14

    int-to-float v7, v7

    invoke-static {v7}, Lcom/blankj/utilcode/util/ConvertUtils;->dp2px(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 125
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setEms(I)V

    .line 126
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    if-eqz p1, :cond_62

    .line 129
    invoke-virtual {p1}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lnet/f401/aide/EnvItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_62
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v6, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;

    invoke-direct {v0, p0, v2, v6}, Lnet/f401/aide/preference/EnvironmentPreference$100000003;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const-string v1, "确定"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
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

    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 38
    const/4 p2, 0x1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 39
    const p2, 0x7f070178

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 40
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/f401/aide/preference/EnvironmentPreference;->setHasOptionsMenu(Z)V

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x1010054

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 64
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
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
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    invoke-virtual {p1, p3}, Lnet/f401/aide/EnvPreferenceAdapter;->getItem(I)Lnet/f401/aide/EnvItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/f401/aide/preference/EnvironmentPreference;->showEditDialog(Lnet/f401/aide/EnvItem;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 46
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lnet/f401/aide/EnvItem;

    invoke-direct {p0, p1}, Lnet/f401/aide/preference/EnvironmentPreference;->showEditDialog(Lnet/f401/aide/EnvItem;)V

    .line 47
    return v1

    .line 49
    :cond_f
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
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
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference;->adapter:Lnet/f401/aide/EnvPreferenceAdapter;

    invoke-virtual {p0, p1}, Lnet/f401/aide/preference/EnvironmentPreference;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {p0}, Lnet/f401/aide/preference/EnvironmentPreference;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    invoke-direct {p2, p0}, Lnet/f401/aide/preference/EnvironmentPreference$100000002;-><init>(Lnet/f401/aide/preference/EnvironmentPreference;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
