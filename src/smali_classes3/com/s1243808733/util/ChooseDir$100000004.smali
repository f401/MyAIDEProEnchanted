.class Lcom/s1243808733/util/ChooseDir$100000004;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir;

.field private final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir;Landroid/app/AlertDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$100000004;->this$0:Lcom/s1243808733/util/ChooseDir;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$100000004;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$100000004;)Lcom/s1243808733/util/ChooseDir;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000004;->this$0:Lcom/s1243808733/util/ChooseDir;

    return-object v0
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 109
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000004;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir;->access$L1000000(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->access$1000012(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000004;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
