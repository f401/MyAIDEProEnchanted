.class Lcom/sun/tools/javac/jvm/Items$StackItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StackItem"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;I)V
    .registers 3

    .line 328
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$StackItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 330
    return-void
.end method


# virtual methods
.method drop()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StackItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$StackItem;->width()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    const/16 v0, 0x58

    :goto_d
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 342
    return-void

    .line 341
    :cond_11
    const/16 v0, 0x57

    goto :goto_d
.end method

.method duplicate()V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StackItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$StackItem;->width()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    const/16 v0, 0x5c

    :goto_d
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 338
    return-void

    .line 337
    :cond_11
    const/16 v0, 0x59

    goto :goto_d
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 1

    .line 333
    return-object p0
.end method

.method stash(I)V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$StackItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 346
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$StackItem;->width()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    const/16 v0, 0x5b

    :goto_d
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->width(I)I

    move-result v2

    .line 345
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 347
    return-void

    .line 346
    :cond_1a
    const/16 v0, 0x5a

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/tools/javac/jvm/ByteCodes;->typecodeNames:[Ljava/lang/String;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$StackItem;->typecode:I

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

    .line 350
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$StackItem;->typecode:I

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(I)I

    move-result v0

    return v0
.end method
