.class public final Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Zip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeExtraField"
.end annotation


# static fields
.field private static final ALWAYS_KEY:Ljava/lang/String; = "always"

.field public static final NEVER:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

.field private static final NEVER_KEY:Ljava/lang/String; = "never"

.field private static final N_E_KEY:Ljava/lang/String; = "not-encodeable"

.field private static final POLICIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->POLICIES:Ljava/util/Map;

    .line 2147
    const-string v1, "never"

    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    const-string v1, "always"

    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    const-string v1, "not-encodeable"

    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NOT_ENCODEABLE:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2168
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 2169
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2164
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 2165
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->setValue(Ljava/lang/String;)V

    .line 2166
    return-void
.end method


# virtual methods
.method public getPolicy()Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;
    .registers 3

    .line 2172
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->POLICIES:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 2158
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "never"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "always"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "not-encodeable"

    aput-object v2, v0, v1

    return-object v0
.end method
