.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final val$adapter:Landroid/widget/BaseAdapter;

.field private final val$context:Landroid/content/Context;

.field private final val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

.field private final val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/s1243808733/aide/completion/translate/TranslateTable;Ljava/lang/String;Landroid/widget/BaseAdapter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    iput-object p3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$adapter:Landroid/widget/BaseAdapter;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v4, 0x18

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    int-to-float v0, v4

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    const/16 v3, 0xa

    int-to-float v3, v3

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 160
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$source:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 163
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 166
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    const-string/jumbo v4, "\u7ffb\u8bd1\u540e\uff1a"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const/16 v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v0, v6, v4, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v5, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-virtual {v5}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 171
    iget-object v5, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-virtual {v5}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v1, v2, v8, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 182
    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58"

    new-instance v2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;

    iget-object v3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$source:Ljava/lang/String;

    iget-object v5, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {v2, p0, v4, v3, v5}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;-><init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 220
    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 221
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 224
    return v6

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getSource()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
