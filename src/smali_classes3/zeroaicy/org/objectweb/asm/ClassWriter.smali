.class public Lzeroaicy/org/objectweb/asm/ClassWriter;
.super Lzeroaicy/org/objectweb/asm/ClassVisitor;
.source "ClassWriter.java"


# static fields
.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1


# instance fields
.field private accessFlags:I

.field private compute:I

.field private debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private enclosingClassIndex:I

.field private enclosingMethodIndex:I

.field private firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

.field private firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

.field private firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

.field private firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

.field private final flags:I

.field private innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private interfaceCount:I

.field private interfaces:[I

.field private lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

.field private lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

.field private lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

.field private lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

.field private nestHostClassIndex:I

.field private nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private numberOfInnerClasses:I

.field private numberOfNestMemberClasses:I

.field private numberOfPermittedSubclasses:I

.field private permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private signatureIndex:I

.field private sourceFileIndex:I

.field private superClass:I

.field private final symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

.field private thisClass:I

.field private version:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 235
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/ClassWriter;-><init>(Lzeroaicy/org/objectweb/asm/ClassReader;I)V

    return-void
.end method

.method public constructor <init>(Lzeroaicy/org/objectweb/asm/ClassReader;I)V
    .registers 4

    .line 263
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 264
    iput p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->flags:I

    .line 265
    if-nez p1, :cond_0

    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/SymbolTable;-><init>(Lzeroaicy/org/objectweb/asm/ClassWriter;)V

    :goto_0
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    .line 266
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x4

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    .line 271
    :goto_1
    return-void

    .line 265
    :cond_0
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-direct {v0, p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;-><init>(Lzeroaicy/org/objectweb/asm/ClassWriter;Lzeroaicy/org/objectweb/asm/ClassReader;)V

    goto :goto_0

    .line 268
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    goto :goto_1

    .line 271
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    goto :goto_1
.end method

.method private getAttributePrototypes()[Lzeroaicy/org/objectweb/asm/Attribute;
    .registers 3

    .line 790
    new-instance v1, Lzeroaicy/org/objectweb/asm/Attribute$Set;

    invoke-direct {v1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;-><init>()V

    .line 791
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V

    .line 792
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    .line 793
    :goto_0
    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    .line 798
    :goto_1
    if-nez v0, :cond_1

    .line 802
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    .line 803
    :goto_2
    if-nez v0, :cond_2

    .line 807
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->toArray()[Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    return-object v0

    .line 794
    :cond_0
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/FieldWriter;->collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V

    .line 795
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldWriter;

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V

    .line 800
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodWriter;

    goto :goto_1

    .line 804
    :cond_2
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V

    .line 805
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    goto :goto_2
.end method

.method private replaceAsmInstructions([BZ)[B
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 757
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getAttributePrototypes()[Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v3

    move-object v0, v1

    .line 758
    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    move-object v0, v1

    .line 759
    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    move-object v0, v1

    .line 760
    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    move-object v0, v1

    .line 761
    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    move-object v0, v1

    .line 762
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    .line 763
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    .line 764
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    .line 765
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    .line 766
    check-cast v0, Lzeroaicy/org/objectweb/asm/ModuleWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    .line 767
    iput v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    .line 768
    iput v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    move-object v0, v1

    .line 769
    check-cast v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 770
    iput v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    move-object v0, v1

    .line 771
    check-cast v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    move-object v0, v1

    .line 772
    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    move-object v0, v1

    .line 773
    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    .line 774
    check-cast v1, Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 775
    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    .line 776
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, p1, v2, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([BIZ)V

    if-eqz p2, :cond_0

    const/16 v2, 0x8

    :cond_0
    or-int/lit16 v1, v2, 0x100

    invoke-virtual {v0, p0, v3, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;[Lzeroaicy/org/objectweb/asm/Attribute;I)V

    .line 781
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 775
    goto :goto_0
.end method


# virtual methods
.method protected getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 1077
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    .line 1040
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1041
    const/16 v0, 0x2f

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1047
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    :try_start_1
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1053
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, p1

    .line 1065
    :cond_0
    :goto_0
    return-object p2

    .line 1041
    :catch_0
    move-exception v0

    .line 1045
    new-instance v1, Ljava/lang/TypeNotPresentException;

    invoke-direct {v1, p1, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1047
    :catch_1
    move-exception v0

    .line 1051
    new-instance v1, Ljava/lang/TypeNotPresentException;

    invoke-direct {v1, p2, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1056
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1060
    :cond_2
    const-string p2, "java/lang/Object"

    goto :goto_0

    .line 1063
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public hasFlags(I)Z
    .registers 3

    .line 287
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->flags:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newClass(Ljava/lang/String;)I
    .registers 3

    .line 849
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .registers 3

    .line 824
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public varargs newConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .registers 6

    .line 952
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 989
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 908
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 12

    .line 933
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .registers 6

    .line 973
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 1006
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newMethodType(Ljava/lang/String;)I
    .registers 3

    .line 861
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newModule(Ljava/lang/String;)I
    .registers 3

    .line 873
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1019
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public newPackage(Ljava/lang/String;)I
    .registers 3

    .line 885
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .registers 3

    .line 837
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .registers 16

    const/high16 v14, 0x10000

    const/16 v13, 0x31

    const/4 v12, 0x2

    const v11, 0xffff

    const/4 v6, 0x0

    .line 499
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x18

    .line 501
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    move v10, v6

    .line 502
    :goto_0
    if-nez v0, :cond_11

    .line 508
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    move v9, v6

    .line 509
    :goto_1
    if-nez v0, :cond_12

    .line 517
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_2a

    .line 518
    const/4 v0, 0x1

    .line 519
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 520
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "InnerClasses"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 522
    :goto_2
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz v2, :cond_0

    .line 523
    add-int/lit8 v0, v0, 0x1

    .line 524
    add-int/lit8 v1, v1, 0xa

    .line 525
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "EnclosingMethod"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 527
    :cond_0
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v2, v11

    if-ge v2, v13, :cond_1

    .line 528
    add-int/lit8 v0, v0, 0x1

    .line 529
    add-int/lit8 v1, v1, 0x6

    .line 530
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "Synthetic"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 532
    :cond_1
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    if-eqz v2, :cond_2

    .line 533
    add-int/lit8 v0, v0, 0x1

    .line 534
    add-int/lit8 v1, v1, 0x8

    .line 535
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "Signature"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 537
    :cond_2
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    if-eqz v2, :cond_3

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 539
    add-int/lit8 v1, v1, 0x8

    .line 540
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "SourceFile"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 542
    :cond_3
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_4

    .line 543
    add-int/lit8 v0, v0, 0x1

    .line 544
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    .line 545
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "SourceDebugExtension"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 547
    :cond_4
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 549
    add-int/lit8 v1, v1, 0x6

    .line 550
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "Deprecated"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 552
    :cond_5
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_6

    .line 553
    add-int/lit8 v0, v0, 0x1

    .line 554
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 558
    :cond_6
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_7

    .line 559
    add-int/lit8 v0, v0, 0x1

    .line 560
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 564
    :cond_7
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_8

    .line 565
    add-int/lit8 v0, v0, 0x1

    .line 566
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 570
    :cond_8
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_9

    .line 571
    add-int/lit8 v0, v0, 0x1

    .line 572
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 576
    :cond_9
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v2

    if-lez v2, :cond_a

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 578
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 580
    :cond_a
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    if-eqz v2, :cond_b

    .line 581
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/ModuleWriter;->getAttributeCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 582
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/ModuleWriter;->computeAttributesSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 584
    :cond_b
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    if-eqz v2, :cond_c

    .line 585
    add-int/lit8 v0, v0, 0x1

    .line 586
    add-int/lit8 v1, v1, 0x8

    .line 587
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "NestHost"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 589
    :cond_c
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_d

    .line 590
    add-int/lit8 v0, v0, 0x1

    .line 591
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 592
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "NestMembers"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 594
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_e

    .line 595
    add-int/lit8 v0, v0, 0x1

    .line 596
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 597
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "PermittedSubclasses"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_e
    move v2, v0

    .line 601
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int/2addr v0, v14

    if-nez v0, :cond_f

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    if-eqz v0, :cond_29

    .line 602
    :cond_f
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    move v3, v6

    move v4, v6

    .line 603
    :goto_3
    if-nez v0, :cond_13

    .line 608
    add-int/lit8 v2, v2, 0x1

    .line 609
    add-int/lit8 v0, v3, 0x8

    add-int/2addr v1, v0

    .line 610
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v5, "Record"

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move v7, v3

    move v8, v4

    .line 612
    :goto_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_10

    .line 613
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 614
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v0

    add-int/2addr v1, v0

    .line 618
    :cond_10
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getConstantPoolLength()I

    move-result v0

    .line 619
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getConstantPoolCount()I

    move-result v3

    .line 620
    if-le v3, v11, :cond_14

    .line 621
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassTooLargeException;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 503
    :cond_11
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/FieldWriter;->computeFieldInfoSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 505
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldWriter;

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_0

    .line 510
    :cond_12
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->computeMethodInfoSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 512
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodWriter;

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_1

    .line 604
    :cond_13
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->computeRecordComponentInfoSize()I

    move-result v5

    .line 606
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 626
    :cond_14
    new-instance v5, Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v0, v1

    invoke-direct {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    .line 627
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 628
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->putConstantPool(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 629
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v0, v11

    if-ge v0, v13, :cond_23

    const/16 v0, 0x1000

    .line 630
    :goto_5
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->thisClass:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->superClass:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 631
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v6

    .line 632
    :goto_6
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-lt v0, v1, :cond_24

    .line 635
    invoke-virtual {v5, v10}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 636
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    .line 637
    :goto_7
    if-nez v0, :cond_25

    .line 641
    invoke-virtual {v5, v9}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 644
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    move v9, v6

    move v10, v6

    .line 645
    :goto_8
    if-nez v0, :cond_26

    .line 652
    invoke-virtual {v5, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 653
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_15

    .line 654
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v6, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 660
    :cond_15
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz v0, :cond_16

    .line 661
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingMethodIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 667
    :cond_16
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_17

    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v0, v11

    if-ge v0, v13, :cond_17

    .line 668
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 670
    :cond_17
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    if-eqz v0, :cond_18

    .line 671
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v12}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 676
    :cond_18
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    if-eqz v0, :cond_19

    .line 677
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v12}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 682
    :cond_19
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1a

    .line 683
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 684
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "SourceDebugExtension"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    invoke-virtual {v1, v2, v6, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 689
    :cond_1a
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 690
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 692
    :cond_1b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 699
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->putBootstrapMethods(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 700
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    if-eqz v0, :cond_1c

    .line 701
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ModuleWriter;->putAttributes(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 703
    :cond_1c
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    if-eqz v0, :cond_1d

    .line 704
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "NestHost"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v12}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 709
    :cond_1d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1e

    .line 710
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "NestMembers"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v6, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 716
    :cond_1e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1f

    .line 717
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "PermittedSubclasses"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v6, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 723
    :cond_1f
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int/2addr v0, v14

    if-nez v0, :cond_20

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    if-eqz v0, :cond_21

    .line 724
    :cond_20
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Record"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    add-int/lit8 v1, v7, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 728
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    .line 729
    :goto_9
    if-nez v0, :cond_27

    .line 734
    :cond_21
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_22

    .line 735
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, v5}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 739
    :cond_22
    if-eqz v10, :cond_28

    .line 740
    iget-object v0, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    invoke-direct {p0, v0, v9}, Lzeroaicy/org/objectweb/asm/ClassWriter;->replaceAsmInstructions([BZ)[B

    move-result-object v0

    .line 742
    :goto_a
    return-object v0

    :cond_23
    move v0, v6

    .line 629
    goto/16 :goto_5

    .line 633
    :cond_24
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaces:[I

    aget v1, v1, v0

    invoke-virtual {v5, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 638
    :cond_25
    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/FieldWriter;->putFieldInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 639
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/FieldWriter;

    goto/16 :goto_7

    .line 646
    :cond_26
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasFrames()Z

    move-result v1

    .line 647
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions()Z

    move-result v3

    .line 648
    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putMethodInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 649
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/MethodWriter;

    or-int/2addr v3, v10

    or-int/2addr v1, v9

    move v9, v1

    move v10, v3

    goto/16 :goto_8

    .line 730
    :cond_27
    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->putRecordComponentInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 731
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    check-cast v0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    goto :goto_9

    .line 742
    :cond_28
    iget-object v0, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    goto :goto_a

    :cond_29
    move v7, v6

    move v8, v6

    goto/16 :goto_4

    :cond_2a
    move v0, v6

    goto/16 :goto_2
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v4, 0xffff

    const/4 v1, 0x0

    .line 302
    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    .line 303
    iput p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    .line 304
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    and-int v2, p1, v4

    invoke-virtual {v0, v2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->setMajorVersionAndClassName(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->thisClass:I

    .line 305
    if-eqz p4, :cond_0

    .line 306
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    .line 308
    :cond_0
    if-nez p5, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->superClass:I

    .line 309
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    .line 310
    array-length v0, p6

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    .line 311
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaces:[I

    .line 312
    :goto_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-lt v1, v0, :cond_4

    .line 316
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    and-int v0, p1, v4

    const/16 v1, 0x33

    if-lt v0, v1, :cond_2

    .line 317
    const/4 v0, 0x2

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    :cond_2
    return-void

    .line 308
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaces:[I

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v3, p6, v1

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    aput v2, v0, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 358
    if-eqz p2, :cond_0

    .line 359
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 362
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public final visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 384
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 385
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .registers 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 451
    new-instance v0, Lzeroaicy/org/objectweb/asm/FieldWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/FieldWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    if-nez v1, :cond_0

    .line 454
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    .line 458
    :goto_0
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    return-object v0

    .line 456
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    goto :goto_0
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 418
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v2

    .line 419
    iget v0, v2, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    if-nez v0, :cond_1

    .line 420
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    .line 421
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 422
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 423
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 424
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 425
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    iput v0, v2, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    :cond_1
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    goto :goto_0

    .line 423
    :cond_3
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 468
    new-instance v0, Lzeroaicy/org/objectweb/asm/MethodWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v7, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/MethodWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 470
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    if-nez v1, :cond_0

    .line 471
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    .line 475
    :goto_0
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    return-object v0

    .line 473
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    goto :goto_0
.end method

.method public final visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 334
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v3, Lzeroaicy/org/objectweb/asm/ModuleWriter;

    invoke-direct {v3, v1, v2, p2, v0}, Lzeroaicy/org/objectweb/asm/ModuleWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;III)V

    iput-object v3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    return-object v3

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final visitNestHost(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 344
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    return-void
.end method

.method public final visitNestMember(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 390
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 393
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 350
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    .line 351
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 352
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingMethodIndex:I

    :cond_0
    return-void
.end method

.method public final visitPermittedSubclass(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 399
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 402
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    .line 403
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public final visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 434
    new-instance v0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-direct {v0, v1, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    if-nez v1, :cond_0

    .line 437
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    .line 441
    :goto_0
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    return-object v0

    .line 439
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    goto :goto_0
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    .line 326
    :cond_0
    if-eqz p2, :cond_1

    .line 327
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 370
    if-eqz p4, :cond_0

    .line 371
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 375
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method
