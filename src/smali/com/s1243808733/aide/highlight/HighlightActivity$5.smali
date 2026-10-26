.class Lcom/s1243808733/aide/highlight/HighlightActivity$5;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/highlight/HighlightActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, -0x1

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    .line 231
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 234
    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    .line 233
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 236
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 239
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 243
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5bfc\u5165"

    :goto_0
    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 249
    new-instance v2, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity$5;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 267
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity$5$2;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity$5;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    const-string v0, "Import"

    goto :goto_0
.end method
