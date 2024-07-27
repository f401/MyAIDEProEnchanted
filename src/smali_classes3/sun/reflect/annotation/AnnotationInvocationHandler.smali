.class Lsun/reflect/annotation/AnnotationInvocationHandler;
.super Ljava/lang/Object;
.source "AnnotationInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private volatile transient memberMethods:[Ljava/lang/reflect/Method;

.field private final memberValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberMethods:[Ljava/lang/reflect/Method;

    .line 47
    iput-object p1, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    .line 48
    iput-object p2, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lsun/reflect/annotation/AnnotationInvocationHandler;)Ljava/lang/Class;
    .registers 2

    .line 42
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    return-object v0
.end method

.method private asOneOfUs(Ljava/lang/Object;)Lsun/reflect/annotation/AnnotationInvocationHandler;
    .registers 4

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lsun/reflect/annotation/AnnotationInvocationHandler;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lsun/reflect/annotation/AnnotationInvocationHandler;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 89
    const-class v1, [B

    if-ne v0, v1, :cond_0

    .line 90
    check-cast p1, [B

    .line 91
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-class v1, [C

    if-ne v0, v1, :cond_1

    .line 94
    check-cast p1, [C

    .line 95
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const-class v1, [D

    if-ne v0, v1, :cond_2

    .line 98
    check-cast p1, [D

    .line 99
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    const-class v1, [F

    if-ne v0, v1, :cond_3

    .line 102
    check-cast p1, [F

    .line 103
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_3
    const-class v1, [I

    if-ne v0, v1, :cond_4

    .line 106
    check-cast p1, [I

    .line 107
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_4
    const-class v1, [J

    if-ne v0, v1, :cond_5

    .line 110
    check-cast p1, [J

    .line 111
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_5
    const-class v1, [S

    if-ne v0, v1, :cond_6

    .line 114
    check-cast p1, [S

    .line 115
    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_6
    const-class v1, [Z

    if-ne v0, v1, :cond_7

    .line 118
    check-cast p1, [Z

    .line 119
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    .line 123
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private equalsImpl(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 11

    const/4 v3, 0x0

    .line 182
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-ne p1, p0, :cond_0

    move-object v0, v1

    .line 206
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->getMemberMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 188
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 189
    iget-object v7, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 190
    invoke-direct {p0, p1}, Lsun/reflect/annotation/AnnotationInvocationHandler;->asOneOfUs(Ljava/lang/Object;)Lsun/reflect/annotation/AnnotationInvocationHandler;

    move-result-object v8

    .line 192
    if-eqz v8, :cond_2

    .line 193
    iget-object v0, v8, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_2
    invoke-static {v7, v0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 187
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 197
    :catch_1
    move-exception v0

    .line 198
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 206
    goto :goto_0
.end method

.method private getMemberMethods()[Ljava/lang/reflect/Method;
    .registers 2

    .line 274
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lsun/reflect/annotation/AnnotationInvocationHandler$1;

    invoke-direct {v0, p0}, Lsun/reflect/annotation/AnnotationInvocationHandler$1;-><init>(Lsun/reflect/annotation/AnnotationInvocationHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    iput-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberMethods:[Ljava/lang/reflect/Method;

    .line 284
    :cond_0
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private hashCodeImpl()I
    .registers 5

    .line 292
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 295
    mul-int/lit8 v1, v1, 0x7f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValueHashCode(Ljava/lang/Object;)I

    move-result v0

    xor-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    .line 296
    goto :goto_0

    .line 297
    :cond_0
    return v2
.end method

.method private static memberValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 263
    :goto_0
    return v0

    .line 241
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 242
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 246
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_2
    const-class v1, [B

    if-ne v0, v1, :cond_3

    .line 250
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 251
    :cond_3
    const-class v1, [C

    if-ne v0, v1, :cond_4

    .line 252
    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_0

    .line 253
    :cond_4
    const-class v1, [D

    if-ne v0, v1, :cond_5

    .line 254
    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_5
    const-class v1, [F

    if-ne v0, v1, :cond_6

    .line 256
    check-cast p0, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    .line 257
    :cond_6
    const-class v1, [I

    if-ne v0, v1, :cond_7

    .line 258
    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_7
    const-class v1, [J

    if-ne v0, v1, :cond_8

    .line 260
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    .line 261
    :cond_8
    const-class v1, [S

    if-ne v0, v1, :cond_9

    .line 262
    check-cast p0, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto :goto_0

    .line 263
    :cond_9
    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static memberValueHashCode(Ljava/lang/Object;)I
    .registers 3

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 309
    :cond_0
    const-class v1, [B

    if-ne v0, v1, :cond_1

    .line 310
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    .line 311
    :cond_1
    const-class v1, [C

    if-ne v0, v1, :cond_2

    .line 312
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_0

    .line 313
    :cond_2
    const-class v1, [D

    if-ne v0, v1, :cond_3

    .line 314
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_0

    .line 315
    :cond_3
    const-class v1, [F

    if-ne v0, v1, :cond_4

    .line 316
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0

    .line 317
    :cond_4
    const-class v1, [I

    if-ne v0, v1, :cond_5

    .line 318
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0

    .line 319
    :cond_5
    const-class v1, [J

    if-ne v0, v1, :cond_6

    .line 320
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0

    .line 321
    :cond_6
    const-class v1, [S

    if-ne v0, v1, :cond_7

    .line 322
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_0

    .line 323
    :cond_7
    const-class v1, [Z

    if-ne v0, v1, :cond_8

    .line 324
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_0

    .line 325
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private static memberValueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const-class v1, [B

    if-ne v0, v1, :cond_1

    .line 160
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    const-class v1, [C

    if-ne v0, v1, :cond_2

    .line 162
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    const-class v1, [D

    if-ne v0, v1, :cond_3

    .line 164
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_3
    const-class v1, [F

    if-ne v0, v1, :cond_4

    .line 166
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    const-class v1, [I

    if-ne v0, v1, :cond_5

    .line 168
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_5
    const-class v1, [J

    if-ne v0, v1, :cond_6

    .line 170
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_6
    const-class v1, [S

    if-ne v0, v1, :cond_7

    .line 172
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_7
    const-class v1, [Z

    if-ne v0, v1, :cond_8

    .line 174
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 335
    :try_start_0
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    invoke-static {v0}, Lsun/reflect/annotation/AnnotationType;->getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Lsun/reflect/annotation/AnnotationType;->memberTypes()Ljava/util/Map;

    move-result-object v4

    .line 345
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 348
    if-eqz v1, :cond_0

    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 350
    invoke-virtual {v1, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v6, Lsun/reflect/annotation/ExceptionProxy;

    if-nez v1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v3}, Lsun/reflect/annotation/AnnotationType;->members()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 354
    invoke-virtual {v6, v0}, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;->setMember(Ljava/lang/reflect/Method;)Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;

    move-result-object v0

    .line 352
    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 359
    :cond_1
    return-void
.end method

.method private toStringImpl()Ljava/lang/String;
    .registers 6

    .line 131
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const/16 v0, 0x28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    const/4 v0, 0x1

    .line 136
    iget-object v1, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    if-eqz v1, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 142
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    .line 145
    goto :goto_0

    .line 140
    :cond_0
    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_1

    .line 146
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v4, 0x0

    .line 52
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 56
    const-string v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object v0, v0, v4

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 58
    aget-object v0, p3, v4

    invoke-direct {p0, v0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->equalsImpl(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v0, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->toStringImpl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    const-string v0, "hashCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-direct {p0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->hashCodeImpl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "annotationType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->memberValues:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_6

    .line 73
    instance-of v1, v0, Lsun/reflect/annotation/ExceptionProxy;

    if-nez v1, :cond_5

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, v0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_5
    check-cast v0, Lsun/reflect/annotation/ExceptionProxy;

    invoke-virtual {v0}, Lsun/reflect/annotation/ExceptionProxy;->generateException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 71
    :cond_6
    new-instance v0, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationInvocationHandler;->type:Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method
