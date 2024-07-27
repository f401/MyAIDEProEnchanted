.class Lcom/sun/tools/javac/jvm/Items$AssignItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssignItem"
.end annotation


# instance fields
.field lhs:Lcom/sun/tools/javac/jvm/Items$Item;

.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/jvm/Items$Item;)V
    .registers 4

    .line 732
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 733
    iget v0, p2, Lcom/sun/tools/javac/jvm/Items$Item;->typecode:I

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 734
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->lhs:Lcom/sun/tools/javac/jvm/Items$Item;

    .line 735
    return-void
.end method


# virtual methods
.method drop()V
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->lhs:Lcom/sun/tools/javac/jvm/Items$Item;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->store()V

    .line 749
    return-void
.end method

.method duplicate()V
    .registers 2

    .line 744
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$AssignItem;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 745
    return-void
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->lhs:Lcom/sun/tools/javac/jvm/Items$Item;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->typecode:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Items$Item;->stash(I)V

    .line 739
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->lhs:Lcom/sun/tools/javac/jvm/Items$Item;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->store()V

    .line 740
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method stash(I)V
    .registers 2

    .line 752
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 753
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assign(lhs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->lhs:Lcom/sun/tools/javac/jvm/Items$Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method width()I
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->lhs:Lcom/sun/tools/javac/jvm/Items$Item;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->width()I

    move-result v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$AssignItem;->typecode:I

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->width(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
