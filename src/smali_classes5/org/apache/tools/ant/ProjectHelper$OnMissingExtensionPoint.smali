.class public final Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
.super Ljava/lang/Object;
.source "ProjectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/ProjectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnMissingExtensionPoint"
.end annotation


# static fields
.field public static final FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

.field public static final IGNORE:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

.field public static final WARN:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

.field private static final values:[Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 118
    new-instance v0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    const-string v1, "fail"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 122
    new-instance v1, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    const-string v2, "warn"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->WARN:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 126
    new-instance v2, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    const-string v3, "ignore"

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->IGNORE:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 129
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->values:[Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
    .registers 6

    .line 147
    if-eqz p0, :cond_2f

    .line 150
    sget-object v1, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->values:[Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    .line 151
    invoke-virtual {v3}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 152
    return-object v3

    .line 150
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 155
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown onMissingExtensionPoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name:Ljava/lang/String;

    return-object v0
.end method
