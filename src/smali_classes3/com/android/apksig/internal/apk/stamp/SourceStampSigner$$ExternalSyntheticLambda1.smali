.class public final synthetic Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
