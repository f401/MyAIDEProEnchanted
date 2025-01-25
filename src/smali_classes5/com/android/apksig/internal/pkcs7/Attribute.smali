.class public Lcom/android/apksig/internal/pkcs7/Attribute;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/android/apksig/internal/asn1/Asn1Class;
    type = .enum Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE:Lcom/android/apksig/internal/asn1/Asn1Type;
.end annotation


# instance fields
.field public attrType:Ljava/lang/String;
    .annotation runtime Lcom/android/apksig/internal/asn1/Asn1Field;
        index = 0x0
        type = .enum Lcom/android/apksig/internal/asn1/Asn1Type;->OBJECT_IDENTIFIER:Lcom/android/apksig/internal/asn1/Asn1Type;
    .end annotation
.end field

.field public attrValues:Ljava/util/List;
    .annotation runtime Lcom/android/apksig/internal/asn1/Asn1Field;
        index = 0x1
        type = .enum Lcom/android/apksig/internal/asn1/Asn1Type;->SET_OF:Lcom/android/apksig/internal/asn1/Asn1Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
