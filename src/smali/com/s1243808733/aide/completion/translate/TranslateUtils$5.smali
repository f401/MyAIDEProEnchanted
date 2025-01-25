.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;
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
.field final val$context:Landroid/content/Context;

.field final val$sourceEntity:Lcom/aide/engine/SourceEntity;


# direct methods
.method static bridge synthetic -$$Nest$mviewChineseDoc(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->viewChineseDoc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mviewChineseDoc2(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->viewChineseDoc2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mviewChineseDoc3(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->viewChineseDoc3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/aide/engine/SourceEntity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->val$sourceEntity:Lcom/aide/engine/SourceEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private openBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 257
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    iget-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private viewChineseDoc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://developer.android.google.cn/reference/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private viewChineseDoc2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.android-doc.com/reference/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private viewChineseDoc3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.apiref.com/android-zh/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private viewDoc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://developer.android.com/reference/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    .line 281
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->val$sourceEntity:Lcom/aide/engine/SourceEntity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "BT"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    .line 284
    nop

    .line 285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->val$context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;-><init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 288
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "Android Api"

    aput-object v0, p1, v2

    const/4 v0, 0x1

    const-string v4, "Android Api（android-doc）"

    aput-object v4, p1, v0

    const/4 v0, 0x2

    const-string v4, "Android Api（apiref）"

    aput-object v4, p1, v0

    invoke-virtual {v1, p1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_56

    .line 311
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->viewDoc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return v2
.end method
