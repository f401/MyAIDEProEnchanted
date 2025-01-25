.class Lcom/sun/tools/javac/jvm/Items$IndexedItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexedItem"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 363
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 364
    invoke-static {p2}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 365
    return-void
.end method


# virtual methods
.method drop()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 382
    return-void
.end method

.method duplicate()V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 378
    return-void
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->typecode:I

    add-int/lit8 v1, v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 369
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method stash(I)V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->width(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 386
    return-void
.end method

.method store()V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->typecode:I

    add-int/lit8 v1, v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 374
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "indexed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/tools/javac/jvm/ByteCodes;->typecodeNames:[Ljava/lang/String;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$IndexedItem;->typecode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method width()I
    .registers 2

    .line 389
    const/4 v0, 0x2

    return v0
.end method
