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
    .registers 3

    const/16 v0, 0x10

    const/16 v1, 0x400

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->classModifiers:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->innerClassModifiers:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->fieldModifiers:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->methodModifiers:[I

    return-void

    nop

    :array_26
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x400
    .end array-data

    :array_36
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x40
        0x80
    .end array-data

    :array_48
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
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    return-void
.end method

.method private static flagToModifier(ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_59

    const/4 v0, 0x4

    if-eq p0, v0, :cond_56

    const/16 v0, 0x8

    if-eq p0, v0, :cond_53

    const/16 v0, 0x10

    if-eq p0, v0, :cond_50

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3f

    const/16 p1, 0x100

    if-eq p0, p1, :cond_3c

    const/16 p1, 0x400

    if-eq p0, p1, :cond_39

    const/16 p1, 0x800

    if-eq p0, p1, :cond_36

    const p1, 0x8000

    if-eq p0, p1, :cond_33

    .line 165
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    return-object v1

    .line 163
    :cond_33
    const-string p0, "mandated"

    return-object p0

    .line 161
    :cond_36
    const-string p0, "strictfp"

    return-object p0

    .line 159
    :cond_39
    const-string p0, "abstract"

    return-object p0

    .line 157
    :cond_3c
    const-string p0, "native"

    return-object p0

    .line 153
    :cond_3f
    sget-object p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Field:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    if-ne p1, p0, :cond_46

    const-string v1, "transient"

    goto :goto_49

    :cond_46
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_49
    return-object v1

    .line 155
    :cond_4a
    const-string p0, "volatile"

    return-object p0

    .line 151
    :cond_4d
    const-string p0, "synchronized"

    return-object p0

    .line 149
    :cond_50
    const-string p0, "final"

    return-object p0

    .line 147
    :cond_53
    const-string p0, "static"

    return-object p0

    .line 145
    :cond_56
    const-string p0, "protected"

    return-object p0

    .line 143
    :cond_59
    const-string p0, "private"

    return-object p0

    .line 141
    :cond_5c
    const-string p0, "public"

    return-object p0
.end method

.method private static getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    .line 124
    :goto_6
    array-length v2, p1

    if-lt v1, v2, :cond_a

    return-object v0

    .line 122
    :cond_a
    aget v2, p1, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_17

    .line 124
    invoke-static {v2, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flagToModifier(ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private getModifiers([ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    invoke-static {v0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static toModifiersString(Ljava/util/Set;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 133
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method


# virtual methods
.method public addPublicFlags()Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;
    .registers 1

    return-object p0
.end method

.method public getClassModifiers()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    and-int/lit16 v0, v0, -0x401

    .line 87
    :cond_8
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->classModifiers:[I

    sget-object v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->Class:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-static {v0, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldModifiers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
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
    .registers 2

    .line 175
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    return v0
.end method

.method public getInnerClassModifiers()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    and-int/lit16 v0, v0, -0x401

    .line 96
    :cond_8
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->innerClassModifiers:[I

    sget-object v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;->InnerClass:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;

    invoke-static {v0, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getModifiers(I[ILio/github/zeroaicy/readclass/classInfo/util/AccessFlags$Kind;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodModifiers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
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
    .registers 3

    .line 80
    iget v0, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    const/4 p1, 0x1

    :goto_8
    return p1
.end method

.method public isAbstract()Z
    .registers 2

    .line 54
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isBridge()Z
    .registers 2

    .line 68
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isClass()Z
    .registers 2

    .line 48
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isInterface()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnum()Z
    .registers 2

    .line 58
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .registers 2

    .line 51
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .registers 2

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .registers 2

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .registers 2

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .registers 2

    .line 61
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public isVarargs()Z
    .registers 2

    .line 65
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->is(I)Z

    move-result v0

    return v0
.end method

.method public setFlags(I)Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;
    .registers 2

    .line 171
    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->flags:I

    return-object p0
.end method
