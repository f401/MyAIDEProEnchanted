.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongToIntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(J)I
    .registers 4

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$_CC;->lambda$static$0(J)I

    move-result v0

    return v0
.end method
