.class public final synthetic Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    check-cast p2, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->lambda$parseSequence$0(Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;)I

    move-result v0

    return v0
.end method
