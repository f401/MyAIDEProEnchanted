.class Lcom/s1243808733/util/ChooseDir$2$1;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ChooseDir$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/util/ChooseDir$2;

.field final val$dialog2:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$2;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$2$1;->this$1:Lcom/s1243808733/util/ChooseDir$2;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$2$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/util/ChooseDir$2$1;->val$dialog2:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$2$1;->this$1:Lcom/s1243808733/util/ChooseDir$2;

    iget-object v1, v1, Lcom/s1243808733/util/ChooseDir$2;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->-$$Nest$fgetcurrentDir(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/util/ChooseDir$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$2$1;->this$1:Lcom/s1243808733/util/ChooseDir$2;

    iget-object v0, v0, Lcom/s1243808733/util/ChooseDir$2;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->reload()V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$2$1;->val$dialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "!f.mkdirs()"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;)Landroid/widget/Toast;

    goto :goto_0
.end method
