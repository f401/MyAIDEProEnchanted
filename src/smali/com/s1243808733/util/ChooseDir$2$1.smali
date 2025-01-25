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
    .registers 4
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
    .registers 4

    .line 82
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$2$1;->this$1:Lcom/s1243808733/util/ChooseDir$2;

    iget-object v0, v0, Lcom/s1243808733/util/ChooseDir$2;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->-$$Nest$fgetcurrentDir(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 86
    iget-object p1, p0, Lcom/s1243808733/util/ChooseDir$2$1;->this$1:Lcom/s1243808733/util/ChooseDir$2;

    iget-object p1, p1, Lcom/s1243808733/util/ChooseDir$2;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {p1}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->reload()V

    .line 87
    iget-object p1, p0, Lcom/s1243808733/util/ChooseDir$2$1;->val$dialog2:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_3e

    .line 84
    :cond_32
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "!f.mkdirs()"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;)Landroid/widget/Toast;

    :goto_3e
    return-void
.end method
