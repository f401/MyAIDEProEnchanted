.class public Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;
.super Ljava/lang/Object;
.source "Javadoc.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceCollectionContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/tools/ant/types/ResourceCollection;",
        ">;"
    }
.end annotation


# instance fields
.field private final rcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .registers 3

    .line 378
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->rcs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->rcs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->rcs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
