.class final Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/ber/BerDataValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedValueReader"
.end annotation


# instance fields
.field private final mValue:Lcom/android/apksig/internal/asn1/ber/BerDataValue;

.field private mValueOutput:Z


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/asn1/ber/BerDataValue;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;->mValue:Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    return-void
.end method


# virtual methods
.method public readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;->mValueOutput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;->mValueOutput:Z

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;->mValue:Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    goto :goto_0
.end method
