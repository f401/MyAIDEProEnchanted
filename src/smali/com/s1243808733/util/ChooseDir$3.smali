.class Lcom/s1243808733/util/ChooseDir$3;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ChooseDir;-><init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/ChooseDir;

.field final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$3;->this$0:Lcom/s1243808733/util/ChooseDir;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1a

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1a

    .line 110
    iget-object p1, p0, Lcom/s1243808733/util/ChooseDir$3;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {p1}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->-$$Nest$mgoBack(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 111
    iget-object p1, p0, Lcom/s1243808733/util/ChooseDir$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
