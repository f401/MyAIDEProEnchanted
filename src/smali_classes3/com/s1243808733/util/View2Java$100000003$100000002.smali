.class Lcom/s1243808733/util/View2Java$100000003$100000002;
.super Ljava/lang/Object;
.source "View2Java.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/View2Java$100000003;

.field private final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/View2Java$100000003;Landroid/app/AlertDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/View2Java$100000003$100000002;->this$0:Lcom/s1243808733/util/View2Java$100000003;

    iput-object p2, p0, Lcom/s1243808733/util/View2Java$100000003$100000002;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/View2Java$100000003$100000002;)Lcom/s1243808733/util/View2Java$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003$100000002;->this$0:Lcom/s1243808733/util/View2Java$100000003;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003$100000002;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
