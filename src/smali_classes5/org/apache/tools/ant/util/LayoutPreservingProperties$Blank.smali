.class Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;
.super Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;
.source "LayoutPreservingProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/LayoutPreservingProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blank"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 649
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;-><init>(Ljava/lang/String;)V

    .line 650
    return-void
.end method
