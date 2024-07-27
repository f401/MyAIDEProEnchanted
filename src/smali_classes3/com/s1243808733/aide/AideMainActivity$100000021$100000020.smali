.class Lcom/s1243808733/aide/AideMainActivity$100000021$100000020;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity$100000021;

.field private final val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity$100000021;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000021$100000020;->this$0:Lcom/s1243808733/aide/AideMainActivity$100000021;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000021$100000020;->val$et:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000021$100000020;)Lcom/s1243808733/aide/AideMainActivity$100000021;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000021$100000020;->this$0:Lcom/s1243808733/aide/AideMainActivity$100000021;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000021$100000020;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    return-void
.end method
