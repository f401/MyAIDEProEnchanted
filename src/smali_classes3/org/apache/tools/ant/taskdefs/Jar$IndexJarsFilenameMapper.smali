.class Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;
.super Ljava/lang/Object;
.source "Jar.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Jar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexJarsFilenameMapper"
.end annotation


# instance fields
.field private classpath:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;->classpath:[Ljava/lang/String;

    .line 1228
    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;->classpath:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->findJarName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 1235
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 1242
    return-void
.end method
