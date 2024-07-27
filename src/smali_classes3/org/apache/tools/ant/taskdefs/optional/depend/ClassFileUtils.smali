.class public Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;
.super Ljava/lang/Object;
.source "ClassFileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDotName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 49
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertSlashName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2e

    .line 38
    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
