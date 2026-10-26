.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

.field final val$code_java:Ljava/lang/String;

.field final val$code_xml:Ljava/lang/String;

.field final val$id:I

.field final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$id:I

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$code_java:Ljava/lang/String;

    iput-object p5, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$code_xml:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 111
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

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

    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 114
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 123
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u590d\u5236ID"

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 124
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 133
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u590d\u5236Java\u5f15\u7528"

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$3;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$3;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 134
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 144
    const-string v0, "FragmentTextAppearance"

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

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

    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$4;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$4;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 146
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
