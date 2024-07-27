.class public Lsun/reflect/generics/parser/SignatureParser;
.super Ljava/lang/Object;
.source "SignatureParser.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final EOI:C = ':'


# instance fields
.field private index:I

.field private input:[C


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lsun/reflect/generics/parser/SignatureParser;->index:I

    .line 76
    return-void
.end method

.method private advance()V
    .registers 2

    .line 103
    iget v0, p0, Lsun/reflect/generics/parser/SignatureParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/reflect/generics/parser/SignatureParser;->index:I

    .line 105
    return-void
.end method

.method private current()C
    .registers 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lsun/reflect/generics/parser/SignatureParser;->input:[C

    iget v1, p0, Lsun/reflect/generics/parser/SignatureParser;->index:I

    aget-char v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x3a

    goto :goto_0
.end method

.method private error(Ljava/lang/String;)Ljava/lang/Error;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    return-object v0
.end method

.method private getNext()C
    .registers 4

    .line 87
    :try_start_0
    iget-object v0, p0, Lsun/reflect/generics/parser/SignatureParser;->input:[C

    iget v1, p0, Lsun/reflect/generics/parser/SignatureParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/reflect/generics/parser/SignatureParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    aget-char v0, v0, v1

    .line 90
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x3a

    goto :goto_0
.end method

.method public static make()Lsun/reflect/generics/parser/SignatureParser;
    .registers 1

    .line 129
    new-instance v0, Lsun/reflect/generics/parser/SignatureParser;

    invoke-direct {v0}, Lsun/reflect/generics/parser/SignatureParser;-><init>()V

    return-object v0
.end method

.method private varargs matches(C[C)Z
    .registers 7

    const/4 v0, 0x0

    .line 109
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p2, v1

    .line 110
    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0

    .line 109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseArrayTypeSignature()Lsun/reflect/generics/tree/ArrayTypeSignature;
    .registers 3

    .line 360
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 361
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 362
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeSignature()Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/generics/tree/ArrayTypeSignature;->make(Lsun/reflect/generics/tree/TypeSignature;)Lsun/reflect/generics/tree/ArrayTypeSignature;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    const-string v0, "expected array type signature"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseBaseType()Lsun/reflect/generics/tree/BaseType;
    .registers 3

    .line 382
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 408
    const-string v0, "expected primitive type"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    .line 390
    :pswitch_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 391
    invoke-static {}, Lsun/reflect/generics/tree/DoubleSignature;->make()Lsun/reflect/generics/tree/DoubleSignature;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 387
    :pswitch_1
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 388
    invoke-static {}, Lsun/reflect/generics/tree/CharSignature;->make()Lsun/reflect/generics/tree/CharSignature;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_2
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 385
    invoke-static {}, Lsun/reflect/generics/tree/ByteSignature;->make()Lsun/reflect/generics/tree/ByteSignature;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 400
    invoke-static {}, Lsun/reflect/generics/tree/LongSignature;->make()Lsun/reflect/generics/tree/LongSignature;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_1
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 397
    invoke-static {}, Lsun/reflect/generics/tree/IntSignature;->make()Lsun/reflect/generics/tree/IntSignature;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 406
    invoke-static {}, Lsun/reflect/generics/tree/BooleanSignature;->make()Lsun/reflect/generics/tree/BooleanSignature;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_3
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 403
    invoke-static {}, Lsun/reflect/generics/tree/ShortSignature;->make()Lsun/reflect/generics/tree/ShortSignature;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_4
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 394
    invoke-static {}, Lsun/reflect/generics/tree/FloatSignature;->make()Lsun/reflect/generics/tree/FloatSignature;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseClassSignature()Lsun/reflect/generics/tree/ClassSignature;
    .registers 4

    .line 188
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseZeroOrMoreFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v0

    .line 190
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseClassTypeSignature()Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v1

    .line 191
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseSuperInterfaces()[Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v2

    .line 189
    invoke-static {v0, v1, v2}, Lsun/reflect/generics/tree/ClassSignature;->make([Lsun/reflect/generics/tree/FormalTypeParameter;Lsun/reflect/generics/tree/ClassTypeSignature;[Lsun/reflect/generics/tree/ClassTypeSignature;)Lsun/reflect/generics/tree/ClassSignature;

    move-result-object v0

    return-object v0
.end method

.method private parseClassTypeSignature()Lsun/reflect/generics/tree/ClassTypeSignature;
    .registers 4

    .line 256
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 258
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/reflect/generics/parser/SignatureParser;->parseSimpleClassTypeSignature(Z)Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->parseClassTypeSignatureSuffix(Ljava/util/List;)V

    .line 263
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 266
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 267
    invoke-static {v0}, Lsun/reflect/generics/tree/ClassTypeSignature;->make(Ljava/util/List;)Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected \';\' got \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    .line 257
    :cond_1
    const-string v0, "expected a class type"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseClassTypeSignatureSuffix(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/reflect/generics/tree/SimpleClassTypeSignature;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x2e

    .line 285
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 286
    :cond_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 287
    :goto_1
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 288
    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->parseSimpleClassTypeSignature(Z)Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    :cond_2
    return-void
.end method

.method private parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 3

    .line 244
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseArrayTypeSignature()Lsun/reflect/generics/tree/ArrayTypeSignature;

    move-result-object v0

    :goto_0
    return-object v0

    .line 251
    :cond_0
    const-string v0, "Expected Field Type Signature"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    .line 248
    :cond_1
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeVariableSignature()Lsun/reflect/generics/tree/TypeVariableSignature;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseClassTypeSignature()Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v0

    goto :goto_0
.end method

.method private parseFormalParameters()[Lsun/reflect/generics/tree/TypeSignature;
    .registers 4

    .line 462
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 463
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 464
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseZeroOrMoreTypeSignatures()[Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    .line 465
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 466
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 467
    return-object v0

    .line 465
    :cond_0
    const-string v0, "expected )"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    .line 462
    :cond_1
    const-string v0, "expected ("

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseFormalTypeParameter()Lsun/reflect/generics/tree/FormalTypeParameter;
    .registers 3

    .line 216
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseZeroOrMoreBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Lsun/reflect/generics/tree/FormalTypeParameter;->make(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v0

    return-object v0
.end method

.method private parseFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;
    .registers 4

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 205
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 206
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFormalTypeParameter()Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    .line 208
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFormalTypeParameter()Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 211
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lsun/reflect/generics/tree/FormalTypeParameter;

    .line 212
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/reflect/generics/tree/FormalTypeParameter;

    return-object v0

    .line 204
    :cond_1
    const-string v0, "expected <"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseIdentifier()Ljava/lang/String;
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    .line 225
    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    goto :goto_0

    .line 232
    :cond_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseMethodTypeSignature()Lsun/reflect/generics/tree/MethodTypeSignature;
    .registers 5

    .line 453
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseZeroOrMoreFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v0

    .line 455
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFormalParameters()[Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v1

    .line 456
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseReturnType()Lsun/reflect/generics/tree/ReturnType;

    move-result-object v2

    .line 457
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseZeroOrMoreThrowsSignatures()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v3

    .line 454
    invoke-static {v0, v1, v2, v3}, Lsun/reflect/generics/tree/MethodTypeSignature;->make([Lsun/reflect/generics/tree/FormalTypeParameter;[Lsun/reflect/generics/tree/TypeSignature;Lsun/reflect/generics/tree/ReturnType;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/MethodTypeSignature;

    move-result-object v0

    return-object v0
.end method

.method private parseReturnType()Lsun/reflect/generics/tree/ReturnType;
    .registers 3

    .line 505
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x56

    if-ne v0, v1, :cond_0

    .line 506
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 507
    invoke-static {}, Lsun/reflect/generics/tree/VoidDescriptor;->make()Lsun/reflect/generics/tree/VoidDescriptor;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeSignature()Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    goto :goto_0
.end method

.method private parseSimpleClassTypeSignature(Z)Lsun/reflect/generics/tree/SimpleClassTypeSignature;
    .registers 5

    .line 271
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    .line 273
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 278
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->make(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    move-result-object v0

    :goto_0
    return-object v0

    .line 280
    :cond_0
    const-string v0, "expected < or ; or /"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    .line 276
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lsun/reflect/generics/tree/TypeArgument;

    invoke-static {v0, p1, v1}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->make(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    move-result-object v0

    goto :goto_0
.end method

.method private parseSuperInterfaces()[Lsun/reflect/generics/tree/ClassTypeSignature;
    .registers 4

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_0

    .line 443
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseClassTypeSignature()Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lsun/reflect/generics/tree/ClassTypeSignature;

    .line 446
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/reflect/generics/tree/ClassTypeSignature;

    return-object v0
.end method

.method private parseThrowsSignature()Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 3

    .line 525
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_0

    .line 527
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 528
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    const-string v0, "expected throws signature"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseTypeArgument()Lsun/reflect/generics/tree/TypeArgument;
    .registers 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 314
    new-array v0, v1, [Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 315
    new-array v1, v1, [Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 316
    new-array v2, v5, [Lsun/reflect/generics/tree/TypeArgument;

    .line 317
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v3

    .line 318
    const/16 v4, 0x2a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 337
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v0

    :goto_0
    return-object v0

    .line 332
    :cond_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 333
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v3

    aput-object v3, v1, v5

    .line 334
    const-string v3, "java.lang.Object"

    invoke-static {v3, v5, v2}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->make(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    move-result-object v2

    aput-object v2, v0, v5

    .line 335
    invoke-static {v0, v1}, Lsun/reflect/generics/tree/Wildcard;->make([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/Wildcard;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 321
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v2

    aput-object v2, v0, v5

    .line 322
    invoke-static {}, Lsun/reflect/generics/tree/BottomSignature;->make()Lsun/reflect/generics/tree/BottomSignature;

    move-result-object v2

    aput-object v2, v1, v5

    .line 323
    invoke-static {v0, v1}, Lsun/reflect/generics/tree/Wildcard;->make([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/Wildcard;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 327
    const-string v3, "java.lang.Object"

    invoke-static {v3, v5, v2}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->make(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    move-result-object v2

    aput-object v2, v0, v5

    .line 328
    invoke-static {}, Lsun/reflect/generics/tree/BottomSignature;->make()Lsun/reflect/generics/tree/BottomSignature;

    move-result-object v2

    aput-object v2, v1, v5

    .line 329
    invoke-static {v0, v1}, Lsun/reflect/generics/tree/Wildcard;->make([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/Wildcard;

    move-result-object v0

    goto :goto_0
.end method

.method private parseTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;
    .registers 4

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 301
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 302
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeArgument()Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    .line 305
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeArgument()Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 308
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lsun/reflect/generics/tree/TypeArgument;

    .line 309
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/reflect/generics/tree/TypeArgument;

    return-object v0

    .line 300
    :cond_1
    const-string v0, "expected <"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseTypeArgumentsOpt()[Lsun/reflect/generics/tree/TypeArgument;
    .registers 3

    .line 293
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/reflect/generics/tree/TypeArgument;

    goto :goto_0
.end method

.method private parseTypeSignature()Lsun/reflect/generics/tree/TypeSignature;
    .registers 3

    .line 368
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 377
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v0

    :goto_0
    return-object v0

    .line 376
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseBaseType()Lsun/reflect/generics/tree/BaseType;

    move-result-object v0

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseTypeVariableSignature()Lsun/reflect/generics/tree/TypeVariableSignature;
    .registers 4

    .line 344
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 346
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 347
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/generics/tree/TypeVariableSignature;->make(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeVariableSignature;

    move-result-object v0

    .line 349
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 353
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 354
    return-object v0

    .line 350
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; expected in signature of type variable named"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Lsun/reflect/generics/tree/TypeVariableSignature;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0

    .line 345
    :cond_1
    const-string v0, "expected a type variable usage"

    invoke-direct {p0, v0}, Lsun/reflect/generics/parser/SignatureParser;->error(Ljava/lang/String;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private parseZeroOrMoreBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 4

    const/16 v2, 0x3a

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 419
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 420
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 425
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 430
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->advance()V

    .line 431
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFieldTypeSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 436
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method private parseZeroOrMoreFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;
    .registers 3

    .line 195
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/reflect/generics/tree/FormalTypeParameter;

    goto :goto_0
.end method

.method private parseZeroOrMoreThrowsSignatures()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 4

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    :goto_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_0

    .line 516
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseThrowsSignature()Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 519
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method private parseZeroOrMoreTypeSignatures()[Lsun/reflect/generics/tree/TypeSignature;
    .registers 5

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    const/4 v0, 0x0

    .line 474
    :goto_0
    if-nez v0, :cond_1

    .line 475
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->current()C

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_0

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x49

    if-eq v2, v3, :cond_0

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x53

    if-eq v2, v3, :cond_0

    const/16 v3, 0x54

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 490
    const/4 v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeSignature()Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lsun/reflect/generics/tree/TypeSignature;

    .line 499
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/reflect/generics/tree/TypeSignature;

    return-object v0

    .line 475
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parseClassSig(Ljava/lang/String;)Lsun/reflect/generics/tree/ClassSignature;
    .registers 3

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/parser/SignatureParser;->input:[C

    .line 144
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseClassSignature()Lsun/reflect/generics/tree/ClassSignature;

    move-result-object v0

    return-object v0
.end method

.method public parseMethodSig(Ljava/lang/String;)Lsun/reflect/generics/tree/MethodTypeSignature;
    .registers 3

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/parser/SignatureParser;->input:[C

    .line 159
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseMethodTypeSignature()Lsun/reflect/generics/tree/MethodTypeSignature;

    move-result-object v0

    return-object v0
.end method

.method public parseTypeSig(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeSignature;
    .registers 3

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/parser/SignatureParser;->input:[C

    .line 175
    invoke-direct {p0}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeSignature()Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    return-object v0
.end method
