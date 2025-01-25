.class public Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Jar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Jar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrictMode"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1188
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 1189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1195
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 1196
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->setValue(Ljava/lang/String;)V

    .line 1197
    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .registers 3

    .line 1212
    const-string v0, "ignore"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 1205
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

    return-object v0
.end method
