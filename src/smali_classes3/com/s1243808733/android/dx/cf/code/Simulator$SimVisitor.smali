.class Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;
.super Ljava/lang/Object;
.source "Simulator.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/Simulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimVisitor"
.end annotation


# instance fields
.field private frame:Lcom/s1243808733/android/dx/cf/code/Frame;

.field private final machine:Lcom/s1243808733/android/dx/cf/code/Machine;

.field private previousOffset:I

.field private final this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Simulator;)V
    .registers 3

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    .line 237
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$L1000001(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/Machine;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    .line 238
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/Frame;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;)Lcom/s1243808733/android/dx/cf/code/Simulator;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    return-object v0
.end method

.method private checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 574
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "return type mismatch: prototype "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "indicates "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ", but encountered type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000018(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 833
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return v0
.end method

.method public setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            ")V"
        }
    .end annotation

    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frame == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    return-void
.end method

.method public setPreviousOffset(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 827
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 758
    packed-switch p1, :pswitch_data_0

    .line 795
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    .line 801
    :goto_0
    return-void

    .line 765
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 800
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxTargetArg(I)V

    .line 801
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    goto :goto_0

    .line 770
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 779
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 784
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 791
    :pswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto :goto_1

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 656
    sparse-switch p1, :sswitch_data_0

    .line 744
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 749
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    .line 750
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 751
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void

    .line 658
    :sswitch_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_0

    :sswitch_1
    move-object v0, p4

    .line 662
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_0

    .line 669
    :sswitch_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_0

    :sswitch_3
    move-object v0, p4

    .line 673
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_0

    .line 685
    :sswitch_4
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v0, :cond_4

    .line 686
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-static {v2, p1, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000015(Lcom/s1243808733/android/dx/cf/code/Simulator;ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    .line 693
    :goto_1
    instance-of v0, v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 694
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 695
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000017(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V

    .line 704
    :cond_0
    const/16 v0, 0xb8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    move-object v0, v1

    .line 705
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 707
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v2, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    move-object p4, v1

    .line 708
    goto :goto_0

    .line 704
    :cond_1
    const/4 v0, 0x1

    move v2, v0

    goto :goto_2

    .line 711
    :sswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000014(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V

    .line 712
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 713
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    .line 717
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->addReference()Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    move-result-object p4

    goto/16 :goto_0

    .line 730
    :sswitch_6
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, p5}, Lcom/s1243808733/android/dx/rop/type/Prototype;->internInts(Lcom/s1243808733/android/dx/rop/type/Type;I)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    goto/16 :goto_0

    .line 737
    :sswitch_7
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_2

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_3

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000013(Lcom/s1243808733/android/dx/cf/code/Simulator;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto/16 :goto_0

    :cond_4
    move-object v1, p4

    goto :goto_1

    .line 656
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0xb3 -> :sswitch_1
        0xb4 -> :sswitch_2
        0xb5 -> :sswitch_3
        0xb6 -> :sswitch_4
        0xb7 -> :sswitch_4
        0xb8 -> :sswitch_4
        0xb9 -> :sswitch_4
        0xba -> :sswitch_5
        0xbd -> :sswitch_0
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_2
        0xc5 -> :sswitch_6
    .end sparse-switch
.end method

.method public visitInvalid(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 257
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 599
    const/16 v0, 0x36

    if-ne p1, v0, :cond_1

    add-int v0, p2, p3

    .line 601
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$L1000004(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v2

    invoke-virtual {v2, v0, p4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->pcAndIndexToLocal(II)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v3

    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object v0, v1

    .line 610
    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-object v2, p5

    .line 617
    :cond_0
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 644
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    .line 649
    :goto_2
    return-void

    :cond_1
    move v0, p2

    .line 599
    goto :goto_0

    :cond_2
    move-object v2, p5

    .line 614
    goto :goto_1

    .line 620
    :sswitch_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 621
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->localInfo(Z)V

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 649
    :goto_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    goto :goto_2

    .line 621
    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    .line 626
    :sswitch_1
    if-nez v0, :cond_4

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    .line 628
    :goto_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v3, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 629
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 630
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    goto :goto_4

    .line 626
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    goto :goto_5

    .line 634
    :sswitch_2
    if-nez v0, :cond_5

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    .line 636
    :goto_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 637
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 638
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 639
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p6}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    .line 640
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-static {p6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_4

    .line 634
    :cond_5
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    goto :goto_6

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x36 -> :sswitch_1
        0x84 -> :sswitch_2
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 819
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxInitValues(Ljava/util/ArrayList;)V

    .line 820
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 821
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    const/16 v2, 0xbc

    invoke-interface {v0, v1, p1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v5, 0x212

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    .line 264
    sparse-switch p1, :sswitch_data_0

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    .line 556
    :goto_0
    return-void

    .line 266
    :sswitch_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 555
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 556
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    goto :goto_0

    .line 270
    :sswitch_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 279
    :sswitch_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 285
    :sswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 291
    :sswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 297
    :sswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 301
    :sswitch_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 302
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 307
    :sswitch_7
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p4, v0, :cond_1b

    .line 312
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 314
    :goto_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 319
    :sswitch_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    goto :goto_1

    .line 327
    :sswitch_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArrayOrKnownNull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "type mismatch: expected array type but encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000018(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 338
    :sswitch_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 346
    :sswitch_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 347
    invoke-static {p4, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000008(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 351
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_3

    sget-object p4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 355
    :goto_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 351
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p4

    goto :goto_3

    .line 366
    :sswitch_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p4, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 372
    :sswitch_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, p4, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 376
    :sswitch_e
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 381
    :sswitch_f
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 386
    :sswitch_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 398
    :sswitch_11
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 399
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 400
    :goto_4
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 401
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekLocal(I)Z

    move-result v0

    .line 403
    invoke-static {p4, v1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000008(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 410
    if-eqz v0, :cond_4

    .line 411
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v1, v0, :cond_6

    sget-object p4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 416
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v2, v1, v3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 399
    goto :goto_4

    .line 411
    :cond_6
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p4

    goto :goto_5

    .line 421
    :sswitch_12
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 422
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 426
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 427
    const/16 v0, 0x11

    .line 436
    :goto_6
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 428
    :cond_7
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 430
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 431
    const/16 v0, 0x2121

    goto :goto_6

    .line 433
    :cond_8
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 442
    :sswitch_13
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 445
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 448
    :cond_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 449
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 453
    :sswitch_14
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 455
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-nez v1, :cond_b

    .line 457
    :cond_a
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 460
    :cond_b
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 461
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 465
    :sswitch_15
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 467
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 468
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 471
    :cond_c
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 473
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 474
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 475
    :cond_d
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 477
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 478
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 480
    :cond_e
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 485
    :sswitch_16
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 487
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 489
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 490
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 492
    :cond_f
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 493
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 496
    :cond_10
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 498
    :cond_11
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 500
    :cond_12
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 501
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 506
    :sswitch_17
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 508
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 509
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 511
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 512
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 513
    :cond_13
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 515
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 516
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 518
    :cond_14
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 520
    :cond_15
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 521
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 523
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 524
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 525
    :cond_16
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 527
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 528
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const v1, 0x432143

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 530
    :cond_17
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 533
    :cond_18
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 538
    :sswitch_18
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 540
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 542
    :cond_19
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 545
    :cond_1a
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 546
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    :cond_1b
    move-object v0, p4

    goto/16 :goto_2

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2e -> :sswitch_b
        0x4f -> :sswitch_11
        0x57 -> :sswitch_8
        0x58 -> :sswitch_12
        0x59 -> :sswitch_13
        0x5a -> :sswitch_14
        0x5b -> :sswitch_15
        0x5c -> :sswitch_12
        0x5d -> :sswitch_16
        0x5e -> :sswitch_17
        0x5f -> :sswitch_18
        0x60 -> :sswitch_c
        0x64 -> :sswitch_c
        0x68 -> :sswitch_c
        0x6c -> :sswitch_c
        0x70 -> :sswitch_c
        0x74 -> :sswitch_1
        0x78 -> :sswitch_d
        0x7a -> :sswitch_d
        0x7c -> :sswitch_d
        0x7e -> :sswitch_c
        0x80 -> :sswitch_c
        0x82 -> :sswitch_c
        0x85 -> :sswitch_2
        0x86 -> :sswitch_2
        0x87 -> :sswitch_2
        0x88 -> :sswitch_3
        0x89 -> :sswitch_3
        0x8a -> :sswitch_3
        0x8b -> :sswitch_4
        0x8c -> :sswitch_4
        0x8d -> :sswitch_4
        0x8e -> :sswitch_5
        0x8f -> :sswitch_5
        0x90 -> :sswitch_5
        0x91 -> :sswitch_2
        0x92 -> :sswitch_2
        0x93 -> :sswitch_2
        0x94 -> :sswitch_e
        0x95 -> :sswitch_f
        0x96 -> :sswitch_f
        0x97 -> :sswitch_10
        0x98 -> :sswitch_10
        0xac -> :sswitch_7
        0xb1 -> :sswitch_6
        0xbe -> :sswitch_9
        0xbf -> :sswitch_a
        0xc2 -> :sswitch_a
        0xc3 -> :sswitch_a
    .end sparse-switch
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/cf/code/SwitchList;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 809
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    .line 810
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxSwitchArg(Lcom/s1243808733/android/dx/cf/code/SwitchList;)V

    .line 811
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void
.end method
