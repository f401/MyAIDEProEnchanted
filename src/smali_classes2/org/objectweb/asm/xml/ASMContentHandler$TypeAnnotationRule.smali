.class final Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9

    const-string v0, "desc"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "visible"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v0, "typeRef"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "typePath"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/TypePath;->fromString(Ljava/lang/String;)Lorg/objectweb/asm/TypePath;

    move-result-object v4

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/objectweb/asm/ClassVisitor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    check-cast v0, Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v5, v0, Lorg/objectweb/asm/FieldVisitor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    check-cast v0, Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v5, v0, Lorg/objectweb/asm/MethodVisitor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    check-cast v0, Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public end(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$TypeAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method
