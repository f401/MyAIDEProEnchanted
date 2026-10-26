.class Lcom/s1243808733/util/EscapeUtils$1;
.super Ljava/lang/Object;
.source "EscapeUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/EscapeUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/EscapeUtils;

.field final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/EscapeUtils;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/s1243808733/util/EscapeUtils$1;->this$0:Lcom/s1243808733/util/EscapeUtils;

    iput-object p2, p0, Lcom/s1243808733/util/EscapeUtils$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/s1243808733/util/EscapeUtils$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
