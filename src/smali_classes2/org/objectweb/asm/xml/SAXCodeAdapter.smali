.class public final Lorg/objectweb/asm/xml/SAXCodeAdapter;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field static final TYPES:[Ljava/lang/String;


# instance fields
.field access:I

.field private final labelNames:Ljava/util/Map;

.field sa:Lorg/objectweb/asm/xml/SAXAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->_clinit_()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "double"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uninitializedThis"

    aput-object v2, v0, v1

    sput-object v0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/xml/SAXAdapter;I)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    iput p2, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->access:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method private appendFrameTypes(ZI[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, p2, :cond_3

    aget-object v6, p3, v7

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    instance-of v1, v6, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p1, :cond_2

    const-string v1, "local"

    :goto_2
    invoke-virtual {v2, v1, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    instance-of v1, v6, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    sget-object v5, Lorg/objectweb/asm/xml/SAXCodeAdapter;->TYPES:[Ljava/lang/String;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "uninitialized"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "label"

    const-string v3, "label"

    const-string v4, ""

    check-cast v6, Lorg/objectweb/asm/Label;

    invoke-direct {p0, v6}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "stack"

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static getConstantAttribute(Ljava/lang/Object;)Lorg/xml/sax/helpers/AttributesImpl;
    .registers 7

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "cst"

    const-string v3, "cst"

    const-string v4, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->labelNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "annotation"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "annotationDefault"

    const/4 v3, 0x0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final visitCode()V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->access:I

    and-int/lit16 v0, v0, 0x700

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "code"

    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "owner"

    const-string v3, "owner"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 14

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "NEW"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "frame"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v6, p2, p3}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->appendFrameTypes(ZI[Ljava/lang/Object;)V

    invoke-direct {p0, v7, p4, p5}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->appendFrameTypes(ZI[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "FULL"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "APPEND"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "frame"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v6, p2, p3}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->appendFrameTypes(ZI[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "CHOP"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "count"

    const-string v3, "count"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "frame"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_3
    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "SAME"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "frame"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    const-string v5, "SAME1"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "frame"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v7, v6, p5}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->appendFrameTypes(ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final visitIincInsn(II)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "var"

    const-string v3, "var"

    const-string v4, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "inc"

    const-string v3, "inc"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    const/16 v3, 0x84

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public final visitInsn(I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v1, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 13

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "insnAnnotation"

    const/4 v4, 0x0

    move-object v5, p3

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public final visitIntInsn(II)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "value"

    const-string v3, "value"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 11

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "bsm"

    const-string v3, "bsm"

    const-string v4, ""

    invoke-virtual {p3}, Lorg/objectweb/asm/Handle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "INVOKEDYNAMIC"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "bsmArg"

    aget-object v3, p4, v0

    invoke-static {v3}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getConstantAttribute(Ljava/lang/Object;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "INVOKEDYNAMIC"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "label"

    const-string v3, "label"

    const-string v4, ""

    invoke-direct {p0, p2}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public final visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 8

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "Label"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public final visitLdcInsn(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v1, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {p1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getConstantAttribute(Ljava/lang/Object;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public final visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "line"

    const-string v3, "line"

    const-string v4, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "start"

    const-string v3, "start"

    const-string v4, ""

    invoke-direct {p0, p2}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "LineNumber"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 13

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v1, ""

    const-string v2, "signature"

    const-string v3, "signature"

    const-string v4, ""

    invoke-static {p3}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, ""

    const-string v2, "start"

    const-string v3, "start"

    const-string v4, ""

    invoke-direct {p0, p4}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "end"

    const-string v3, "end"

    const-string v4, ""

    invoke-direct {p0, p5}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "var"

    const-string v3, "var"

    const-string v4, ""

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "LocalVar"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 19

    array-length v0, p3

    new-array v8, v0, [Ljava/lang/String;

    array-length v0, p4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v8

    if-ge v0, v1, :cond_0

    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, v9

    if-ge v0, v1, :cond_1

    aget-object v1, p4, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p7, :cond_2

    const/4 v3, 0x1

    :goto_2
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "localVariableAnnotation"

    const/4 v4, 0x0

    move-object/from16 v5, p6

    move v6, p1

    move-object v7, p2

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v0

    :cond_2
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public final visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 12

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "dflt"

    const-string v3, "dflt"

    const-string v4, ""

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0xab

    aget-object v7, v1, v2

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v1, v7, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_0

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    aget-object v5, p3, v6

    invoke-direct {p0, v5}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "key"

    const-string v3, "key"

    const-string v4, ""

    aget v5, p2, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "label"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final visitMaxs(II)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "maxStack"

    const-string v3, "maxStack"

    const-string v4, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "maxLocals"

    const-string v3, "maxLocals"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "Max"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "owner"

    const-string v3, "owner"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string v5, "true"

    :goto_0
    const-string v1, ""

    const-string v2, "itf"

    const-string v3, "itf"

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_0
    const-string v5, "false"

    goto :goto_0
.end method

.method public final visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "dims"

    const-string v3, "dims"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    const/16 v3, 0xc5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p2, v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->appendAccess(ILjava/lang/StringBuffer;)V

    const-string v1, ""

    const-string v2, "access"

    const-string v3, "access"

    const-string v4, ""

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "parameter"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 10

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "parameterAnnotation"

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public final varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 13

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "min"

    const-string v3, "min"

    const-string v4, ""

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "max"

    const-string v3, "max"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "dflt"

    const-string v3, "dflt"

    const-string v4, ""

    invoke-direct {p0, p3}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    const/16 v2, 0xaa

    aget-object v7, v1, v2

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v1, v7, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, p4

    if-ge v6, v0, :cond_0

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    aget-object v5, p4, v6

    invoke-direct {p0, v5}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "label"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 13

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "tryCatchAnnotation"

    const/4 v4, 0x0

    move-object v5, p3

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public final visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "start"

    const-string v3, "start"

    const-string v4, ""

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "end"

    const-string v3, "end"

    const-string v4, ""

    invoke-direct {p0, p2}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "handler"

    const-string v3, "handler"

    const-string v4, ""

    invoke-direct {p0, p3}, Lorg/objectweb/asm/xml/SAXCodeAdapter;->getLabel(Lorg/objectweb/asm/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v1, ""

    const-string v2, "type"

    const-string v3, "type"

    const-string v4, ""

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "TryCatch"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 13

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    const-string v2, "typeAnnotation"

    const/4 v4, 0x0

    move-object v5, p3

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;)V

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public final visitTypeInsn(ILjava/lang/String;)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public final visitVarInsn(II)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "var"

    const-string v3, "var"

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXCodeAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    sget-object v2, Lorg/objectweb/asm/util/Printer;->OPCODES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
