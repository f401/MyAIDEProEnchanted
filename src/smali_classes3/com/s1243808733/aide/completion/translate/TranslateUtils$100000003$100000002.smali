.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;

.field private final val$adapter:Landroid/widget/BaseAdapter;

.field private final val$editor:Landroid/widget/EditText;

.field private final val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/BaseAdapter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$editor:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$adapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;)Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$editor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$source:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v1

    .line 196
    if-nez v1, :cond_0

    .line 198
    :try_start_0
    new-instance v1, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-direct {v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$source:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$adapter:Landroid/widget/BaseAdapter;

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
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003$100000002;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
