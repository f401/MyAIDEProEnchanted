.class Lcom/s1243808733/util/ChooseDir$1;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ChooseDir;-><init>(Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/ChooseDir;

.field final val$chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir;Lcom/s1243808733/util/ChooseDir$ChooseListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$1;->this$0:Lcom/s1243808733/util/ChooseDir;

    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$1;->val$chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 52
    iget-object p1, p0, Lcom/s1243808733/util/ChooseDir$1;->val$chooseListener:Lcom/s1243808733/util/ChooseDir$ChooseListener;

    iget-object p2, p0, Lcom/s1243808733/util/ChooseDir$1;->this$0:Lcom/s1243808733/util/ChooseDir;

    invoke-static {p2}, Lcom/s1243808733/util/ChooseDir;->-$$Nest$fgetadapter(Lcom/s1243808733/util/ChooseDir;)Lcom/s1243808733/util/ChooseDir$FileAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->-$$Nest$fgetcurrentDir(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/s1243808733/util/ChooseDir$ChooseListener;->onChooseed(Ljava/io/File;)V

    return-void
.end method
