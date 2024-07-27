.class public final synthetic Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
