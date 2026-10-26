.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntPredicate;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->$default$and(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->$default$negate(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->$default$or(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public final test(I)Z
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->lambda$static$0(I)Z

    move-result v0

    return v0
.end method
