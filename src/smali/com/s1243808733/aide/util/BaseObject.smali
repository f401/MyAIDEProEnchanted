.class public Lcom/s1243808733/aide/util/BaseObject;
.super Ljava/lang/Object;
.source "BaseObject.java"


# instance fields
.field public baseObject_Data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    return-void
.end method
