.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;

.field final val$p1:Landroid/view/MenuItem;

.field final val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$p1:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$p1:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->-$$Nest$mviewChineseDoc3(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$p1:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->-$$Nest$mviewChineseDoc2(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$p1:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;->-$$Nest$mviewChineseDoc(Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
