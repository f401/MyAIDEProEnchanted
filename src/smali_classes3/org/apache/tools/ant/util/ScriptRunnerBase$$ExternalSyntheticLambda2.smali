.class public final synthetic Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method
