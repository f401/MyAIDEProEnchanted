.class Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignedAttributes"
.end annotation


# instance fields
.field private mAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/apksig/internal/pkcs7/Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/pkcs7/Attribute;

    iget-object v3, v0, Lcom/android/apksig/internal/pkcs7/Attribute;->attrType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/apksig/internal/pkcs7/Attribute;->attrValues:Ljava/util/List;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate signed attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/apksig/internal/pkcs7/Attribute;->attrType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iput-object v1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->mAttrs:Ljava/util/Map;

    return-void
.end method

.method private getSingleValue(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->mAttrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_21

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    goto :goto_11

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has multiple values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSingleObjectIdentifierValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->getSingleValue(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$ObjectIdentifierChoice;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$ObjectIdentifierChoice;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$ObjectIdentifierChoice;->value:Ljava/lang/String;
    :try_end_16
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_7

    :catch_17
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;

    const-string v2, "Failed to decode OBJECT IDENTIFIER"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSingleOctetStringValue(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$SignedAttributes;->getSingleValue(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$OctetStringChoice;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$OctetStringChoice;

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$OctetStringChoice;->value:[B
    :try_end_16
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_7

    :catch_17
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;

    const-string v2, "Failed to decode OBJECT IDENTIFIER"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/pkcs7/Pkcs7DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
