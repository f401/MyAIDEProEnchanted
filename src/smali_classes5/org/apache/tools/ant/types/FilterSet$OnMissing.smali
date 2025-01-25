.class public Lorg/apache/tools/ant/types/FilterSet$OnMissing;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FilterSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/FilterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMissing"
.end annotation


# static fields
.field public static final FAIL:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private static final FAIL_INDEX:I = 0x0

.field public static final IGNORE:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private static final IGNORE_INDEX:I = 0x2

.field private static final VALUES:[Ljava/lang/String;

.field public static final WARN:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private static final WARN_INDEX:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fail"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "warn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ignore"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->VALUES:[Ljava/lang/String;

    .line 134
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    const-string v1, "fail"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->FAIL:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 136
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    const-string v1, "warn"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->WARN:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 138
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    const-string v1, "ignore"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->IGNORE:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 154
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->setValue(Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 162
    sget-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
