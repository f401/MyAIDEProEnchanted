.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

.field final val$editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->val$editor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->val$editor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object v1, v1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$source:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 198
    :try_start_0
    new-instance v1, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-direct {v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object v2, v2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setSource(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 202
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object v0, v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 210
    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V

    .line 211
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object v0, v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
