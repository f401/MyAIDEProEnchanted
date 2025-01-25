.class public Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;
.super Ljava/lang/Object;
.source "ClassReferenceListBuilder.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"


# instance fields
.field private final classNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/s1243808733/android/multidex/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/multidex/Path;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    .line 47
    iput-object p1, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->path:Lcom/s1243808733/android/multidex/Path;

    return-void
.end method

.method private addClassWithHierachy(Ljava/lang/String;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 150
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->path:Lcom/s1243808733/android/multidex/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/multidex/Path;->getClass(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 154
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V

    .line 157
    :cond_36
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v0, :cond_50

    .line 160
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_4c} :catch_4f

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :catch_4f
    move-exception p1

    :cond_50
    return-void
.end method

.method private addDependencies(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V
    .registers 8

    .line 99
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->getEntries()[Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_43

    aget-object v4, v0, v3

    .line 100
    instance-of v5, v4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v5, :cond_21

    .line 101
    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    goto :goto_40

    .line 102
    :cond_21
    instance-of v5, v4, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v5, :cond_33

    .line 103
    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    goto :goto_40

    .line 104
    :cond_33
    instance-of v5, v4, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v5, :cond_40

    .line 105
    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkPrototype(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 109
    :cond_43
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v1, :cond_60

    .line 112
    invoke-interface {v0, v3}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Field;

    move-result-object v4

    invoke-interface {v4}, Lcom/s1243808733/android/dx/cf/iface/Field;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 115
    :cond_60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v0

    :goto_68
    if-ge v2, v0, :cond_80

    .line 118
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v1

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/Method;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkPrototype(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_80
    return-void
.end method

.method private checkDescriptor(Ljava/lang/String;)V
    .registers 5

    .line 131
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 132
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1e

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V

    goto :goto_2c

    .line 139
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 138
    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private checkPrototype(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 4

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 125
    :goto_10
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 126
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-static {p0}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->main([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRoots(Ljava/util/zip/ZipFile;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 68
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, ".class"

    if-eqz v1, :cond_2d

    .line 69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 70
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    iget-object v2, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 77
    :cond_2d
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 78
    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 79
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 80
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 84
    :try_start_47
    iget-object v1, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->path:Lcom/s1243808733/android/multidex/Path;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/multidex/Path;->getClass(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v0
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_4d} :catch_51

    .line 89
    invoke-direct {p0, v0}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->addDependencies(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    goto :goto_31

    :catch_51
    move-exception p1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is missing form original class path "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->path:Lcom/s1243808733/android/multidex/Path;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_70
    return-void
.end method

.method getClassNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    return-object v0
.end method
