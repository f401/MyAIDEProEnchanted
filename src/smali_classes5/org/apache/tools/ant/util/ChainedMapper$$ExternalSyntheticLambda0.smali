.class public final synthetic Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, [Ljava/lang/String;

    check-cast p2, Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/util/ChainedMapper;->lambda$mapFileName$1([Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
