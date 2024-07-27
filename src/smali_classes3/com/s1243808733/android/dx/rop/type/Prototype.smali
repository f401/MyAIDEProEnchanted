.class public final Lcom/s1243808733/android/dx/rop/type/Prototype;
.super Ljava/lang/Object;
.source "Prototype.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/rop/type/Prototype;",
        ">;"
    }
.end annotation


# static fields
.field private static final internTable:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
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
.method static final constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V
    .registers 6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    if-nez p2, :cond_1

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "returnType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    if-nez p3, :cond_2

    .line 253
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterTypes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 258
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 259
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-void
.end method

.method public static clearInternTable()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public static fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 8

    const/4 v1, 0x0

    .line 85
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 86
    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->makeParameterArray(Ljava/lang/String;)[Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    .line 92
    const/4 v2, 0x1

    move v0, v1

    .line 96
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 97
    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    .line 98
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 125
    new-instance v3, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 127
    :goto_2
    if-lt v1, v0, :cond_5

    .line 131
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-direct {v0, p0, v2, v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 103
    :goto_3
    const/16 v6, 0x5b

    if-eq v3, v6, :cond_2

    .line 108
    const/16 v6, 0x4c

    if-ne v3, v6, :cond_4

    .line 110
    const/16 v3, 0x3b

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 111
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 105
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 114
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 119
    :goto_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    aput-object v2, v5, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 116
    :cond_4
    add-int/lit8 v3, v4, 0x1

    goto :goto_4

    .line 128
    :cond_5
    aget-object v4, v5, v1

    invoke-virtual {v3, v1, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 3

    .line 59
    if-nez p0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 64
    if-eqz v0, :cond_1

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->putIntern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    goto :goto_0
.end method

.method public static intern(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;ZZ)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 6

    .line 197
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 199
    if-eqz p2, :cond_0

    .line 207
    :goto_0
    return-object v0

    .line 203
    :cond_0
    if-eqz p3, :cond_1

    .line 204
    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/type/Type;->asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 207
    :cond_1
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    goto :goto_0
.end method

.method public static internInts(Lcom/s1243808733/android/dx/rop/type/Type;I)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 5

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 229
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeParameterArray(Ljava/lang/String;)[Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 8

    const/16 v6, 0x29

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    const/4 v2, 0x1

    move v0, v1

    :goto_0
    if-lt v2, v3, :cond_2

    .line 172
    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v2, v3, -0x1

    if-ne v1, v2, :cond_4

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 163
    if-eq v4, v6, :cond_6

    .line 167
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_5
    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0

    :cond_6
    move v1, v2

    goto :goto_1
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

    .line 419
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 289
    if-ne p0, p1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    .line 301
    if-eqz v1, :cond_2

    move v0, v1

    .line 302
    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v3

    .line 306
    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v4

    .line 307
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    .line 309
    :goto_1
    if-lt v2, v5, :cond_3

    .line 320
    if-ge v3, v4, :cond_5

    .line 321
    const/4 v0, -0x1

    goto :goto_0

    .line 310
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 311
    iget-object v6, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    .line 313
    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    .line 315
    if-eqz v1, :cond_4

    move v0, v1

    .line 316
    goto :goto_0

    .line 309
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 322
    :cond_5
    if-le v3, v4, :cond_0

    .line 323
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 265
    if-ne p0, p1, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    .line 273
    :cond_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Prototype;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterFrameTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 7

    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v4

    .line 373
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    move v2, v1

    move v3, v1

    .line 375
    :goto_0
    if-lt v3, v4, :cond_1

    .line 383
    if-eqz v2, :cond_3

    :goto_1
    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    const/4 v2, 0x1

    .line 379
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 381
    :cond_2
    invoke-virtual {v0, v3, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 375
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    goto :goto_1
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public withFirstParameter(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 6

    .line 398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->parameterTypes:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->withFirst(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 403
    new-instance v2, Lcom/s1243808733/android/dx/rop/type/Prototype;

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/type/Prototype;->returnType:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v2, v0, v3, v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V

    .line 406
    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/type/Prototype;->putIntern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    return-object v0
.end method
