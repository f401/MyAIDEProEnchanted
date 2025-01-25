.class final Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/Asn1DerEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnnotatedField"
.end annotation


# instance fields
.field private final mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

.field private final mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

.field private final mDerTagClass:I

.field private final mDerTagNumber:I

.field private final mElementDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

.field private final mField:Ljava/lang/reflect/Field;

.field private final mObject:Ljava/lang/Object;

.field private final mOptional:Z

.field private final mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field private final mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v2

    iput-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->elementType()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mElementDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->cls()Lcom/android/apksig/internal/asn1/Asn1TagClass;

    move-result-object v0

    sget-object v3, Lcom/android/apksig/internal/asn1/Asn1TagClass;->AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    if-ne v0, v3, :cond_26

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v1, :cond_55

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    :cond_26
    :goto_26
    iput-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagClass(Lcom/android/apksig/internal/asn1/Asn1TagClass;)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagClass:I

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v1, :cond_58

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    :goto_38
    iput v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagging()Lcom/android/apksig/internal/asn1/Asn1Tagging;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    sget-object v2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-eq v0, v2, :cond_48

    sget-object v2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-ne v0, v2, :cond_4e

    :cond_48
    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v2

    if-eq v2, v1, :cond_67

    :cond_4e
    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->optional()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mOptional:Z

    return-void

    :cond_55
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    goto :goto_26

    :cond_58
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-eq v2, v0, :cond_60

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne v2, v0, :cond_62

    :cond_60
    move v0, v1

    goto :goto_38

    :cond_62
    invoke-static {v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result v0

    goto :goto_38

    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag number must be specified when tagging mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public toDer()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/16 v3, 0x1f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$100(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mOptional:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    const-string v1, "Required field not set"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    iget-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mElementDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;->toDer(Ljava/lang/Object;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v0

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Tagging:[I

    iget-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1Tagging;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_76

    aget-byte v1, v0, v4

    invoke-static {v1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(B)I

    move-result v1

    if-eq v1, v3, :cond_6e

    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    if-ge v1, v3, :cond_55

    aget-byte v2, v0, v4

    invoke-static {v2, v1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->setTagNumber(BI)B

    move-result v1

    aput-byte v1, v0, v4

    aget-byte v1, v0, v4

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagClass:I

    invoke-static {v1, v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->setTagClass(BI)B

    move-result v1

    aput-byte v1, v0, v4

    goto :goto_13

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported high tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    const-string v1, "High-tag-number form not supported"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tagging mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8f
    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagClass:I

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    new-array v3, v5, [[B

    aput-object v0, v3, v4

    invoke-static {v1, v5, v2, v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$200(IZI[[B)[B

    move-result-object v0

    goto/16 :goto_13
.end method
