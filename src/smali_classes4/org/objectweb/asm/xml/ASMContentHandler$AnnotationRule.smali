.class final Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7

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

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/objectweb/asm/ClassVisitor;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    check-cast v0, Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    instance-of v3, v0, Lorg/objectweb/asm/FieldVisitor;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    check-cast v0, Lorg/objectweb/asm/FieldVisitor;

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    goto :goto_29

    :cond_3a
    instance-of v3, v0, Lorg/objectweb/asm/MethodVisitor;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    check-cast v0, Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    goto :goto_29
.end method

.method public end(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_d
    return-void
.end method
