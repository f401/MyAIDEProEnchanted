.class Lcom/s1243808733/util/Json2Bean$1$1$2;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final val$input_outpath:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1$1;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$2;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$1$1$2;->val$input_outpath:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 159
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$2;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    if-nez p1, :cond_d

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$2;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    .line 160
    :goto_13
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$2;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/s1243808733/util/Json2Bean$1$1$2$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Json2Bean$1$1$2$1;-><init>(Lcom/s1243808733/util/Json2Bean$1$1$2;)V

    invoke-static {v0, p1, v1}, Lcom/s1243808733/util/ChooseDir;->showDialog(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V

    return-void
.end method
