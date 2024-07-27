.class abstract Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;
.super Ljava/lang/Object;
.source "LayoutPreservingProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/LayoutPreservingProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LogicalLine"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->text:Ljava/lang/String;

    .line 630
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->text:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 638
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->text:Ljava/lang/String;

    return-object v0
.end method
