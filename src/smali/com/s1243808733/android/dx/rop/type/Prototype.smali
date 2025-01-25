.class public final Lcom/s1243808733/android/dx/rop/type/Prototype;
.super Ljava/lang/Object;
.source "Prototype.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/type/Prototype;",
        ">;"
    }
.end annotation


# static fields
.field private static final internTable:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/rop/type/Prototype;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field private final parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field private final returnType:Lcom/s1243808733/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V
    .registers 4

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_13

    .line 256
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 258
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 259
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-void

    .line 253
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterTypes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static clearInternTable()V
    .registers 1

    .line 135
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public static fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 9

    .line 85
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-eqz v0, :cond_b

    return-object v0

    .line 90
    :cond_b
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->makeParameterArray(Ljava/lang/String;)[Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    :goto_13
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_39

    .line 124
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 125
    new-instance v3, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    :goto_29
    if-ge v1, v4, :cond_33

    .line 128
    aget-object v5, v0, v1

    invoke-virtual {v3, v1, v5}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 131
    :cond_33
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-direct {v0, p0, v2, v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V

    return-object v0

    :cond_39
    move v6, v3

    :goto_3a
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_45

    add-int/lit8 v6, v6, 0x1

    .line 105
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3a

    :cond_45
    const/16 v7, 0x4c

    if-ne v5, v7, :cond_5d

    .line 110
    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_55

    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 112
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    add-int/lit8 v5, v6, 0x1

    .line 120
    :goto_5f
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_13
.end method

.method public static intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    if-eqz p0, :cond_16

    .line 63
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-eqz v0, :cond_d

    return-object v0

    .line 68
    :cond_d
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->putIntern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    return-object p0

    .line 60
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intern(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;ZZ)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 4

    .line 197
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    if-eqz p2, :cond_7

    return-object p0

    :cond_7
    if-eqz p3, :cond_10

    .line 204
    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/rop/type/Type;->asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 207
    :cond_10
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    return-object p0
.end method

.method public static internInts(Lcom/s1243808733/android/dx/rop/type/Type;I)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 5

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, p1, :cond_17

    .line 226
    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 229
    :cond_17
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    return-object p0
.end method

.method private static makeParameterArray(Ljava/lang/String;)[Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 9

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    const-string v4, "bad descriptor"

    if-ne v2, v3, :cond_47

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_12
    const/16 v6, 0x29

    if-ge v3, v0, :cond_2b

    .line 162
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1e

    move v1, v3

    goto :goto_2b

    :cond_1e
    const/16 v6, 0x41

    if-lt v7, v6, :cond_28

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_28

    add-int/lit8 v5, v5, 0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_41

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_41

    .line 176
    add-int/2addr v1, v2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3b

    .line 180
    new-array p0, v5, [Lcom/s1243808733/android/dx/rop/type/Type;

    return-object p0

    .line 177
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw p0

    :goto_4e
    goto :goto_4d
.end method

.method private static putIntern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 3

    .line 418
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-eqz v0, :cond_f

    move-object p0, v0

    :cond_f
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    if-eqz v1, :cond_f

    return v1

    .line 305
    :cond_f
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v1

    .line 306
    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v2

    .line 307
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_38

    .line 310
    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    .line 311
    iget-object v6, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    .line 313
    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v5

    if-eqz v5, :cond_35

    return v5

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_38
    if-ge v1, v2, :cond_3c

    const/4 p1, -0x1

    return p1

    :cond_3c
    if-le v1, v2, :cond_40

    const/4 p1, 0x1

    return p1

    :cond_40
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 27
    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 273
    :cond_4
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterFrameTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 7

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    if-nez v0, :cond_2f

    .line 372
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 373
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v0, :cond_28

    .line 376
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    .line 377
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 379
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v3, 0x1

    .line 381
    :cond_22
    invoke-virtual {v1, v2, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    if-eqz v3, :cond_2b

    goto :goto_2d

    .line 383
    :cond_2b
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    :goto_2d
    iput-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 386
    :cond_2f
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public withFirstParameter(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 5

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->withFirst(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object p1

    .line 401
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 403
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v1, v0, v2, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V

    .line 406
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->putIntern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    return-object p1
.end method
