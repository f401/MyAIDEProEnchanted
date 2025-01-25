.class Lcom/s1243808733/util/View2Java$2$2;
.super Ljava/lang/Object;
.source "View2Java.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/s1243808733/util/View2Java$2;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/s1243808733/util/View2Java$2$2;->this$0:Lcom/s1243808733/util/View2Java$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 81
    iget-object p1, p0, Lcom/s1243808733/util/View2Java$2$2;->this$0:Lcom/s1243808733/util/View2Java$2;

    iget-object p1, p1, Lcom/s1243808733/util/View2Java$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
