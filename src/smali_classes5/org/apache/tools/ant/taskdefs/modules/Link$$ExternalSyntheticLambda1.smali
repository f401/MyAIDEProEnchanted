.class public final synthetic Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;

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

    check-cast p1, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->validate()V

    return-void
.end method
