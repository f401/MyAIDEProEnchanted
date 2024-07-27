.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final val$context:Landroid/content/Context;

.field private final val$sourceEntity:Lcom/aide/engine/SourceEntity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/aide/engine/SourceEntity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->val$sourceEntity:Lcom/aide/engine/SourceEntity;

    return-void
.end method

.method static synthetic access$1000010(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->viewChineseDoc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000011(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->viewChineseDoc2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000012(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->viewChineseDoc3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private viewChineseDoc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://developer.android.google.cn/reference/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private viewChineseDoc2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "http://www.android-doc.com/reference/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private viewChineseDoc3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://www.apiref.com/android-zh/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private viewDoc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://developer.android.com/reference/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x0

    .line 281
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->val$sourceEntity:Lcom/aide/engine/SourceEntity;

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

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;

    invoke-direct {v2, p0, p1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;-><init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Landroid/view/MenuItem;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Android Api"

    aput-object v3, v0, v5

    const/4 v3, 0x1

    const-string v4, "Android Api\uff08android-doc\uff09"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "Android Api\uff08apiref\uff09"

    aput-object v4, v0, v3

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 322
    :goto_0
    return v5

    .line 311
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->viewDoc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
