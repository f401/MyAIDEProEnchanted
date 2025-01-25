.class Lcom/sun/tools/javac/jvm/Items$SelfItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelfItem"
.end annotation


# instance fields
.field isSuper:Z

.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Z)V
    .registers 4

    .line 407
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$SelfItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 408
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 409
    iput-boolean p2, p0, Lcom/sun/tools/javac/jvm/Items$SelfItem;->isSuper:Z

    .line 410
    return-void
.end method


# virtual methods
.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$SelfItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 414
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$SelfItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$SelfItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 418
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Items$SelfItem;->isSuper:Z

    if-eqz v0, :cond_7

    const-string v0, "super"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "this"

    goto :goto_6
.end method
