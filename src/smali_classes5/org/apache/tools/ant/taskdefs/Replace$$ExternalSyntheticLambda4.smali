.class public final synthetic Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;

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

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->process()Z

    move-result v0

    return v0
.end method
