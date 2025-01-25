.class public final Lcom/s1243808733/android/dx/rop/code/AccessFlags;
.super Ljava/lang/Object;
.source "AccessFlags.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_CONSTRUCTOR:I = 0x10000

.field public static final ACC_DECLARED_SYNCHRONIZED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final CLASS_FLAGS:I = 0x7631

.field private static final CONV_CLASS:I = 0x1

.field private static final CONV_FIELD:I = 0x2

.field private static final CONV_METHOD:I = 0x3

.field public static final FIELD_FLAGS:I = 0x50df

.field public static final INNER_CLASS_FLAGS:I = 0x761f

.field public static final METHOD_FLAGS:I = 0x31dff


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classString(I)Ljava/lang/String;
    .registers 3

    .line 153
    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fieldString(I)Ljava/lang/String;
    .registers 3

    .line 175
    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static humanHelper(III)Ljava/lang/String;
    .registers 7

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p0

    and-int/2addr p0, p1

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_14

    .line 336
    const-string p1, "|public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_1d

    .line 339
    const-string p1, "|private"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_26

    .line 342
    const-string p1, "|protected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_2f

    .line 345
    const-string p1, "|static"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_38

    .line 348
    const-string p1, "|final"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    and-int/lit8 p1, p0, 0x20

    const/4 v2, 0x1

    if-eqz p1, :cond_4a

    if-ne p2, v2, :cond_45

    .line 352
    const-string p1, "|super"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 354
    :cond_45
    const-string p1, "|synchronized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    :goto_4a
    and-int/lit8 p1, p0, 0x40

    const/4 v3, 0x3

    if-eqz p1, :cond_5c

    if-ne p2, v3, :cond_57

    .line 359
    const-string p1, "|bridge"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 361
    :cond_57
    const-string p1, "|volatile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    :goto_5c
    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_6d

    if-ne p2, v3, :cond_68

    .line 366
    const-string p1, "|varargs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 368
    :cond_68
    const-string p1, "|transient"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    :goto_6d
    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_76

    .line 372
    const-string p1, "|native"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_7f

    .line 375
    const-string p1, "|interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    and-int/lit16 p1, p0, 0x400

    if-eqz p1, :cond_88

    .line 378
    const-string p1, "|abstract"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    and-int/lit16 p1, p0, 0x800

    if-eqz p1, :cond_91

    .line 381
    const-string p1, "|strictfp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_9a

    .line 384
    const-string p1, "|synthetic"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    and-int/lit16 p1, p0, 0x2000

    if-eqz p1, :cond_a3

    .line 387
    const-string p1, "|annotation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    and-int/lit16 p1, p0, 0x4000

    if-eqz p1, :cond_ac

    .line 390
    const-string p1, "|enum"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ac
    const/high16 p1, 0x10000

    and-int/2addr p1, p0

    if-eqz p1, :cond_b6

    .line 393
    const-string p1, "|constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b6
    const/high16 p1, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_c0

    .line 396
    const-string p0, "|declared_synchronized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c0
    if-nez v1, :cond_c8

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_d4

    .line 400
    :cond_c8
    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_d4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static innerClassString(I)Ljava/lang/String;
    .registers 3

    .line 164
    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAbstract(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isAnnotation(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isConstructor(I)Z
    .registers 2

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isDeclaredSynchronized(I)Z
    .registers 2

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isEnum(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isInterface(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isNative(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isPrivate(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isProtected(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isPublic(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static isStatic(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isSynchronized(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static methodString(I)Ljava/lang/String;
    .registers 3

    .line 186
    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
