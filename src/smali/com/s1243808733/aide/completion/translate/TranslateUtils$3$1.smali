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
    .registers 3
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
    .registers 5

    .line 194
    iget-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->val$editor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object p2, p2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$source:Ljava/lang/String;

    invoke-static {p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_3f

    .line 198
    :try_start_15
    new-instance p2, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-direct {p2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object v1, v1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$source:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setSource(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2, v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 202
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 203
    iget-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object p1, p1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_4f

    :catch_36
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_4f

    .line 208
    :cond_3f
    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2, v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 210
    invoke-static {p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V

    .line 211
    iget-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    iget-object p1, p1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_4f
    return-void
.end method
