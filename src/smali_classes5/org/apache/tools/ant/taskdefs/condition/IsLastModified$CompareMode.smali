.class public Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "IsLastModified.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareMode"
.end annotation


# static fields
.field private static final AFTER_TEXT:Ljava/lang/String; = "after"

.field private static final BEFORE_TEXT:Ljava/lang/String; = "before"

.field private static final EQUALS:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

.field private static final EQUALS_TEXT:Ljava/lang/String; = "equals"

.field private static final NOT_AFTER_TEXT:Ljava/lang/String; = "not-after"

.field private static final NOT_BEFORE_TEXT:Ljava/lang/String; = "not-before"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 193
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    const-string v1, "equals"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->EQUALS:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 199
    const-string v0, "equals"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;-><init>(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 207
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->setValue(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;
    .registers 1

    .line 186
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->EQUALS:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-object v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 214
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "equals"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "before"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "after"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "not-before"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "not-after"

    aput-object v2, v0, v1

    return-object v0
.end method
