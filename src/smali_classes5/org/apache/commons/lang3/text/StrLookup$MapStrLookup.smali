.class Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;
.super Lorg/apache/commons/lang3/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/text/StrLookup",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup;-><init>()V

    .line 139
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    .line 140
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 160
    :cond_5
    :goto_5
    return-object v0

    .line 156
    :cond_6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_5

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
