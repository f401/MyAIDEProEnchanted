.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field final val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field final val$projectResPath:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$projectResPath:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/high16 v3, 0x41c00000    # 24.0f

    .line 140
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u56fe\u6807\u540d\uff1a"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->val$item:Lcom/s1243808733/aide/application/activity/icons/Icon;

    const-string v4, ".xml"

    invoke-virtual {v0, v4}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5bfc\u5165"

    :goto_1
    new-instance v2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$2;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2$2;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return v5

    .line 145
    :cond_0
    const-string v0, "Icon name:"

    goto :goto_0

    .line 154
    :cond_1
    const-string v0, "Import"

    goto :goto_1
.end method
