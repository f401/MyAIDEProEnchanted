.class public final synthetic Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/DeweyDecimal$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
