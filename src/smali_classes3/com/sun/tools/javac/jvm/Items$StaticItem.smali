.class Lcom/sun/tools/javac/jvm/Items$StaticItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaticItem"
.end annotation


# instance fields
.field member:Lcom/sun/tools/javac/code/Symbol;

.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 492
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 493
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Items;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 494
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->member:Lcom/sun/tools/javac/code/Symbol;

    .line 495
    return-void
.end method


# virtual methods
.method invoke()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 6

    .line 507
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->member:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 508
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    .line 509
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/jvm/Code;->emitInvokestatic(ILcom/sun/tools/javac/code/Type;)V

    .line 510
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xb2

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 499
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method store()V
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xb3

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 504
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "static("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$StaticItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
