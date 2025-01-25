.class Lcom/sun/tools/javac/jvm/Items$LocalItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalItem"
.end annotation


# instance fields
.field reg:I

.field final this$0:Lcom/sun/tools/javac/jvm/Items;

.field type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;I)V
    .registers 5

    .line 437
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 438
    invoke-static {p2}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 439
    if-ltz p3, :cond_14

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 440
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->type:Lcom/sun/tools/javac/code/Type;

    .line 441
    iput p3, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    .line 442
    return-void

    .line 439
    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method incr(I)V
    .registers 5

    .line 461
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    if-nez v0, :cond_18

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_18

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_18

    .line 462
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x84

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop1w(III)V

    .line 475
    :goto_17
    return-void

    .line 464
    :cond_18
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 465
    if-ltz p1, :cond_4a

    .line 466
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 467
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 472
    :goto_37
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeStackItem(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items$Item;->coerce(I)Lcom/sun/tools/javac/jvm/Items$Item;

    .line 473
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$LocalItem;->store()V

    goto :goto_17

    .line 469
    :cond_4a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    neg-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Items;->makeImmediateItem(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 470
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_37
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 4

    .line 445
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_24

    .line 446
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1a

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 449
    :goto_19
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0

    .line 448
    :cond_24
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop1w(II)V

    goto :goto_19
.end method

.method store()V
    .registers 4

    .line 453
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_23

    .line 454
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3b

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 457
    :goto_19
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->setDefined(I)V

    .line 458
    return-void

    .line 456
    :cond_23
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->typecode:I

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop1w(II)V

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localItem(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; reg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
