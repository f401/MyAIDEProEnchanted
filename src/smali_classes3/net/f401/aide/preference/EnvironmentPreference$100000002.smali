.class Lnet/f401/aide/preference/EnvironmentPreference$100000002;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000002;)Lnet/f401/aide/preference/EnvironmentPreference;
    .locals 1

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    .line 77
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnet/f401/aide/EnvPreferenceAdapter;->getItem(I)Lnet/f401/aide/EnvItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5220\u9664"

    :goto_0
    const/4 v4, 0x0

    invoke-interface {v3, v5, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;

    invoke-direct {v3, p0, p3, v2}, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;-><init>(Lnet/f401/aide/preference/EnvironmentPreference$100000002;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 90
    sget-object v0, Lnet/f401/aide/FUtils;->DEFAULT_MAP:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8fd8\u539f"

    :goto_1
    const/4 v4, 0x2

    invoke-interface {v3, v5, v4, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;

    invoke-direct {v3, p0, p3, v2}, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;-><init>(Lnet/f401/aide/preference/EnvironmentPreference$100000002;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 102
    return v5

    .line 79
    :cond_1
    const-string v0, "Delete"

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "Rollback"

    goto :goto_1
.end method
