.class public Lcom/android/apksig/internal/x509/RelativeDistinguishedName;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/android/apksig/internal/asn1/Asn1Class;
    type = .enum Lcom/android/apksig/internal/asn1/Asn1Type;->UNENCODED_CONTAINER:Lcom/android/apksig/internal/asn1/Asn1Type;
.end annotation


# instance fields
.field public attributes:Ljava/util/List;
    .annotation runtime Lcom/android/apksig/internal/asn1/Asn1Field;
        index = 0x0
        type = .enum Lcom/android/apksig/internal/asn1/Asn1Type;->SET_OF:Lcom/android/apksig/internal/asn1/Asn1Type;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/x509/AttributeTypeAndValue;",
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
