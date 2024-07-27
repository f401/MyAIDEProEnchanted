.class public Lorg/apache/tools/ant/taskdefs/Available$FileDir;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Available.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Available;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDir"
.end annotation


# static fields
.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 493
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "file"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dir"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 491
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 501
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .registers 3

    .line 510
    const-string v0, "dir"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 3

    .line 519
    const-string v0, "file"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
