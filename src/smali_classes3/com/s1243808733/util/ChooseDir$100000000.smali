.class Lcom/s1243808733/util/ChooseDir$100000000;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir;

.field private final val$chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$100000000;->this$0:Lcom/s1243808733/util/ChooseDir;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$100000000;->val$chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$100000000;)Lcom/s1243808733/util/ChooseDir;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000000;->this$0:Lcom/s1243808733/util/ChooseDir;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000000;->val$chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;

    iget-object v1, p0, Lcom/s1243808733/util/ChooseDir$100000000;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir;->access$L1000000(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->access$L1000010(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/s1243808733/util/ChooseDir$ChooseListener;->onChooseed(Ljava/io/File;)V

    return-void
.end method
