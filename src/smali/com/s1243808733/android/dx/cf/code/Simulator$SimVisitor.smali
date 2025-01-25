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
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$fgetmachine(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/Machine;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    .line 238
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    return-void
.end method

.method private checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 6

    .line 566
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 574
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v1

    if-nez v1, :cond_33

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

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 575
    invoke-static {v1, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mfail(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V

    :cond_33
    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .registers 2

    .line 833
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return v0
.end method

.method public setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 251
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    return-void

    .line 248
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "frame == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviousOffset(I)V
    .registers 2

    .line 827
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .registers 8

    packed-switch p1, :pswitch_data_48

    packed-switch p1, :pswitch_data_6c

    .line 795
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    return-void

    .line 784
    :pswitch_a  #0xa5, 0xa6
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_3b

    .line 779
    :pswitch_16  #0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_3b

    .line 765
    :pswitch_22  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_3b

    .line 791
    :pswitch_2c  #0xa7, 0xa8, 0xc8, 0xc9
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto :goto_3b

    .line 770
    :pswitch_32  #0xc6, 0xc7
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 800
    :goto_3b
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxTargetArg(I)V

    .line 801
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void

    :pswitch_data_48
    .packed-switch 0x99
        :pswitch_22  #00000099
        :pswitch_22  #0000009a
        :pswitch_22  #0000009b
        :pswitch_22  #0000009c
        :pswitch_22  #0000009d
        :pswitch_22  #0000009e
        :pswitch_16  #0000009f
        :pswitch_16  #000000a0
        :pswitch_16  #000000a1
        :pswitch_16  #000000a2
        :pswitch_16  #000000a3
        :pswitch_16  #000000a4
        :pswitch_a  #000000a5
        :pswitch_a  #000000a6
        :pswitch_2c  #000000a7
        :pswitch_2c  #000000a8
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0xc6
        :pswitch_32  #000000c6
        :pswitch_32  #000000c7
        :pswitch_2c  #000000c8
        :pswitch_2c  #000000c9
    .end packed-switch
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .registers 9

    const/16 p3, 0x12

    if-eq p1, p3, :cond_b6

    const/16 p3, 0x13

    if-eq p1, p3, :cond_b6

    const/16 p3, 0xbd

    if-eq p1, p3, :cond_ac

    const/16 p3, 0xc5

    if-eq p1, p3, :cond_9e

    const/16 p3, 0xc0

    if-eq p1, p3, :cond_94

    const/16 p3, 0xc1

    if-eq p1, p3, :cond_94

    packed-switch p1, :pswitch_data_da

    .line 744
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    goto/16 :goto_c8

    .line 711
    :pswitch_22  #0xba
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {p3, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckInvokeDynamicSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V

    .line 712
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 713
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p3

    .line 714
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    .line 717
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->addReference()Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    move-result-object p4

    goto/16 :goto_c8

    .line 685
    :pswitch_3a  #0xb6, 0xb7, 0xb8, 0xb9
    instance-of p3, p4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz p3, :cond_4c

    .line 686
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object p4

    .line 687
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    move-object v0, p4

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-static {p3, p1, p4}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckInvokeInterfaceSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    .line 693
    :cond_4c
    instance-of p3, p4, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz p3, :cond_5e

    .line 694
    move-object p3, p4

    check-cast p3, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 695
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result p3

    if-eqz p3, :cond_5e

    .line 696
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {p3, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckInvokeSignaturePolymorphic(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V

    :cond_5e
    const/16 p3, 0xb8

    if-ne p1, p3, :cond_64

    const/4 p3, 0x1

    goto :goto_65

    :cond_64
    const/4 p3, 0x0

    .line 705
    :goto_65
    move-object v0, p4

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 706
    invoke-virtual {v0, p3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p3

    .line 707
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    goto :goto_c8

    .line 673
    :pswitch_74  #0xb5
    move-object p3, p4

    check-cast p3, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 674
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, v2, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_c8

    .line 662
    :pswitch_85  #0xb3
    move-object p3, p4

    check-cast p3, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 663
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_c8

    .line 669
    :cond_94
    :pswitch_94  #0xb4
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_c8

    .line 730
    :cond_9e
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 731
    invoke-static {p3, p5}, Lcom/s1243808733/android/dx/rop/type/Prototype;->internInts(Lcom/s1243808733/android/dx/rop/type/Type;I)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p3

    .line 732
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    goto :goto_c8

    .line 658
    :cond_ac
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_c8

    .line 737
    :cond_b6
    instance-of p3, p4, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez p3, :cond_be

    instance-of p3, p4, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz p3, :cond_c3

    .line 738
    :cond_be
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mcheckConstMethodHandleSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 740
    :cond_c3
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 749
    :goto_c8
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    .line 750
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 751
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void

    :pswitch_data_da
    .packed-switch 0xb3
        :pswitch_85  #000000b3
        :pswitch_94  #000000b4
        :pswitch_74  #000000b5
        :pswitch_3a  #000000b6
        :pswitch_3a  #000000b7
        :pswitch_3a  #000000b8
        :pswitch_3a  #000000b9
        :pswitch_22  #000000ba
    .end packed-switch
.end method

.method public visitInvalid(III)V
    .registers 4

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid opcode "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .registers 13

    const/16 v0, 0x36

    if-ne p1, v0, :cond_7

    add-int v1, p2, p3

    goto :goto_8

    :cond_7
    move v1, p2

    .line 601
    :goto_8
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$fgetlocalVariables(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v2

    .line 602
    invoke-virtual {v2, v1, p4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->pcAndIndexToLocal(II)Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 606
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 607
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v4

    .line 608
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v5

    if-eq v4, v5, :cond_27

    move-object v3, p5

    move-object v1, v2

    goto :goto_27

    :cond_26
    move-object v3, p5

    :cond_27
    :goto_27
    const/16 v4, 0x15

    if-eq p1, v4, :cond_79

    if-eq p1, v0, :cond_60

    const/16 v0, 0x84

    if-eq p1, v0, :cond_39

    const/16 p6, 0xa9

    if-eq p1, p6, :cond_79

    .line 644
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    return-void

    :cond_39
    if-nez v1, :cond_3c

    goto :goto_40

    .line 635
    :cond_3c
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 636
    :goto_40
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 637
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p4, v3, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 638
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 639
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p6}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    .line 640
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-static {p6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_8f

    :cond_60
    if-nez v1, :cond_63

    goto :goto_67

    .line 627
    :cond_63
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 628
    :goto_67
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p6, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p6, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 629
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 630
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p4, v3, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    goto :goto_8f

    .line 620
    :cond_79
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p6, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p6, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 621
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    if-eqz v1, :cond_86

    const/4 p4, 0x1

    goto :goto_87

    :cond_86
    const/4 p4, 0x0

    :goto_87
    invoke-interface {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->localInfo(Z)V

    .line 622
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 649
    :goto_8f
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .line 818
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 819
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p2, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxInitValues(Ljava/util/ArrayList;)V

    .line 820
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p2, p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 821
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    const/16 p4, 0xbc

    invoke-interface {p2, p3, p1, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 13

    if-eqz p1, :cond_352

    const/16 v0, 0xbe

    const/4 v1, 0x0

    if-eq p1, v0, :cond_321

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_317

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_317

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_317

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    sparse-switch p1, :sswitch_data_364

    const v4, 0x32132

    const/16 v5, 0x3213

    const/16 v6, 0x11

    const/16 v7, 0x212

    packed-switch p1, :pswitch_data_3a6

    packed-switch p1, :pswitch_data_3be

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->visitInvalid(III)V

    return-void

    .line 301
    :sswitch_2c
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 302
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {p0, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 307
    :sswitch_38
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p4, p3, :cond_47

    .line 312
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    goto :goto_48

    :cond_47
    move-object p3, p4

    .line 314
    :goto_48
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {v0, v1, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 315
    invoke-direct {p0, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->checkReturnType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 372
    :sswitch_54
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, p4, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 270
    :sswitch_5f
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 398
    :sswitch_68
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 399
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v0, 0x2

    .line 400
    :cond_75
    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 401
    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekLocal(I)Z

    move-result p3

    .line 404
    invoke-static {p4, v1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smrequiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    if-eqz p3, :cond_8e

    .line 411
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, p3, :cond_8a

    .line 412
    sget-object p4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_8e

    .line 413
    :cond_8a
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p4

    .line 416
    :cond_8e
    :goto_8e
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v1, v0, v2, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 346
    :sswitch_99
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 348
    invoke-static {p4, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smrequiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 351
    sget-object p4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p3, p4, :cond_ae

    .line 352
    sget-object p4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_b2

    .line 353
    :cond_ae
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p4

    .line 355
    :goto_b2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v0, v1, p3, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 366
    :pswitch_bd  #0x60
    :sswitch_bd
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, p4, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 538
    :pswitch_c6  #0x5f
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 540
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 541
    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_f0

    .line 545
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 546
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const/16 v0, 0x12

    invoke-interface {p3, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 542
    :cond_f0
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 506
    :pswitch_f5  #0x5e
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 508
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 509
    invoke-virtual {p3, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 511
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 512
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 513
    :cond_11d
    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_135

    .line 515
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 516
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 518
    :cond_135
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 520
    :cond_13a
    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 521
    invoke-virtual {p3, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 523
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 524
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 525
    :cond_15c
    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_178

    .line 527
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    const/4 v1, 0x4

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 528
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    const v0, 0x432143

    invoke-interface {p3, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 530
    :cond_178
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 533
    :cond_17d
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 485
    :pswitch_182  #0x5d
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 487
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 489
    invoke-virtual {p3, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_1aa

    .line 492
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 493
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 490
    :cond_1aa
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 496
    :cond_1af
    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-nez v1, :cond_1d1

    .line 497
    invoke-virtual {p3, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_1d1

    .line 500
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 501
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 498
    :cond_1d1
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 465
    :pswitch_1d6  #0x5b
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 467
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-nez v1, :cond_21b

    .line 471
    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 473
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 474
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 475
    :cond_1fe
    invoke-virtual {p3, v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_216

    .line 477
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v1, v0}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 478
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 480
    :cond_216
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 468
    :cond_21b
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 453
    :pswitch_220  #0x5a
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 455
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    if-eqz v0, :cond_248

    .line 456
    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_248

    .line 460
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 461
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v7}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 457
    :cond_248
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 442
    :pswitch_24d  #0x59
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 444
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_26b

    .line 448
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 449
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v6}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 445
    :cond_26b
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 421
    :pswitch_270  #0x58, 0x5c
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    .line 424
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_288

    .line 426
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    goto :goto_29b

    .line 428
    :cond_288
    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result p3

    if-eqz p3, :cond_2a6

    .line 430
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    const/16 v6, 0x2121

    :goto_29b
    const/16 p3, 0x5c

    if-ne p1, p3, :cond_357

    .line 437
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, v6}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    goto/16 :goto_357

    .line 433
    :cond_2a6
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 319
    :pswitch_2ab  #0x57
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 320
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result p3

    if-nez p3, :cond_2c4

    .line 323
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, v0, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    goto/16 :goto_357

    .line 321
    :cond_2c4
    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object p1

    throw p1

    .line 386
    :pswitch_2c9  #0x97, 0x98
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 381
    :pswitch_2d6  #0x95, 0x96
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_357

    .line 376
    :pswitch_2e3  #0x94
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 297
    :pswitch_2ef  #0x8e, 0x8f, 0x90
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 291
    :pswitch_2f9  #0x8b, 0x8c, 0x8d
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 285
    :pswitch_303  #0x88, 0x89, 0x8a
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 279
    :pswitch_30d  #0x85, 0x86, 0x87, 0x91, 0x92, 0x93
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 338
    :cond_317
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 327
    :cond_321
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 328
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->isArrayOrKnownNull()Z

    move-result v0

    if-nez v0, :cond_348

    .line 329
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->this$0:Lcom/s1243808733/android/dx/cf/code/Simulator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type mismatch: expected array type but encountered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 329
    invoke-static {v0, p3}, Lcom/s1243808733/android/dx/cf/code/Simulator;->-$$Nest$mfail(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V

    .line 332
    :cond_348
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto :goto_357

    .line 266
    :cond_352
    :sswitch_352
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3}, Lcom/s1243808733/android/dx/cf/code/Machine;->clearArgs()V

    .line 555
    :cond_357
    :goto_357
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 556
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void

    :sswitch_data_364
    .sparse-switch
        0x0 -> :sswitch_352
        0x2e -> :sswitch_99
        0x4f -> :sswitch_68
        0x64 -> :sswitch_bd
        0x68 -> :sswitch_bd
        0x6c -> :sswitch_bd
        0x70 -> :sswitch_bd
        0x74 -> :sswitch_5f
        0x78 -> :sswitch_54
        0x7a -> :sswitch_54
        0x7c -> :sswitch_54
        0x7e -> :sswitch_bd
        0x80 -> :sswitch_bd
        0x82 -> :sswitch_bd
        0xac -> :sswitch_38
        0xb1 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_3a6
    .packed-switch 0x57
        :pswitch_2ab  #00000057
        :pswitch_270  #00000058
        :pswitch_24d  #00000059
        :pswitch_220  #0000005a
        :pswitch_1d6  #0000005b
        :pswitch_270  #0000005c
        :pswitch_182  #0000005d
        :pswitch_f5  #0000005e
        :pswitch_c6  #0000005f
        :pswitch_bd  #00000060
    .end packed-switch

    :pswitch_data_3be
    .packed-switch 0x85
        :pswitch_30d  #00000085
        :pswitch_30d  #00000086
        :pswitch_30d  #00000087
        :pswitch_303  #00000088
        :pswitch_303  #00000089
        :pswitch_303  #0000008a
        :pswitch_2f9  #0000008b
        :pswitch_2f9  #0000008c
        :pswitch_2f9  #0000008d
        :pswitch_2ef  #0000008e
        :pswitch_2ef  #0000008f
        :pswitch_2ef  #00000090
        :pswitch_30d  #00000091
        :pswitch_30d  #00000092
        :pswitch_30d  #00000093
        :pswitch_2e3  #00000094
        :pswitch_2d6  #00000095
        :pswitch_2d6  #00000096
        :pswitch_2c9  #00000097
        :pswitch_2c9  #00000098
    .end packed-switch
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .registers 8

    .line 808
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {p3, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Machine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 809
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p5}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxIntArg(I)V

    .line 810
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    invoke-interface {p3, p4}, Lcom/s1243808733/android/dx/cf/code/Machine;->auxSwitchArg(Lcom/s1243808733/android/dx/cf/code/SwitchList;)V

    .line 811
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->frame:Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-interface {p3, p4, p2, p1}, Lcom/s1243808733/android/dx/cf/code/Machine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    return-void
.end method
