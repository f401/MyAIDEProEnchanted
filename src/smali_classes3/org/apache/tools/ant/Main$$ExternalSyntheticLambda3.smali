.class public final synthetic Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/apache/tools/ant/Target;

    check-cast p2, Lorg/apache/tools/ant/Target;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/Main;->lambda$removeDuplicateTargets$8(Lorg/apache/tools/ant/Target;Lorg/apache/tools/ant/Target;)Lorg/apache/tools/ant/Target;

    move-result-object v0

    return-object v0
.end method
