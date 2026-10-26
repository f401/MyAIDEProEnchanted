.class public final synthetic Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final INSTANCE:Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/android/apksig/util/DataSource;

    invoke-static {p1}, Lcom/android/apksig/internal/util/ChainedDataSource;->lambda$new$0(Lcom/android/apksig/util/DataSource;)J

    move-result-wide v0

    return-wide v0
.end method
