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

.field final this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Simulator;)V
    .locals 1

    .line 236
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$fgetmachine(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/Machine;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    return-void
.end method

.method private checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .locals 4

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

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return type mismatch: prototype indicates "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but encountered type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mfail(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .locals 1

    .line 833
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return v0
.end method

.method public setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 251
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frame == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviousOffset(I)V
    .locals 0

    .line 827
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 795
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    .line 801
    :goto_0
    return-void

    .line 784
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 800
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxTargetArg(I)V

    .line 801
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    goto :goto_0

    .line 779
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 765
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 791
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto :goto_1

    .line 770
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .locals 4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

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

    .line 711
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckInvokeDynamicSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V

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

    goto :goto_0

    .line 685
    :pswitch_1
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v0, :cond_8

    .line 686
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-static {v2, p1, v1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckInvokeInterfaceSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

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

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckInvokeSignaturePolymorphic(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V

    :cond_0
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    move-object v0, v1

    .line 705
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 706
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 707
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v2, v3, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    move-object p4, v1

    goto :goto_0

    .line 696
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    :pswitch_2
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

    :pswitch_3
    move-object v0, p4

    .line 662
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_0

    .line 669
    :cond_2
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_0

    .line 730
    :cond_3
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 731
    invoke-static {v0, p5}, Lcom/s1243808733/android/dx/rop/type/Prototype;->internInts(Lcom/s1243808733/android/dx/rop/type/Type;I)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    goto/16 :goto_0

    .line 658
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_0

    .line 737
    :cond_5
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_6

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_7

    .line 738
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v0, p4}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckConstMethodHandleSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 740
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto/16 :goto_0

    :cond_8
    move-object v1, p4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitInvalid(III)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid opcode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .locals 6

    const/16 v5, 0x36

    const/4 v1, 0x0

    if-ne p1, v5, :cond_1

    add-int v0, p2, p3

    .line 601
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$fgetlocalVariables(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v2

    .line 602
    invoke-virtual {v2, v0, p4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->pcAndIndexToLocal(II)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v3

    .line 608
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object v0, v1

    move-object v2, p5

    :cond_0
    :goto_1
    const/16 v3, 0x15

    if-eq p1, v3, :cond_7

    if-eq p1, v5, :cond_5

    const/16 v3, 0x84

    if-eq p1, v3, :cond_3

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_7

    .line 644
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    .line 649
    :goto_2
    return-void

    :cond_1
    move v0, p2

    .line 4294967295
    goto :goto_0

    :cond_2
    move-object v2, p5

    .line 608
    goto :goto_1

    .line 644
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    .line 636
    :goto_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 637
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v1, p4, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

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

    .line 649
    :goto_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    goto :goto_2

    .line 635
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    goto :goto_3

    .line 640
    :cond_5
    if-nez v0, :cond_6

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

    .line 627
    :cond_6
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    goto :goto_5

    .line 620
    :cond_7
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 621
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->localInfo(Z)V

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_4

    .line 621
    :cond_8
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .locals 3
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
    .locals 6

    const/16 v5, 0x212

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-eqz p1, :cond_1a

    const/16 v2, 0xbe

    if-eq p1, v2, :cond_18

    const/16 v2, 0xbf

    if-eq p1, v2, :cond_17

    const/16 v2, 0xc2

    if-eq p1, v2, :cond_17

    const/16 v2, 0xc3

    if-eq p1, v2, :cond_17

    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x11

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    .line 556
    :goto_0
    return-void

    .line 301
    :sswitch_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 302
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V

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

    .line 307
    :sswitch_1
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p4, v0, :cond_1

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

    :cond_1
    move-object v0, p4

    .line 312
    goto :goto_2

    .line 372
    :sswitch_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, p4, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 270
    :sswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 398
    :sswitch_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 399
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 400
    :goto_3
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 401
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekLocal(I)Z

    move-result v0

    .line 404
    invoke-static {p4, v1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smrequiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v1, v0, :cond_3

    .line 412
    sget-object p4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 416
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v2, v1, v3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_1

    .line 413
    :cond_3
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p4

    goto :goto_4

    .line 346
    :sswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 348
    invoke-static {p4, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smrequiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 351
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v1, v0, :cond_4

    .line 352
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 355
    :goto_5
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v2, v3, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    move-object p4, v0

    goto/16 :goto_1

    .line 353
    :cond_4
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_5

    .line 366
    :pswitch_0
    :sswitch_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p4, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 538
    :pswitch_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 540
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 546
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 542
    :cond_5
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 506
    :pswitch_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 508
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 509
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 511
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 512
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 513
    :cond_6
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_7

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
    :cond_7
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 520
    :cond_8
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 521
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_9

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
    :cond_9
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_a

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
    :cond_a
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 533
    :cond_b
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 485
    :pswitch_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 487
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 489
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-nez v1, :cond_c

    .line 492
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 493
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 490
    :cond_c
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 496
    :cond_d
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-nez v3, :cond_e

    .line 497
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-nez v0, :cond_e

    .line 500
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v2, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 501
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 498
    :cond_e
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 465
    :pswitch_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    .line 467
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-nez v3, :cond_11

    .line 471
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 473
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 474
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 475
    :cond_f
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_10

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
    :cond_10
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 468
    :cond_11
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 453
    :pswitch_5
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 455
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 456
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 460
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 461
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 457
    :cond_12
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 442
    :pswitch_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-nez v0, :cond_13

    .line 448
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 449
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 445
    :cond_13
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 421
    :pswitch_7
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 424
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 426
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    move v0, v2

    .line 430
    :goto_6
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_1

    .line 428
    :cond_14
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 430
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    const/16 v0, 0x2121

    goto :goto_6

    .line 433
    :cond_15
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 319
    :pswitch_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-nez v0, :cond_16

    .line 323
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    goto/16 :goto_1

    .line 321
    :cond_16
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    throw v0

    .line 386
    :pswitch_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 381
    :pswitch_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 376
    :pswitch_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 297
    :pswitch_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 291
    :pswitch_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 285
    :pswitch_e
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 279
    :pswitch_f
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 338
    :cond_17
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 327
    :cond_18
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArrayOrKnownNull()Z

    move-result v1

    if-nez v1, :cond_19

    .line 329
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type mismatch: expected array type but encountered "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mfail(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V

    .line 332
    :cond_19
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_1

    .line 266
    :cond_1a
    :sswitch_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto/16 :goto_1

    :cond_1b
    move v0, v1

    goto/16 :goto_3

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2e -> :sswitch_5
        0x4f -> :sswitch_4
        0x64 -> :sswitch_6
        0x68 -> :sswitch_6
        0x6c -> :sswitch_6
        0x70 -> :sswitch_6
        0x74 -> :sswitch_3
        0x78 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7c -> :sswitch_2
        0x7e -> :sswitch_6
        0x80 -> :sswitch_6
        0x82 -> :sswitch_6
        0xac -> :sswitch_1
        0xb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .locals 3

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
