.class public final synthetic Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Jmod$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/modules/Jmod;->$r8$lambda$Z4u3EQeCzEvigdBM6ndgD4qA4xI(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method
