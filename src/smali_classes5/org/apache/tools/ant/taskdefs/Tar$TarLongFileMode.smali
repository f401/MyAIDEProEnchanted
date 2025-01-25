.class public Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarLongFileMode"
.end annotation


# static fields
.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final GNU:Ljava/lang/String; = "gnu"

.field public static final OMIT:Ljava/lang/String; = "omit"

.field public static final POSIX:Ljava/lang/String; = "posix"

.field public static final TRUNCATE:Ljava/lang/String; = "truncate"

.field private static final VALID_MODES:[Ljava/lang/String;

.field public static final WARN:Ljava/lang/String; = "warn"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 888
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "warn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "truncate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gnu"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "posix"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "omit"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->VALID_MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 894
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 895
    const-string v0, "warn"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->setValue(Ljava/lang/String;)V

    .line 896
    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 903
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->VALID_MODES:[Ljava/lang/String;

    return-object v0
.end method

.method public isFailMode()Z
    .registers 3

    .line 931
    const-string v0, "fail"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGnuMode()Z
    .registers 3

    .line 924
    const-string v0, "gnu"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOmitMode()Z
    .registers 3

    .line 938
    const-string v0, "omit"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPosixMode()Z
    .registers 3

    .line 945
    const-string v0, "posix"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTruncateMode()Z
    .registers 3

    .line 910
    const-string v0, "truncate"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWarnMode()Z
    .registers 3

    .line 917
    const-string v0, "warn"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
