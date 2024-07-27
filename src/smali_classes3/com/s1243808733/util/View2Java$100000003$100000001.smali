.class Lcom/s1243808733/util/View2Java$100000003$100000001;
.super Ljava/lang/Object;
.source "View2Java.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/View2Java$100000003;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/View2Java$100000003;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/View2Java$100000003$100000001;->this$0:Lcom/s1243808733/util/View2Java$100000003;

    iput-object p2, p0, Lcom/s1243808733/util/View2Java$100000003$100000001;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/util/View2Java$100000003$100000001;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/View2Java$100000003$100000001;)Lcom/s1243808733/util/View2Java$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003$100000001;->this$0:Lcom/s1243808733/util/View2Java$100000003;

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

    .line 69
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003$100000001;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/s1243808733/util/View2Java$100000003$100000001;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
