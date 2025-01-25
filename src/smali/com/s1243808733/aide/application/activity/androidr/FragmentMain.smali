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
.method static bridge synthetic -$$Nest$fgetfragmentAdapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 21
    new-instance p1, Lcom/s1243808733/widget/CustomListView;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 26
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    check-cast p1, Landroid/widget/ListView;

    .line 29
    new-instance p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter-IA;)V

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    .line 30
    const-string v0, "String"

    const-string v1, "FragmentString"

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v0, "Color"

    const-string v1, "FragmentColor"

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v0, "Theme"

    const-string v1, "FragmentTheme"

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v0, "Drawable"

    const-string v1, "FragmentDrawable"

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    const-string v0, "TextAppearance"

    const-string v1, "FragmentTextAppearance"

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1090003

    const v2, 0x1020014

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    .line 37
    :goto_48
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 38
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->fragmentAdapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 41
    :cond_5c
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;

    invoke-direct {p2, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
