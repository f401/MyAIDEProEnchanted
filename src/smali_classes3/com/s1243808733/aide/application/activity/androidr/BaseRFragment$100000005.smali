.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

.field private final val$code_java:Ljava/lang/String;

.field private final val$code_xml:Ljava/lang/String;

.field private final val$id:I

.field private final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$id:I

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$code_java:Ljava/lang/String;

    iput-object p5, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$code_xml:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 111
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 113
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u590d\u5236\u540d\u79f0"

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000001;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$name:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000001;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 123
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u590d\u5236ID"

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;

    iget v4, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$id:I

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;I)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 133
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u590d\u5236Java\u5f15\u7528"

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000003;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$code_java:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000003;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 144
    sget-object v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTag;->TAG_TEXTAPPEARANCE:Ljava/lang/String;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u590d\u5236XML\u5f15\u7528"

    :goto_3
    invoke-interface {v2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->val$code_xml:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 113
    :cond_1
    const-string v0, "Copy name"

    goto :goto_0

    .line 123
    :cond_2
    const-string v0, "Copy id"

    goto :goto_1

    .line 133
    :cond_3
    const-string v0, "Copy java Quote"

    goto :goto_2

    .line 145
    :cond_4
    const-string v0, "Copy Xml Quote"

    goto :goto_3
.end method
