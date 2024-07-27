.class public final Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Zip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Zip64ModeAttribute"
.end annotation


# static fields
.field private static final ALWAYS_KEY:Ljava/lang/String; = "always"

.field public static final AS_NEEDED:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

.field private static final A_N_KEY:Ljava/lang/String; = "as-needed"

.field private static final MODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/zip/Zip64Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEVER:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

.field private static final NEVER_KEY:Ljava/lang/String; = "never"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->MODES:Ljava/util/Map;

    .line 2209
    const-string v1, "never"

    sget-object v2, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const-string v1, "always"

    sget-object v2, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    const-string v1, "as-needed"

    sget-object v2, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    .line 2221
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    const-string v1, "as-needed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->AS_NEEDED:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2228
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 2229
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2224
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 2225
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->setValue(Ljava/lang/String;)V

    .line 2226
    return-void
.end method


# virtual methods
.method public getMode()Lorg/apache/tools/zip/Zip64Mode;
    .registers 3

    .line 2232
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->MODES:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Zip64Mode;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 2216
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "never"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "always"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "as-needed"

    aput-object v2, v0, v1

    return-object v0
.end method
