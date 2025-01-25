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
    .registers 6
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
    .registers 5

    .line 111
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 113
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "复制名称"

    goto :goto_1a

    :cond_18
    const-string v1, "Copy name"

    :goto_1a
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 114
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 123
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "复制ID"

    goto :goto_31

    :cond_2f
    const-string v1, "Copy id"

    :goto_31
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 124
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 133
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "复制Java引用"

    goto :goto_48

    :cond_46
    const-string v1, "Copy java Quote"

    :goto_48
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$3;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$3;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 134
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 144
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentTextAppearance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 145
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "复制XML引用"

    goto :goto_6d

    :cond_6b
    const-string v1, "Copy Xml Quote"

    :goto_6d
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$4;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$4;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V

    .line 146
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 157
    :cond_79
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
