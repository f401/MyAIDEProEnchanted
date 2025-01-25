.class public final Lorg/objectweb/asm/xml/SAXAnnotationAdapter;
.super Lorg/objectweb/asm/AnnotationVisitor;


# instance fields
.field private final elementName:Ljava/lang/String;

.field sa:Lorg/objectweb/asm/xml/SAXAdapter;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 21

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v12}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .registers 20

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    iput-object p2, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    iput-object p3, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->elementName:Ljava/lang/String;

    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    if-eqz p6, :cond_1a

    const-string v2, ""

    const-string v3, "name"

    const-string v4, "name"

    const-string v5, ""

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz p4, :cond_2b

    if-lez p4, :cond_8c

    const-string v6, "true"

    :goto_20
    const-string v2, ""

    const-string v3, "visible"

    const-string v4, "visible"

    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const/4 v2, -0x1

    if-eq p7, v2, :cond_3d

    const-string v2, ""

    const-string v3, "parameter"

    const-string v4, "parameter"

    const-string v5, ""

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    if-eqz p5, :cond_4b

    const-string v2, ""

    const-string v3, "desc"

    const-string v4, "desc"

    const-string v5, ""

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const/4 v2, -0x1

    if-eq p8, v2, :cond_5d

    const-string v2, ""

    const-string v3, "typeRef"

    const-string v4, "typeRef"

    const-string v5, ""

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    if-eqz p9, :cond_6e

    const-string v2, ""

    const-string v3, "typePath"

    const-string v4, "typePath"

    const-string v5, ""

    invoke-virtual/range {p9 .. p9}, Lorg/objectweb/asm/TypePath;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    if-eqz p10, :cond_9e

    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget-object v2, p10, v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_79
    move-object/from16 v0, p10

    array-length v3, v0

    if-ge v2, v3, :cond_8f

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p10, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_8c
    const-string v6, "false"

    goto :goto_20

    :cond_8f
    const-string v2, ""

    const-string v3, "start"

    const-string v4, "start"

    const-string v5, ""

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    if-eqz p11, :cond_cb

    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget-object v2, p11, v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_a9
    move-object/from16 v0, p11

    array-length v3, v0

    if-ge v2, v3, :cond_bc

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p11, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_bc
    const-string v2, ""

    const-string v3, "end"

    const-string v4, "end"

    const-string v5, ""

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    if-eqz p12, :cond_fb

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    aget v2, p12, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_d9
    move-object/from16 v0, p12

    array-length v3, v0

    if-ge v2, v3, :cond_ec

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget v4, p12, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    :cond_ec
    const-string v2, ""

    const-string v3, "index"

    const-string v4, "index"

    const-string v5, ""

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_fb
    invoke-virtual {p2, p3, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;IILjava/lang/String;)V
    .registers 19

    const/high16 v1, 0x50000

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v12}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 19

    const/high16 v1, 0x50000

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v12}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;)V
    .registers 21

    const/high16 v1, 0x50000

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v12}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .registers 24

    const/high16 v1, 0x50000

    const/4 v7, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(ILorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/objectweb/asm/TypePath;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method private addValueElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    if-eqz p2, :cond_13

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz p3, :cond_21

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz p4, :cond_32

    const-string v1, ""

    const-string v2, "value"

    const-string v3, "value"

    const-string v4, ""

    invoke-static {p4}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v1, p1, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    instance-of v2, p2, [B

    if-eqz v2, :cond_2a

    check-cast p2, [B

    :goto_16
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :goto_29
    return-void

    :cond_2a
    instance-of v2, p2, [C

    if-eqz v2, :cond_40

    check-cast p2, [C

    :goto_30
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Character;

    aget-char v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_40
    instance-of v2, p2, [S

    if-eqz v2, :cond_56

    check-cast p2, [S

    :goto_46
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Short;

    aget-short v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_56
    instance-of v2, p2, [Z

    if-eqz v2, :cond_6b

    check-cast p2, [Z

    :goto_5c
    array-length v2, p2

    if-ge v0, v2, :cond_26

    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_6b
    instance-of v2, p2, [I

    if-eqz v2, :cond_81

    check-cast p2, [I

    :goto_71
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Integer;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_81
    instance-of v2, p2, [J

    if-eqz v2, :cond_97

    check-cast p2, [J

    :goto_87
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Long;

    aget-wide v4, p2, v0

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    :cond_97
    instance-of v2, p2, [F

    if-eqz v2, :cond_ad

    check-cast p2, [F

    :goto_9d
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Float;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_ad
    instance-of v2, p2, [D

    if-eqz v2, :cond_26

    check-cast p2, [D

    :goto_b3
    array-length v2, p2

    if-ge v0, v2, :cond_26

    new-instance v2, Ljava/lang/Double;

    aget-wide v4, p2, v0

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v6, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_c3
    const-string v0, "annotationValue"

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->addValueElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "annotationValueAnnotation"

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 8

    new-instance v0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "annotationValueArray"

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "annotationValueEnum"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/xml/SAXAnnotationAdapter;->addValueElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
