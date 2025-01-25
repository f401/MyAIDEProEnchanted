.class Lcom/s1243808733/aide/AideMainActivity$21$1;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity$21;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/AideMainActivity$21;

.field final val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity$21;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1232
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$21$1;->this$1:Lcom/s1243808733/aide/AideMainActivity$21;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$21$1;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1236
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$21$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    return-void
.end method
