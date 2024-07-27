.class Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;)Lcom/s1243808733/aide/highlight/HighlightActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/16 v4, 0x18

    const/4 v6, -0x1

    .line 230
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 231
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    int-to-float v2, v4

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    const/16 v3, 0xa

    int-to-float v3, v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    const/16 v5, 0x10

    int-to-float v5, v5

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 234
    new-instance v3, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v3, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 235
    const/4 v2, -0x2

    invoke-virtual {v0, v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 238
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5bfc\u5165"

    move-object v2, v0

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 248
    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000005;

    invoke-direct {v1, p0, v0, v3}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000005;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;

    invoke-direct {v2, p0, v0, v3}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007$100000006;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const-string v0, ""

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_0
    const-string v0, "Import"

    move-object v2, v0

    goto :goto_0
.end method
