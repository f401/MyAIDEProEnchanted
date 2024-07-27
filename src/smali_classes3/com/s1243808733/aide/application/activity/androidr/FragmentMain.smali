.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;
.super Landroid/app/Fragment;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;
    }
.end annotation


# instance fields
.field private fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 21
    new-instance v0, Lcom/s1243808733/widget/CustomListView;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7
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

    .line 26
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    check-cast p1, Landroid/widget/ListView;

    .line 29
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    .line 30
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v1, "String"

    const-string v2, "FragmentString"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v1, "Color"

    const-string v2, "FragmentColor"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v1, "Theme"

    const-string v2, "FragmentTheme"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v1, "Drawable"

    const-string v2, "FragmentDrawable"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v1, "TextAppearance"

    const-string v2, "FragmentTextAppearance"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x1090003

    const v3, 0x1020014

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 37
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
