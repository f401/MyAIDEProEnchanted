.class Lnet/f401/aide/preference/EnvironmentPreference$100000002;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/preference/EnvironmentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;,
        Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;
    }
.end annotation


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000002;)Lnet/f401/aide/preference/EnvironmentPreference;
    .registers 1

    iget-object p0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object p0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 77
    new-instance p1, Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    iget-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {p2}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lnet/f401/aide/EnvPreferenceAdapter;->getItem(I)Lnet/f401/aide/EnvItem;

    move-result-object p2

    invoke-virtual {p2}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p4

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p5

    if-eqz p5, :cond_24

    const-string p5, "删除"

    goto :goto_26

    :cond_24
    const-string p5, "Delete"

    :goto_26
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p4, v0, v0, v1, p5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    new-instance p5, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;

    invoke-direct {p5, p0, p3, p2}, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000000;-><init>(Lnet/f401/aide/preference/EnvironmentPreference$100000002;ILjava/lang/String;)V

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 90
    sget-object p4, Lnet/f401/aide/FUtils;->DEFAULT_MAP:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_58

    .line 91
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p4

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p5

    if-eqz p5, :cond_49

    const-string p5, "还原"

    goto :goto_4b

    :cond_49
    const-string p5, "Rollback"

    :goto_4b
    const/4 v1, 0x2

    invoke-interface {p4, v0, v1, v0, p5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    new-instance p5, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;

    invoke-direct {p5, p0, p3, p2}, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;-><init>(Lnet/f401/aide/preference/EnvironmentPreference$100000002;ILjava/lang/String;)V

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 101
    :cond_58
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 102
    return v0
.end method
