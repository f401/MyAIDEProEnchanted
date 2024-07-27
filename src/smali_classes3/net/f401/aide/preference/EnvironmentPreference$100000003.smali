.class Lnet/f401/aide/preference/EnvironmentPreference$100000003;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000003;)Lnet/f401/aide/preference/EnvironmentPreference;
    .registers 2

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 11
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

    const/4 v4, 0x1

    .line 105
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5220\u9664"

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v2, v4, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;

    invoke-direct {v2, p0, p3}, Lnet/f401/aide/preference/EnvironmentPreference$100000003$100000002;-><init>(Lnet/f401/aide/preference/EnvironmentPreference$100000003;I)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 115
    return v4

    .line 106
    :cond_0
    const-string v0, "Delete"

    goto :goto_0
.end method
