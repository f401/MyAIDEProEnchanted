.class Lsun/nio/cs/ThreadLocalCoders$2;
.super Lsun/nio/cs/ThreadLocalCoders$Cache;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 112
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;-><init>(I)V

    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 121
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 122
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 125
    :goto_e
    return-object v0

    .line 123
    :cond_f
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1a

    .line 124
    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    goto :goto_e

    .line 125
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 114
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 115
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    :goto_12
    return v0

    .line 116
    :cond_13
    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_22

    .line 117
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    .line 118
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method
