.class final Lorg/apache/commons/lang3/time/FastDateParser$5;
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

    .line 1060
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 4

    .line 1063
    const/16 v0, 0xc

    if-ne p2, v0, :cond_5

    const/4 p2, 0x0

    :cond_5
    return p2
.end method
