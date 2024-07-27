.class public final Lorg/objectweb/asm/xml/SAXClassAdapter;
.super Lorg/objectweb/asm/ClassVisitor;


# instance fields
.field sa:Lorg/objectweb/asm/xml/SAXAdapter;

.field private final singleDocument:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Z)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    new-instance v0, Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/xml/SAXAdapter;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    iput-boolean p2, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->singleDocument:Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addDocumentStart()V

    :cond_0
    return-void
.end method

.method static appendAccess(ILjava/lang/StringBuffer;)V
    .registers 4

    const/high16 v1, 0x80000

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "public "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "private "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "protected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "final "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    const-string v0, "static "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    const/high16 v0, 0x40000

    and-int/2addr v0, p0

    if-nez v0, :cond_11

    const-string v0, "synchronized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    and-int v0, p0, v1

    if-nez v0, :cond_12

    const-string v0, "bridge "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_7

    and-int v0, p0, v1

    if-nez v0, :cond_13

    const-string v0, "varargs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "native "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_9

    const-string v0, "strict "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_a

    const-string v0, "interface "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_b

    const-string v0, "abstract "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "synthetic "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_d

    const-string v0, "annotation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_e

    const-string v0, "enum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_f

    const-string v0, "deprecated "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_10

    const-string v0, "mandated "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    return-void

    :cond_11
    const-string v0, "super "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_12
    const-string v0, "volatile "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_13
    const-string v0, "transient "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method static final encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v4, 0x10

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_5

    :cond_1
    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v2, v4, :cond_3

    const-string v3, "000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_4

    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_2

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    invoke-static {v0, v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->appendAccess(ILjava/lang/StringBuffer;)V

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "access"

    const-string v3, "access"

    const-string v4, ""

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, ""

    const-string v2, "signature"

    const-string v3, "signature"

    const-string v4, ""

    invoke-static {p4}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    const-string v1, ""

    const-string v2, "parent"

    const-string v3, "parent"

    const-string v4, ""

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, ""

    const-string v2, "major"

    const-string v3, "major"

    const-string v4, ""

    const v5, 0xffff

    and-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "minor"

    const-string v3, "minor"

    const-string v4, ""

    ushr-int/lit8 v5, p1, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "interfaces"

    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    if-eqz p6, :cond_3

    array-length v0, p6

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, p6

    if-ge v6, v0, :cond_3

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    aget-object v5, p6, v6

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "interface"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "interfaces"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

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

.method public final visitEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->singleDocument:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addDocumentEnd()V

    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 12

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/high16 v0, 0x80000

    or-int/2addr v0, p1

    invoke-static {v0, v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->appendAccess(ILjava/lang/StringBuffer;)V

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "access"

    const-string v3, "access"

    const-string v4, ""

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v1, ""

    const-string v2, "signature"

    const-string v3, "signature"

    const-string v4, ""

    invoke-static {p4}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string v1, ""

    const-string v2, "value"

    const-string v3, "value"

    const-string v4, ""

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/objectweb/asm/xml/SAXFieldAdapter;

    iget-object v2, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-direct {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXFieldAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;Lorg/xml/sax/Attributes;)V

    return-object v1
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/high16 v0, 0x100000

    or-int/2addr v0, p4

    invoke-static {v0, v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->appendAccess(ILjava/lang/StringBuffer;)V

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "access"

    const-string v3, "access"

    const-string v4, ""

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, ""

    const-string v2, "outerName"

    const-string v3, "outerName"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, ""

    const-string v2, "innerName"

    const-string v3, "innerName"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "innerclass"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 13

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1, v5}, Lorg/objectweb/asm/xml/SAXClassAdapter;->appendAccess(ILjava/lang/StringBuffer;)V

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "access"

    const-string v3, "access"

    const-string v4, ""

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v1, ""

    const-string v2, "signature"

    const-string v3, "signature"

    const-string v4, ""

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "method"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "exceptions"

    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, p5

    if-ge v6, v0, :cond_1

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    aget-object v5, p5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "exception"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v1, "exceptions"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    new-instance v0, Lorg/objectweb/asm/xml/SAXCodeAdapter;

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    invoke-direct {v0, v1, p1}, Lorg/objectweb/asm/xml/SAXCodeAdapter;-><init>(Lorg/objectweb/asm/xml/SAXAdapter;I)V

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    const-string v1, ""

    const-string v2, "owner"

    const-string v3, "owner"

    const-string v4, ""

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, ""

    const-string v2, "name"

    const-string v3, "name"

    const-string v4, ""

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, ""

    const-string v2, "desc"

    const-string v3, "desc"

    const-string v4, ""

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "outerclass"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ""

    const-string v2, "file"

    const-string v3, "file"

    const-string v4, ""

    invoke-static {p1}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, ""

    const-string v2, "debug"

    const-string v3, "debug"

    const-string v4, ""

    invoke-static {p2}, Lorg/objectweb/asm/xml/SAXClassAdapter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

    const-string v2, "source"

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/xml/SAXAdapter;->addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 13

    iget-object v1, p0, Lorg/objectweb/asm/xml/SAXClassAdapter;->sa:Lorg/objectweb/asm/xml/SAXAdapter;

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
