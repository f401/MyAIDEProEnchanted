.class public Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;
.super Ljava/lang/Object;
.source "AccessFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;
    }
.end annotation


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_MANDATED:I = 0x8000

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final classModifiers:[I

.field public static final fieldModifiers:[I

.field public static final innerClassModifiers:[I

.field public static final methodModifiers:[I


# instance fields
.field private flags:I


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->classModifiers:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->innerClassModifiers:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->fieldModifiers:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->methodModifiers:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x10
        0x400
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x400
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x40
        0x80
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x100
        0x400
        0x800
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    return-void
.end method

.method private static flagToModifier(ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/16 v0, 0x8

    if-eq p0, v0, :cond_9

    const/16 v0, 0x10

    if-eq p0, v0, :cond_8

    const/16 v0, 0x20

    if-eq p0, v0, :cond_7

    const/16 v0, 0x40

    if-eq p0, v0, :cond_6

    const/16 v0, 0x80

    if-eq p0, v0, :cond_4

    const/16 v0, 0x100

    if-eq p0, v0, :cond_3

    const/16 v0, 0x400

    if-eq p0, v0, :cond_2

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const v0, 0x8000

    if-eq p0, v0, :cond_0

    move-object v0, v1

    .line 165
    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v1

    .line 163
    :cond_0
    const-string v1, "mandated"

    goto :goto_0

    .line 161
    :cond_1
    const-string v1, "strictfp"

    goto :goto_0

    .line 159
    :cond_2
    const-string v1, "abstract"

    goto :goto_0

    .line 157
    :cond_3
    const-string v1, "native"

    goto :goto_0

    .line 153
    :cond_4
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Field:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    if-ne p1, v0, :cond_5

    const-string v1, "transient"

    goto :goto_0

    :cond_5
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_6
    const-string v1, "volatile"

    goto :goto_0

    .line 151
    :cond_7
    const-string v1, "synchronized"

    goto :goto_0

    .line 149
    :cond_8
    const-string v1, "final"

    goto :goto_0

    .line 147
    :cond_9
    const-string v1, "static"

    goto :goto_0

    .line 145
    :cond_a
    const-string v1, "protected"

    goto :goto_0

    .line 143
    :cond_b
    const-string v1, "private"

    goto :goto_0

    .line 141
    :cond_c
    const-string v1, "public"

    goto :goto_0
.end method

.method private static getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    .line 124
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-object v1

    .line 122
    :cond_0
    aget v2, p1, v0

    and-int v3, p0, v2

    if-eqz v3, :cond_1

    .line 124
    invoke-static {v2, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flagToModifier(ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getModifiers([ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    invoke-static {v0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static toModifiersString(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 133
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addPublicFlags()Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;
    .locals 0

    return-object p0
.end method

.method public getClassModifiers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    and-int/lit16 v0, v0, -0x401

    .line 87
    :cond_0
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->classModifiers:[I

    sget-object v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Class:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-static {v0, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldModifiers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->fieldModifiers:[I

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Field:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-direct {p0, v0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers([ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 175
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    return v0
.end method

.method public getInnerClassModifiers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    and-int/lit16 v0, v0, -0x401

    .line 96
    :cond_0
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->innerClassModifiers:[I

    sget-object v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->InnerClass:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-static {v0, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodModifiers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->methodModifiers:[I

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Method:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-direct {p0, v0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers([ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public is(I)Z
    .locals 1

    .line 80
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAbstract()Z
    .locals 1

    .line 54
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isBridge()Z
    .locals 1

    .line 68
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isClass()Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isInterface()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 58
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 51
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 61
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isVarargs()Z
    .locals 1

    .line 65
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public setFlags(I)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;
    .locals 0

    .line 171
    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    return-object p0
.end method
