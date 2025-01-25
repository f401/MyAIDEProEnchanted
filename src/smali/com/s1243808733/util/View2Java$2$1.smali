.class Lcom/s1243808733/util/View2Java$2$1;
.super Ljava/lang/Object;
.source "View2Java.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/View2Java$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/View2Java$2;

.field final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/View2Java$2;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/s1243808733/util/View2Java$2$1;->this$0:Lcom/s1243808733/util/View2Java$2;

    iput-object p2, p0, Lcom/s1243808733/util/View2Java$2$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 69
    iget-object p1, p0, Lcom/s1243808733/util/View2Java$2$1;->val$result:Ljava/lang/String;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/s1243808733/util/View2Java$2$1;->this$0:Lcom/s1243808733/util/View2Java$2;

    iget-object p1, p1, Lcom/s1243808733/util/View2Java$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
