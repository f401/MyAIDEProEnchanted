.class public Lorg/a/a/a/a/ay;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/ay;->a:Ljava/util/Map;

    return-void
.end method
