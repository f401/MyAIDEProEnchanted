.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;
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

.field final val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/translate/TranslateTable;Landroid/widget/BaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    .line 236
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;->val$items:Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
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
