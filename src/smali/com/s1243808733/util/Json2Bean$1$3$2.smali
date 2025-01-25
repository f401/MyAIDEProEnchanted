.class Lcom/s1243808733/util/Json2Bean$1$3$2;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/util/Json2Bean$1$3;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1$3;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$3$2;->this$1:Lcom/s1243808733/util/Json2Bean$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 216
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$3$2;->this$1:Lcom/s1243808733/util/Json2Bean$1$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$1$3;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
