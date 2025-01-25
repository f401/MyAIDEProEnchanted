.class Lcom/s1243808733/util/JavaEscape$1;
.super Ljava/lang/Object;
.source "JavaEscape.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/JavaEscape;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/s1243808733/util/JavaEscape$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_e

    .line 47
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_e

    .line 48
    iget-object p1, p0, Lcom/s1243808733/util/JavaEscape$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
