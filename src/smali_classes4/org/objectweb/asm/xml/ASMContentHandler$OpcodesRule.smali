.class final Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lorg/objectweb/asm/xml/ASMContentHandler;->OPCODES:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;

    if-nez v1, :cond_32

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    iget-object v2, v2, Lorg/objectweb/asm/xml/ASMContentHandler;->match:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget v0, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->type:I

    packed-switch v0, :pswitch_data_12a

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f  #0x0
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_48
    return-void

    :pswitch_49  #0x4
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    const-string v2, "owner"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "desc"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :pswitch_65  #0x1
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    const-string v2, "value"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_48

    :pswitch_79  #0x6
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    const-string v2, "label"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getLabel(Ljava/lang/Object;)Lorg/objectweb/asm/Label;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto :goto_48

    :pswitch_8d  #0x5
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    const-string v2, "owner"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "desc"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "itf"

    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_48

    :pswitch_b5  #0x3
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    const-string v2, "desc"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_48

    :pswitch_c5  #0x2
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget v1, v1, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    const-string v2, "var"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_48

    :pswitch_da  #0x8
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    const-string v1, "var"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "inc"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    goto/16 :goto_48

    :pswitch_f7  #0x7
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    const-string v1, "desc"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cst"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_48

    :pswitch_110  #0x9
    invoke-virtual {p0}, Lorg/objectweb/asm/xml/ASMContentHandler$OpcodesRule;->getCodeVisitor()Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    const-string v1, "desc"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dims"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    goto/16 :goto_48

    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_65  #00000001
        :pswitch_c5  #00000002
        :pswitch_b5  #00000003
        :pswitch_49  #00000004
        :pswitch_8d  #00000005
        :pswitch_79  #00000006
        :pswitch_f7  #00000007
        :pswitch_da  #00000008
        :pswitch_110  #00000009
    .end packed-switch
.end method
