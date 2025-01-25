.class Lorg/apache/tools/ant/types/resources/PropertyResource$1;
.super Ljava/io/InputStream;
.source "PropertyResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/PropertyResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .line 44
    const/4 v0, -0x1

    return v0
.end method
