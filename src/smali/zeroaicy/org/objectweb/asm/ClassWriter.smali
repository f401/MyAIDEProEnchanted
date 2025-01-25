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
    .registers 4

    .line 235
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/ClassReader;

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

    if-nez p1, :cond_f

    .line 265
    new-instance p1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-direct {p1, p0}, Lzeroaicy/org/objectweb/asm/SymbolTable;-><init>(Lzeroaicy/org/objectweb/asm/ClassWriter;)V

    goto :goto_15

    :cond_f
    new-instance v0, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-direct {v0, p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;-><init>(Lzeroaicy/org/objectweb/asm/ClassWriter;Lzeroaicy/org/objectweb/asm/ClassReader;)V

    move-object p1, v0

    :goto_15
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1f

    .line 267
    const/4 p1, 0x4

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    goto :goto_29

    :cond_1f
    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_26

    .line 269
    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    goto :goto_29

    .line 271
    :cond_26
    const/4 p1, 0x0

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    :goto_29
    return-void
.end method

.method private getAttributePrototypes()[Lzeroaicy/org/objectweb/asm/Attribute;
    .registers 3

    .line 790
    new-instance v0, Lzeroaicy/org/objectweb/asm/Attribute$Set;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;-><init>()V

    .line 791
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V

    .line 792
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    :goto_c
    if-nez v1, :cond_2b

    .line 797
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    :goto_10
    if-nez v1, :cond_23

    .line 802
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    :goto_14
    if-nez v1, :cond_1b

    .line 807
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->toArray()[Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    return-object v0

    .line 804
    :cond_1b
    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V

    .line 805
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    goto :goto_14

    .line 799
    :cond_23
    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V

    .line 800
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/MethodWriter;

    goto :goto_10

    .line 794
    :cond_2b
    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/FieldWriter;->collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V

    .line 795
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/FieldWriter;

    goto :goto_c
.end method

.method private replaceAsmInstructions([BZ)[B
    .registers 7

    .line 757
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getAttributePrototypes()[Lzeroaicy/org/objectweb/asm/Attribute;

    move-result-object v0

    .line 758
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/FieldWriter;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    .line 759
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    .line 760
    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/MethodWriter;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    .line 761
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    .line 762
    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 763
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 764
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 765
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 766
    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/ModuleWriter;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    .line 767
    const/4 v2, 0x0

    iput v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    .line 768
    iput v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 769
    move-object v3, v1

    check-cast v3, Lzeroaicy/org/objectweb/asm/ByteVector;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 770
    iput v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    .line 771
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 772
    move-object v3, v1

    check-cast v3, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    .line 773
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    .line 774
    move-object v3, v1

    check-cast v3, Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz p2, :cond_41

    const/4 v1, 0x3

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    .line 775
    :goto_42
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    .line 776
    new-instance v1, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v1, p1, v2, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([BIZ)V

    if-eqz p2, :cond_4d

    const/16 v2, 0x8

    :cond_4d
    or-int/lit16 p1, v2, 0x100

    invoke-virtual {v1, p0, v0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;[Lzeroaicy/org/objectweb/asm/Attribute;I)V

    .line 781
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
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

    .line 1040
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1043
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_8
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_11} :catch_51

    .line 1049
    :try_start_11
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_19} :catch_4a

    .line 1053
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_20

    return-object p1

    .line 1056
    :cond_20
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_27

    return-object p2

    .line 1059
    :cond_27
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_47

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_47

    .line 1063
    :cond_34
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 1062
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1065
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1060
    :cond_47
    :goto_47
    const-string p1, "java/lang/Object"

    return-object p1

    :catch_4a
    move-exception p1

    .line 1051
    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, p2, p1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_51
    move-exception p2

    .line 1045
    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-direct {v0, p1, p2}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    :goto_58
    throw v0

    :goto_59
    goto :goto_58
.end method

.method public hasFlags(I)Z
    .registers 3

    .line 287
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->flags:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_7

    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    const/4 p1, 0x1

    :goto_8
    return p1
.end method

.method public newClass(Ljava/lang/String;)I
    .registers 3

    .line 849
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newConst(Ljava/lang/Object;)I
    .registers 3

    .line 824
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public varargs newConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .registers 6

    .line 952
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 989
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_9

    :cond_7
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 908
    :goto_9
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
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

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .registers 6

    .line 973
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 1006
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .registers 3

    .line 861
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newModule(Ljava/lang/String;)I
    .registers 3

    .line 873
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1019
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public newPackage(Ljava/lang/String;)I
    .registers 3

    .line 885
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    return p1
.end method

.method public newUTF8(Ljava/lang/String;)I
    .registers 3

    .line 837
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toByteArray()[B
    .registers 35

    .line 499
    move-object/from16 v0, p0

    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x18

    .line 501
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    const/4 v5, 0x0

    :goto_c
    if-nez v3, :cond_41e

    .line 508
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    const/4 v6, 0x0

    :goto_11
    if-nez v3, :cond_40b

    .line 517
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    const-string v7, "InnerClasses"

    if-eqz v3, :cond_25

    .line 519
    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 520
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v7}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 522
    :goto_26
    iget v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    const-string v9, "EnclosingMethod"

    if-eqz v8, :cond_35

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0xa

    .line 525
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 527
    :cond_35
    iget v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    const/16 v10, 0x1000

    and-int/2addr v8, v10

    const-string v11, "Synthetic"

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v8, :cond_51

    iget v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v8, v13

    if-ge v8, v12, :cond_51

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 530
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v11}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 532
    :cond_51
    iget v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    const-string v14, "Signature"

    if-eqz v8, :cond_60

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 535
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v14}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 537
    :cond_60
    iget v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    const-string v15, "SourceFile"

    if-eqz v8, :cond_6f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 540
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v15}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 542
    :cond_6f
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    const-string v10, "SourceDebugExtension"

    if-eqz v8, :cond_81

    add-int/lit8 v3, v3, 0x1

    .line 544
    iget v8, v8, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v1, v8

    .line 545
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v10}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 547
    :cond_81
    iget v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    const/high16 v17, 0x20000

    and-int v8, v8, v17

    const-string v4, "Deprecated"

    if-eqz v8, :cond_94

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 550
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v8, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 552
    :cond_94
    iget-object v8, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v8, :cond_a1

    add-int/lit8 v3, v3, 0x1

    .line 554
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v8, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 558
    :cond_a1
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_ae

    add-int/lit8 v3, v3, 0x1

    .line 560
    const-string v8, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v8}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 564
    :cond_ae
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_bb

    add-int/lit8 v3, v3, 0x1

    .line 566
    const-string v8, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v8}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 570
    :cond_bb
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_c8

    add-int/lit8 v3, v3, 0x1

    .line 572
    const-string v8, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v8}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 576
    :cond_c8
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v2

    if-lez v2, :cond_d9

    add-int/lit8 v3, v3, 0x1

    .line 578
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 580
    :cond_d9
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    if-eqz v2, :cond_e9

    .line 581
    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/ModuleWriter;->getAttributeCount()I

    move-result v2

    add-int/2addr v3, v2

    .line 582
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/ModuleWriter;->computeAttributesSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 584
    :cond_e9
    iget v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    const-string v8, "NestHost"

    if-eqz v2, :cond_f8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 587
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 589
    :cond_f8
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    const-string v12, "NestMembers"

    if-eqz v2, :cond_10a

    add-int/lit8 v3, v3, 0x1

    .line 591
    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 592
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v12}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 594
    :cond_10a
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    const-string v13, "PermittedSubclasses"

    if-eqz v2, :cond_121

    .line 596
    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 597
    move-object/from16 v22, v12

    iget-object v12, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v12, v13}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move v12, v3

    goto :goto_125

    .line 594
    :cond_121
    move-object/from16 v22, v12

    move v2, v1

    move v12, v3

    .line 597
    :goto_125
    nop

    .line 601
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    const/high16 v23, 0x10000

    and-int v1, v1, v23

    const-string v3, "Record"

    if-nez v1, :cond_139

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    if-eqz v1, :cond_135

    goto :goto_139

    :cond_135
    const/4 v1, 0x0

    const/16 v25, 0x0

    goto :goto_14d

    .line 602
    :cond_139
    :goto_139
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_13f
    if-nez v1, :cond_3e8

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v25, 0x8

    add-int/2addr v2, v1

    .line 610
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move/from16 v1, v24

    .line 612
    :goto_14d
    move/from16 v24, v1

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_166

    .line 613
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v1

    .line 614
    move-object/from16 v26, v3

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    move-object/from16 v27, v13

    iget-object v13, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v13}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v12, v1

    goto :goto_16a

    .line 612
    :cond_166
    move-object/from16 v26, v3

    move-object/from16 v27, v13

    .line 618
    :goto_16a
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getConstantPoolLength()I

    move-result v1

    .line 619
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getConstantPoolCount()I

    move-result v3

    const v13, 0xffff

    if-gt v3, v13, :cond_3dc

    .line 626
    new-instance v13, Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v2, v1

    invoke-direct {v13, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>(I)V

    .line 627
    const v1, -0x35014542  # -8346975.0f

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 628
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v13}, Lzeroaicy/org/objectweb/asm/SymbolTable;->putConstantPool(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 629
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-ge v1, v2, :cond_19f

    const/16 v1, 0x1000

    goto :goto_1a0

    :cond_19f
    const/4 v1, 0x0

    .line 630
    :goto_1a0
    xor-int/lit8 v1, v1, -0x1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int/2addr v1, v2

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->thisClass:I

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->superClass:I

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 631
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    .line 632
    :goto_1ba
    iget v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-lt v1, v2, :cond_3ba

    .line 635
    invoke-virtual {v13, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 636
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    :goto_1c3
    if-nez v1, :cond_39c

    .line 641
    invoke-virtual {v13, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 644
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1cc
    if-nez v1, :cond_372

    .line 652
    invoke-virtual {v13, v12}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 653
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_1fb

    .line 654
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v7}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v6, v6, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 660
    :cond_1fb
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz v1, :cond_219

    .line 661
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v9}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingMethodIndex:I

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 667
    :cond_219
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    const/16 v5, 0x1000

    and-int/2addr v1, v5

    if-eqz v1, :cond_239

    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    const v16, 0xffff

    and-int v1, v1, v16

    const/16 v6, 0x31

    if-ge v1, v6, :cond_239

    .line 668
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v11}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 670
    :cond_239
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    if-eqz v1, :cond_251

    .line 671
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v14}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 676
    :cond_251
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    if-eqz v1, :cond_269

    .line 677
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v15}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 682
    :cond_269
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_285

    .line 683
    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 684
    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v5, v10}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v5

    invoke-virtual {v5, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v5

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v6, v6, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 689
    :cond_285
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v17

    if-eqz v1, :cond_299

    .line 690
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 692
    :cond_299
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object/from16 v28, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v13

    invoke-static/range {v28 .. v33}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 699
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v13}, Lzeroaicy/org/objectweb/asm/SymbolTable;->putBootstrapMethods(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 700
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    if-eqz v1, :cond_2be

    .line 701
    invoke-virtual {v1, v13}, Lzeroaicy/org/objectweb/asm/ModuleWriter;->putAttributes(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 703
    :cond_2be
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    if-eqz v1, :cond_2d6

    .line 704
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v8}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 709
    :cond_2d6
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_302

    .line 710
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move-object/from16 v4, v22

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 716
    :cond_302
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_32e

    .line 717
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move-object/from16 v4, v27

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 723
    :cond_32e
    iget v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v23

    if-nez v1, :cond_338

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    if-eqz v1, :cond_355

    .line 724
    :cond_338
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move-object/from16 v4, v26

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/16 v18, 0x2

    add-int/lit8 v4, v25, 0x2

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    move/from16 v4, v24

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 728
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    :goto_353
    if-nez v1, :cond_36a

    .line 734
    :cond_355
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_35e

    .line 735
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v4, v13}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_35e
    if-eqz v3, :cond_367

    .line 740
    iget-object v1, v13, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    invoke-direct {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassWriter;->replaceAsmInstructions([BZ)[B

    move-result-object v1

    return-object v1

    .line 742
    :cond_367
    iget-object v1, v13, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-object v1

    .line 730
    :cond_36a
    invoke-virtual {v1, v13}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->putRecordComponentInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 731
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    goto :goto_353

    .line 646
    :cond_372
    move-object/from16 v19, v22

    move-object/from16 v22, v26

    move-object/from16 v20, v27

    const/16 v5, 0x1000

    const/16 v6, 0x31

    const v16, 0xffff

    const/16 v18, 0x2

    const/16 v21, 0x0

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasFrames()Z

    move-result v26

    or-int v2, v2, v26

    .line 647
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions()Z

    move-result v26

    or-int v3, v3, v26

    .line 648
    invoke-virtual {v1, v13}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putMethodInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 649
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/MethodWriter;

    move-object/from16 v26, v22

    move-object/from16 v22, v19

    goto/16 :goto_1cc

    .line 638
    :cond_39c
    move-object/from16 v19, v22

    move-object/from16 v22, v26

    move-object/from16 v20, v27

    const/16 v5, 0x1000

    const v16, 0xffff

    const/16 v18, 0x2

    const/16 v21, 0x0

    const/16 v26, 0x31

    invoke-virtual {v1, v13}, Lzeroaicy/org/objectweb/asm/FieldWriter;->putFieldInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 639
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/FieldWriter;

    move-object/from16 v26, v22

    move-object/from16 v22, v19

    goto/16 :goto_1c3

    .line 633
    :cond_3ba
    move-object/from16 v19, v22

    move-object/from16 v22, v26

    move-object/from16 v20, v27

    const v16, 0xffff

    const/16 v18, 0x2

    const/16 v21, 0x0

    const/16 v26, 0x31

    const/16 v27, 0x1000

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaces:[I

    aget v2, v2, v1

    invoke-virtual {v13, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v27, v20

    move-object/from16 v26, v22

    move-object/from16 v22, v19

    goto/16 :goto_1ba

    .line 621
    :cond_3dc
    new-instance v1, Lzeroaicy/org/objectweb/asm/ClassTooLargeException;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3e8
    move-object/from16 v20, v13

    move-object/from16 v19, v22

    const v16, 0xffff

    const/16 v18, 0x2

    const/16 v21, 0x0

    const/16 v26, 0x31

    const/16 v27, 0x1000

    move-object/from16 v22, v3

    add-int/lit8 v24, v24, 0x1

    .line 605
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->computeRecordComponentInfoSize()I

    move-result v3

    add-int v25, v25, v3

    .line 606
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    check-cast v1, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    move-object/from16 v3, v22

    move-object/from16 v22, v19

    goto/16 :goto_13f

    :cond_40b
    const/16 v18, 0x2

    const/16 v21, 0x0

    add-int/lit8 v6, v6, 0x1

    .line 511
    invoke-virtual {v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->computeMethodInfoSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 512
    iget-object v2, v3, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/MethodWriter;

    const/4 v2, 0x2

    goto/16 :goto_11

    :cond_41e
    const/16 v18, 0x2

    const/16 v21, 0x0

    add-int/lit8 v5, v5, 0x1

    .line 504
    invoke-virtual {v3}, Lzeroaicy/org/objectweb/asm/FieldWriter;->computeFieldInfoSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 505
    iget-object v2, v3, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/FieldWriter;

    const/4 v2, 0x2

    goto/16 :goto_c
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
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

    .line 302
    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->version:I

    .line 303
    iput p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->accessFlags:I

    .line 304
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p2, p1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->setMajorVersionAndClassName(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->thisClass:I

    if-eqz p4, :cond_1a

    .line 306
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->signatureIndex:I

    :cond_1a
    const/4 p2, 0x0

    if-nez p5, :cond_1f

    const/4 p3, 0x0

    goto :goto_27

    .line 308
    :cond_1f
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p3, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p3

    iget p3, p3, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    :goto_27
    iput p3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->superClass:I

    if-eqz p6, :cond_4b

    .line 309
    array-length p3, p6

    if-lez p3, :cond_4b

    .line 310
    array-length p3, p6

    iput p3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    .line 311
    new-array p3, p3, [I

    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaces:[I

    .line 312
    :goto_35
    iget p3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-lt p2, p3, :cond_3a

    goto :goto_4b

    .line 313
    :cond_3a
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->interfaces:[I

    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object p5, p6, p2

    invoke-virtual {p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p4

    iget p4, p4, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_35

    .line 316
    :cond_4b
    :goto_4b
    iget p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_57

    const/16 p2, 0x33

    if-lt p1, p2, :cond_57

    .line 317
    const/4 p1, 0x2

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    :cond_57
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p2, :cond_d

    .line 359
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 362
    :cond_d
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
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
    .registers 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 451
    new-instance v7, Lzeroaicy/org/objectweb/asm/FieldWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/FieldWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    if-nez p1, :cond_14

    .line 454
    iput-object v7, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    goto :goto_18

    .line 456
    :cond_14
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    iput-object v7, p1, Lzeroaicy/org/objectweb/asm/FieldVisitor;->fv:Lzeroaicy/org/objectweb/asm/FieldVisitor;

    .line 458
    :goto_18
    iput-object v7, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastField:Lzeroaicy/org/objectweb/asm/FieldWriter;

    return-object v7
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
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

    .line 409
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_b

    .line 410
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 418
    :cond_b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    .line 419
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    if-nez v0, :cond_4b

    .line 420
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    .line 421
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 422
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    if-nez p2, :cond_29

    const/4 p2, 0x0

    goto :goto_31

    :cond_29
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    :goto_31
    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 423
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_39

    goto :goto_3f

    :cond_39
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    :goto_3f
    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 424
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->innerClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p2, p4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 425
    iget p2, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfInnerClasses:I

    iput p2, p1, Lzeroaicy/org/objectweb/asm/Symbol;->info:I

    :cond_4b
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 468
    new-instance v8, Lzeroaicy/org/objectweb/asm/MethodWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v7, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->compute:I

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/MethodWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 470
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    if-nez p1, :cond_16

    .line 471
    iput-object v8, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    goto :goto_1a

    .line 473
    :cond_16
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    iput-object v8, p1, Lzeroaicy/org/objectweb/asm/MethodVisitor;->mv:Lzeroaicy/org/objectweb/asm/MethodVisitor;

    .line 475
    :goto_1a
    iput-object v8, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastMethod:Lzeroaicy/org/objectweb/asm/MethodWriter;

    return-object v8
.end method

.method public final visitModule(Ljava/lang/String;ILjava/lang/String;)Lzeroaicy/org/objectweb/asm/ModuleVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 334
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    if-nez p3, :cond_c

    const/4 p3, 0x0

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    :goto_12
    new-instance v1, Lzeroaicy/org/objectweb/asm/ModuleWriter;

    invoke-direct {v1, v0, p1, p2, p3}, Lzeroaicy/org/objectweb/asm/ModuleWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;III)V

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->moduleWriter:Lzeroaicy/org/objectweb/asm/ModuleWriter;

    return-object v1
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

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestHostClassIndex:I

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

    if-nez v0, :cond_b

    .line 391
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 393
    :cond_b
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->nestMemberClasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

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

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    .line 352
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p1, p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->enclosingMethodIndex:I

    :cond_16
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

    if-nez v0, :cond_b

    .line 400
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 402
    :cond_b
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->numberOfPermittedSubclasses:I

    .line 403
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->permittedSubclasses:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

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
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    if-nez p1, :cond_e

    .line 437
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->firstRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    goto :goto_12

    .line 439
    :cond_e
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;->delegate:Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;

    .line 441
    :goto_12
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRecordComponent:Lzeroaicy/org/objectweb/asm/RecordComponentWriter;

    return-object v0
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
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

    if-eqz p1, :cond_a

    .line 324
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->sourceFileIndex:I

    :cond_a
    if-eqz p2, :cond_1b

    .line 327
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->debugExtension:Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_1b
    return-void
.end method

.method public final visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p4, :cond_d

    .line 371
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 375
    :cond_d
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method
