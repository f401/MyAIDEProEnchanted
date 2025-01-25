.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailableDoubleFunction$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableDoubleFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleFunction$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/function/FailableDoubleFunction$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(D)Ljava/lang/Object;
    .registers 4

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleFunction$_CC;->lambda$static$0(D)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
