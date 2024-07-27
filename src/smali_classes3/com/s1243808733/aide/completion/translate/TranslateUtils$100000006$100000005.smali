.class Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;
.super Ljava/lang/Object;
.source "TranslateUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

.field private final val$p1:Landroid/view/MenuItem;

.field private final val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Landroid/view/MenuItem;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

    iput-object p2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$p1:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$path:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;)Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

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

    .line 294
    packed-switch p2, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$p1:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->access$1000010(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$p1:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->access$1000011(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->this$0:Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$p1:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006$100000005;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;->access$1000012(Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
