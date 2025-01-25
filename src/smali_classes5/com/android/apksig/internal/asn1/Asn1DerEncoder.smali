.class public final Lcom/android/apksig/internal/asn1/Asn1DerEncoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;,
        Lcom/android/apksig/internal/asn1/Asn1DerEncoder$ByteArrayLexicographicComparator;,
        Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;
    }
.end annotation


# static fields
.field public static final ASN1_DER_NULL:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>([B)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->ASN1_DER_NULL:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    return-void

    :array_e
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getMemberFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequenceOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(IZI[[B)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(I)[B
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(J)[B
    .registers 4

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(J)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/math/BigInteger;)[B
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Z)[B
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toBoolean(Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toOid(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/Object;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Object;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toChoice(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs createTag(IZI[[B)[B
    .registers 15

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_103

    if-eqz p1, :cond_20

    const/16 v0, 0x20

    :goto_d
    const/4 v4, 0x6

    shl-int/lit8 v6, p0, 0x6

    or-int/2addr v0, v6

    or-int/2addr v0, p2

    int-to-byte v8, v0

    array-length v9, p3

    move v6, v1

    move v7, v1

    :goto_16
    if-ge v7, v9, :cond_22

    aget-object v0, p3, v7

    array-length v0, v0

    add-int/2addr v0, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v0

    goto :goto_16

    :cond_20
    move v0, v1

    goto :goto_d

    :cond_22
    const/16 v0, 0x80

    if-ge v6, v0, :cond_49

    add-int/lit8 v0, v6, 0x2

    new-array v0, v0, [B

    int-to-byte v2, v8

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    int-to-byte v2, v6

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    move v2, v5

    :goto_3a
    array-length v4, p3

    move v3, v1

    :goto_3c
    if-ge v3, v4, :cond_11a

    aget-object v5, p3, v3

    array-length v6, v5

    invoke-static {v5, v1, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_49
    const/16 v0, 0xff

    if-gt v6, v0, :cond_6a

    add-int/lit8 v0, v6, 0x3

    new-array v0, v0, [B

    const/16 v3, -0x7f

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v10

    int-to-byte v3, v6

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    :goto_62
    int-to-byte v3, v8

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_3a

    :cond_6a
    const v0, 0xffff

    if-gt v6, v0, :cond_92

    add-int/lit8 v0, v6, 0x4

    new-array v0, v0, [B

    const/16 v4, -0x7e

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v10

    shr-int/lit8 v4, v6, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    and-int/lit16 v4, v6, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    move v2, v3

    goto :goto_62

    :cond_92
    const v0, 0xffffff

    if-gt v6, v0, :cond_c6

    add-int/lit8 v0, v6, 0x5

    new-array v0, v0, [B

    const/16 v4, -0x7d

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v10

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    shr-int/lit8 v4, v6, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    and-int/lit16 v2, v6, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x5

    goto :goto_62

    :cond_c6
    add-int/lit8 v0, v6, 0x6

    new-array v0, v0, [B

    const/16 v7, -0x7c

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v10

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    shr-int/lit8 v5, v6, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    shr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x5

    and-int/lit16 v3, v6, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    move v2, v4

    goto/16 :goto_62

    :cond_103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "High tag numbers not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11a
    return-object v0
.end method

.method public static encode(Ljava/lang/Object;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_44

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    invoke-static {p0, v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;Z)[B

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported container type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_27

    :cond_44
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toChoice(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_27

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getAnnotatedFields(Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v5, :cond_8e

    aget-object v6, v3, v1

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Field;

    if-nez v0, :cond_23

    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_23
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_5e

    :try_start_2d
    new-instance v7, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    invoke-direct {v7, p0, v6, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    :try_end_32
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_2d .. :try_end_32} :catch_36

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ASN.1 annotation on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " used on a static field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8e
    return-object v4
.end method

.method private static getMemberFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic lambda$toSequence$0(Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static toBoolean(Z)[B
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    if-nez p0, :cond_16

    int-to-byte v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :goto_d
    new-array v1, v3, [[B

    aput-object v0, v1, v2

    invoke-static {v2, v2, v3, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object v0

    return-object v0

    :cond_16
    int-to-byte v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_d
.end method

.method private static toChoice(Ljava/lang/Object;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getAnnotatedFields(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move-object v1, v0

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getMemberFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    if-nez v1, :cond_2e

    move-object v1, v0

    goto :goto_14

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple non-null fields in CHOICE class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->toDer()[B

    move-result-object v0

    return-object v0

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No non-null fields in CHOICE class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No fields annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in CHOICE class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toInteger(I)[B
    .registers 3

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(J)[B

    move-result-object v0

    return-object v0
.end method

.method private static toInteger(J)[B
    .registers 4

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toInteger(Ljava/math/BigInteger;)[B
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [[B

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3, v3, v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static toOid(Ljava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    if-lt v1, v0, :cond_15a

    const/4 v1, 0x0

    :try_start_13
    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_18} :catch_140

    move-result v1

    if-gt v1, v9, :cond_129

    if-ltz v1, :cond_129

    const/4 v2, 0x1

    :try_start_1e
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_23} :catch_10f

    move-result v2

    const/16 v5, 0x28

    if-ge v2, v5, :cond_f8

    if-ltz v2, :cond_f8

    mul-int/lit8 v5, v1, 0x28

    add-int/2addr v5, v2

    const/16 v6, 0xff

    if-gt v5, v6, :cond_d9

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_34
    array-length v1, v4

    if-ge v0, v1, :cond_cc

    aget-object v1, v4, v0

    :try_start_39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3c} :catch_aa

    move-result v2

    if-ltz v2, :cond_89

    const/16 v1, 0x7f

    if-gt v2, v1, :cond_4a

    move v1, v2

    :goto_44
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_4a
    const/16 v1, 0x4000

    if-ge v2, v1, :cond_58

    shr-int/lit8 v1, v2, 0x7

    :goto_50
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v1, v2, 0x7f

    goto :goto_44

    :cond_58
    const/high16 v1, 0x200000

    if-ge v2, v1, :cond_68

    shr-int/lit8 v1, v2, 0xe

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v1, v2, 0x7

    and-int/lit8 v1, v1, 0x7f

    goto :goto_50

    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for node #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_aa
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not numeric: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cc
    new-array v0, v8, [[B

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v7, v7, v9, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object v0

    return-object v0

    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First two nodes out of range: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for node #2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_10f
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node #2 not numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for node #1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_140
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node #1 not numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OBJECT IDENTIFIER must contain at least two nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toSequence(Ljava/lang/Object;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static toSequence(Ljava/lang/Object;Z)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getAnnotatedFields(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/apksig/internal/asn1/Asn1DerEncoder$$ExternalSyntheticLambda0;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_78

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v7

    if-eq v6, v7, :cond_3d

    :cond_3b
    move-object v1, v0

    goto :goto_1b

    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fields have the same index: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_86
    :goto_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    :try_start_92
    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->toDer()[B
    :try_end_95
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_92 .. :try_end_95} :catch_9f

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_86

    :catch_9f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_cb
    if-eqz p1, :cond_e8

    new-array v3, v1, [B

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_d4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_d4

    :cond_e8
    const/16 v1, 0x10

    new-array v0, v2, [[B

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v2, v8, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object v0

    :goto_f6
    return-object v0

    :cond_f7
    move-object v0, v3

    goto :goto_f6
.end method

.method private static toSequenceOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/android/apksig/internal/asn1/Asn1Type;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequenceOrSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static toSequenceOrSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;Z)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/android/apksig/internal/asn1/Asn1Type;",
            "Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;->toDer(Ljava/lang/Object;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_22
    if-eqz p2, :cond_41

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_31

    invoke-static {}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$ByteArrayLexicographicComparator;->access$000()Lcom/android/apksig/internal/asn1/Asn1DerEncoder$ByteArrayLexicographicComparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_31
    const/16 v0, 0x11

    move v1, v0

    :goto_34
    new-array v0, v4, [[B

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v4, v5, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object v0

    return-object v0

    :cond_41
    const/16 v0, 0x10

    move v1, v0

    goto :goto_34
.end method

.method private static toSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/android/apksig/internal/asn1/Asn1Type;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequenceOrSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;Z)[B

    move-result-object v0

    return-object v0
.end method
