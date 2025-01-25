.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/Functions$FailableConsumer;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;->INSTANCE:Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    return-void
.end method
