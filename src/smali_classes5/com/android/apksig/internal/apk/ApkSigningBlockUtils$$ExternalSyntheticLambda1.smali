.class public final synthetic Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$$ExternalSyntheticLambda1;

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

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    check-cast p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->lambda$getSignaturesToVerify$1(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;)I

    move-result v0

    return v0
.end method
