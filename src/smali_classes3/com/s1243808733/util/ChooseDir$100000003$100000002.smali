.class Lcom/s1243808733/util/ChooseDir$100000003$100000002;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir$100000003;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$100000003;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000002;->this$0:Lcom/s1243808733/util/ChooseDir$100000003;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$100000003$100000002;)Lcom/s1243808733/util/ChooseDir$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$100000003$100000002;->this$0:Lcom/s1243808733/util/ChooseDir$100000003;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
