.class public Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSHISTORY$BriefCodediffNofile;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "MSVSSHISTORY.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSHISTORY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BriefCodediffNofile"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "brief"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "codediff"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nofile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "default"

    aput-object v2, v0, v1

    return-object v0
.end method
