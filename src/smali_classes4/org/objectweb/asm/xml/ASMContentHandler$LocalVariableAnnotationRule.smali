.class final Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;
.super Lorg/objectweb/asm/xml/ASMContentHandler$Rule;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/ASMContentHandler;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/ASMContentHandler$Rule;-><init>(Lorg/objectweb/asm/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13

    const/4 v8, 0x0

    const-string v0, "desc"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "visible"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v0, "typeRef"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "typePath"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/TypePath;->fromString(Ljava/lang/String;)Lorg/objectweb/asm/TypePath;

    move-result-object v2

    const-string v0, "start"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v3, v0, [Lorg/objectweb/asm/Label;

    move v0, v8

    :goto_39
    array-length v5, v3

    if-ge v0, v5, :cond_47

    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;->getLabel(Ljava/lang/Object;)Lorg/objectweb/asm/Label;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_47
    const-string v0, "end"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    new-array v4, v0, [Lorg/objectweb/asm/Label;

    move v0, v8

    :goto_57
    array-length v9, v4

    if-ge v0, v9, :cond_65

    aget-object v9, v5, v0

    invoke-virtual {p0, v9}, Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;->getLabel(Ljava/lang/Object;)Lorg/objectweb/asm/Label;

    move-result-object v9

    aput-object v9, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_65
    const-string v0, "index"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [I

    :goto_74
    array-length v9, v5

    if-ge v8, v9, :cond_82

    aget-object v9, v0, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    :cond_82
    iget-object v8, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual/range {v0 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public end(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/ASMContentHandler$LocalVariableAnnotationRule;->this$0:Lorg/objectweb/asm/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_d
    return-void
.end method
