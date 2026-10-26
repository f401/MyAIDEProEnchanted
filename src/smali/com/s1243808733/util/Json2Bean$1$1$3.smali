.class Lcom/s1243808733/util/Json2Bean$1$1$3;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/util/Json2Bean$1$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1$1;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$3;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$3;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
