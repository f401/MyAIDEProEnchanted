.class final Lorg/apache/commons/lang3/time/FastDateParser$3;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1044
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 4

    .line 1047
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    add-int/lit8 v0, p2, 0x1

    goto :goto_4
.end method
