.class abstract Lcom/sun/tools/javac/jvm/Items$Item;
.super Ljava/lang/Object;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Item"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Items;

.field typecode:I


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;I)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$Item;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p2, p0, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    .line 229
    return-void
.end method


# virtual methods
.method coerce(I)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 6

    .line 286
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    if-ne v0, p1, :cond_0

    .line 300
    :goto_0
    return-object p0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 290
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v2

    .line 291
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v1

    .line 292
    if-eq v2, v1, :cond_1

    .line 293
    if-le v1, v2, :cond_3

    add-int/lit8 v0, v1, -0x1

    .line 295
    :goto_1
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$Item;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    mul-int/lit8 v2, v2, 0x3

    add-int/lit16 v2, v2, 0x85

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 297
    :cond_1
    if-eq p1, v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$Item;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    add-int/lit16 v1, p1, 0x91

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$Item;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object p0, v0, p1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 294
    goto :goto_1
.end method

.method coerce(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 310
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Items$Item;->coerce(I)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    return-object v0
.end method

.method drop()V
    .registers 1

    .line 262
    return-void
.end method

.method duplicate()V
    .registers 1

    .line 256
    return-void
.end method

.method invoke()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 2

    .line 249
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 2

    .line 235
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method mkCond()Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 3

    .line 276
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$Item;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    .line 277
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$Item;->this$0:Lcom/sun/tools/javac/jvm/Items;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    return-object v0
.end method

.method stash(I)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$Item;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 270
    return-void
.end method

.method store()V
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "store unsupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method width()I
    .registers 2

    .line 317
    const/4 v0, 0x0

    return v0
.end method
