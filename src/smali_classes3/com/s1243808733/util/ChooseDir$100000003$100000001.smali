.class Lcom/s1243808733/util/ChooseDir$100000003$100000001;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir$100000003;

.field private final val$dialog2:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$100000003;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->this$0:Lcom/s1243808733/util/ChooseDir$100000003;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->val$dialog2:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$100000003$100000001;)Lcom/s1243808733/util/ChooseDir$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->this$0:Lcom/s1243808733/util/ChooseDir$100000003;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->this$0:Lcom/s1243808733/util/ChooseDir$100000003;

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir$100000003;->access$0(Lcom/s1243808733/util/ChooseDir$100000003;)Lcom/s1243808733/util/ChooseDir;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir;->access$L1000000(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->access$L1000010(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "!f.mkdirs()"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;)Landroid/widget/Toast;

    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->this$0:Lcom/s1243808733/util/ChooseDir$100000003;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir$100000003;->access$0(Lcom/s1243808733/util/ChooseDir$100000003;)Lcom/s1243808733/util/ChooseDir;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir;->access$L1000000(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->reload()V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000001;->val$dialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
