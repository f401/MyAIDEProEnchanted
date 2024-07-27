.class public Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
.super Ljava/lang/Object;
.source "Zip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveState"
.end annotation


# instance fields
.field private final outOfDate:Z

.field private final resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;


# direct methods
.method constructor <init>(Z[[Lorg/apache/tools/ant/types/Resource;)V
    .registers 3

    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->outOfDate:Z

    .line 2099
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;

    .line 2100
    return-void
.end method


# virtual methods
.method public getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 2115
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method public isOutOfDate()Z
    .registers 2

    .line 2107
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->outOfDate:Z

    return v0
.end method

.method public isWithoutAnyResources()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2123
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->resourcesToAdd:[[Lorg/apache/tools/ant/types/Resource;

    if-nez v3, :cond_1

    .line 2131
    :cond_0
    :goto_0
    return v0

    .line 2126
    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 2127
    if-eqz v5, :cond_2

    array-length v5, v5

    if-lez v5, :cond_2

    move v0, v1

    .line 2128
    goto :goto_0

    .line 2126
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
