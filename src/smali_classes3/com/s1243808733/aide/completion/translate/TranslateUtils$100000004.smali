.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final val$adapter:Landroid/widget/BaseAdapter;

.field private final val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/translate/TranslateTable;Landroid/widget/BaseAdapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;->val$adapter:Landroid/widget/BaseAdapter;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 236
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return v3

    .line 237
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "Delete DbException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
