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
    .locals 0
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
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$3;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->-$$Nest$mgoBack(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
