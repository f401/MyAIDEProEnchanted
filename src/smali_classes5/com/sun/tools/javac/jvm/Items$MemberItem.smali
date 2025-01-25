.class Lcom/sun/tools/javac/jvm/Items$MemberItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberItem"
.end annotation


# instance fields
.field member:Lcom/sun/tools/javac/code/Symbol;

.field nonvirtual:Z

.field final this$0:Lcom/sun/tools/javac/jvm/Items;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Symbol;Z)V
    .registers 5

    .line 533
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 534
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Items;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 535
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    .line 536
    iput-boolean p3, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->nonvirtual:Z

    .line 537
    return-void
.end method


# virtual methods
.method drop()V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->drop()V

    .line 567
    return-void
.end method

.method duplicate()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 563
    return-void
.end method

.method invoke()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 7

    .line 549
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 550
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    .line 551
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3d

    .line 552
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/jvm/Code;->emitInvokeinterface(ILcom/sun/tools/javac/code/Type;)V

    .line 558
    :goto_34
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0

    .line 553
    :cond_3d
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->nonvirtual:Z

    if-eqz v2, :cond_53

    .line 554
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/jvm/Code;->emitInvokespecial(ILcom/sun/tools/javac/code/Type;)V

    goto :goto_34

    .line 556
    :cond_53
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/jvm/Code;->emitInvokevirtual(ILcom/sun/tools/javac/code/Type;)V

    goto :goto_34
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 5

    .line 540
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xb4

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 541
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method stash(I)V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/jvm/Items$Item;->stash(I)V

    .line 571
    return-void
.end method

.method store()V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v1, 0xb5

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 546
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "member("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->member:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Items$MemberItem;->nonvirtual:Z

    if-eqz v0, :cond_1d

    const-string v0, " nonvirtual)"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    const-string v0, ")"

    goto :goto_15
.end method

.method width()I
    .registers 2

    .line 574
    const/4 v0, 0x1

    return v0
.end method
