.class Lcom/s1243808733/aide/filebrowser/FileOptions$4;
.super Ljava/lang/Object;
.source "FileOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/filebrowser/FileOptions;->showLoadDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_16

    .line 369
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_16

    .line 371
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->-$$Nest$sfgetpd()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 372
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->-$$Nest$sfputpd(Landroid/app/ProgressDialog;)V

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
