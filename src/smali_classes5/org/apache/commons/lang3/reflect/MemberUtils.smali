.class abstract Lorg/apache/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    }
.end annotation


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method static compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 120
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method private static compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .line 136
    invoke-static {p2, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result v0

    .line 137
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result v1

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    .line 219
    :cond_a
    :goto_a
    return v0

    .line 198
    :cond_b
    const/4 v0, 0x0

    .line 199
    :goto_c
    if-eqz p0, :cond_23

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 200
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 206
    const/high16 v1, 0x3e800000  # 0.25f

    add-float/2addr v0, v1

    .line 216
    :cond_23
    if-nez p0, :cond_a

    .line 217
    const/high16 v1, 0x3fc00000  # 1.5f

    add-float/2addr v0, v1

    goto :goto_a

    .line 209
    :cond_29
    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    const v5, 0x3dcccccd  # 0.1f

    const/4 v0, 0x0

    .line 230
    if-nez p0, :cond_9

    .line 231
    const/high16 v2, 0x3fc00000  # 1.5f

    .line 248
    :cond_8
    return v2

    .line 235
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_14

    .line 237
    add-float/2addr v0, v5

    .line 238
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 240
    :cond_14
    const/4 v3, 0x0

    move v2, v0

    move-object v1, p0

    :goto_17
    if-eq v1, p1, :cond_8

    sget-object v0, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v4, v0

    if-ge v3, v4, :cond_8

    .line 241
    aget-object v4, v0, v3

    if-ne v1, v4, :cond_30

    .line 242
    add-float/2addr v2, v5

    .line 243
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_30

    .line 244
    add-int/lit8 v1, v3, 0x1

    aget-object v0, v0, v1

    .line 240
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_17

    :cond_30
    move-object v0, v1

    goto :goto_2c
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            ")F"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v10, 0x3a83126f  # 0.001f

    .line 149
    invoke-virtual {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 150
    invoke-virtual {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v5

    .line 153
    const/4 v3, 0x0

    .line 154
    array-length v0, v4

    if-eqz v5, :cond_13

    add-int/lit8 v0, v0, -0x1

    :cond_13
    int-to-long v6, v0

    .line 155
    array-length v0, p0

    int-to-long v8, v0

    cmp-long v0, v8, v6

    if-gez v0, :cond_1e

    .line 156
    const v1, 0x7f7fffff  # Float.MAX_VALUE

    .line 183
    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    move v0, v2

    .line 158
    :goto_1f
    int-to-long v8, v0

    cmp-long v8, v8, v6

    if-gez v8, :cond_30

    .line 159
    aget-object v8, p0, v0

    aget-object v9, v4, v0

    invoke-static {v8, v9}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v8

    add-float/2addr v3, v8

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 161
    :cond_30
    if-eqz v5, :cond_8a

    .line 164
    array-length v0, p0

    array-length v5, v4

    if-ge v0, v5, :cond_63

    move v0, v1

    .line 165
    :goto_37
    array-length v5, p0

    array-length v6, v4

    if-ne v5, v6, :cond_4e

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p0, v5

    if-eqz v5, :cond_4e

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p0, v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4e

    move v2, v1

    .line 167
    :cond_4e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 169
    if-eqz v0, :cond_65

    .line 171
    const-class v0, Ljava/lang/Object;

    invoke-static {v5, v0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    add-float/2addr v0, v10

    add-float v1, v3, v0

    goto :goto_1d

    :cond_63
    move v0, v2

    .line 164
    goto :goto_37

    .line 172
    :cond_65
    if-eqz v2, :cond_78

    .line 173
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 174
    invoke-static {v0, v5}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    add-float/2addr v0, v10

    add-float v1, v3, v0

    .line 175
    goto :goto_1d

    .line 177
    :cond_78
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_7c
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    .line 178
    aget-object v2, p0, v0

    .line 179
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v2

    add-float/2addr v2, v10

    add-float/2addr v1, v2

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_8a
    move v1, v3

    goto :goto_1d
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .registers 2

    .line 86
    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static isMatchingConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 261
    invoke-static {p1, v3, v2}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    move v1, v2

    .line 281
    :cond_d
    :goto_d
    return v1

    .line 265
    :cond_e
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 267
    :goto_15
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2a

    array-length v4, p1

    if-ge v0, v4, :cond_2a

    .line 268
    aget-object v4, p1, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5, v2}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 272
    :cond_2a
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 273
    :goto_33
    array-length v4, p1

    if-ge v0, v4, :cond_41

    .line 274
    aget-object v4, p1, v0

    invoke-static {v4, v3, v2}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_41
    move v1, v2

    .line 278
    goto :goto_d
.end method

.method static isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPackageAccess(I)Z
    .registers 2

    .line 77
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    move v0, v2

    .line 68
    :goto_b
    return v0

    :cond_c
    move-object v0, p0

    .line 59
    check-cast v0, Ljava/lang/reflect/Member;

    .line 60
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 62
    const/4 v0, 0x1

    :try_start_2e
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_31} :catch_33

    move v0, v1

    .line 63
    goto :goto_b

    .line 64
    :catch_33
    move-exception v0

    :cond_34
    move v0, v2

    .line 68
    goto :goto_b
.end method
