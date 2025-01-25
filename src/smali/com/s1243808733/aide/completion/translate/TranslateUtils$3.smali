.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/completion/translate/TranslateUtils;->onItemLongClick(Lcom/aide/ui/views/CompletionListView;Lcom/aide/engine/SourceEntity;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$adapter:Landroid/widget/BaseAdapter;

.field final val$context:Landroid/content/Context;

.field final val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

.field final val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/s1243808733/aide/completion/translate/TranslateTable;Ljava/lang/String;Landroid/widget/BaseAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    iput-object p3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 10

    .line 154
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    const/high16 v3, 0x41c00000  # 24.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x41200000  # 10.0f

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 160
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 161
    iget-object v4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    if-nez v4, :cond_34

    iget-object v4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$source:Ljava/lang/String;

    goto :goto_38

    :cond_34
    invoke-virtual {v4}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getSource()Ljava/lang/String;

    move-result-object v4

    :goto_38
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 163
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 166
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    const-string v5, "翻译后："

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const/high16 v5, 0x41800000  # 16.0f

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    const/high16 v7, 0x40a00000  # 5.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    new-instance v5, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v7, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    if-eqz v7, :cond_79

    invoke-virtual {v7}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v7

    if-ne v7, v2, :cond_79

    .line 171
    iget-object v7, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-virtual {v7}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_79
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 184
    nop

    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;

    invoke-direct {v0, p0, v5}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;-><init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;Landroid/widget/EditText;)V

    .line 188
    const-string v1, "保存"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 215
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 218
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 220
    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    .line 221
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    return v6
.end method
