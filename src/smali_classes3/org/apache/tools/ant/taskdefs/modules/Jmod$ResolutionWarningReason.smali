.class public Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Jmod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Jmod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolutionWarningReason"
.end annotation


# static fields
.field public static final DEPRECATED:Ljava/lang/String; = "deprecated"

.field public static final INCUBATING:Ljava/lang/String; = "incubating"

.field public static final LEAVING:Ljava/lang/String; = "leaving"

.field private static final VALUES_TO_OPTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 896
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 897
    const-string v1, "deprecated"

    const-string v2, "deprecated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string v1, "leaving"

    const-string v2, "deprecated-for-removal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v1, "incubating"

    const-string v2, "incubating"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->VALUES_TO_OPTIONS:Ljava/util/Map;

    .line 902
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 872
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;
    .registers 2

    .line 931
    const-class v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->getInstance(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/types/EnumeratedAttribute;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;

    return-object v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 3

    .line 906
    sget-object v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->VALUES_TO_OPTIONS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method toCommandLineOption()Ljava/lang/String;
    .registers 3

    .line 916
    sget-object v0, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->VALUES_TO_OPTIONS:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Jmod$ResolutionWarningReason;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
